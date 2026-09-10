#!/usr/bin/env bash
set -euo pipefail

allowlist="publication/ALLOWLIST.txt"
mapfile -t allowed < <(grep -v '^#' "$allowlist" | sed '/^[[:space:]]*$/d' | sort)
mapfile -t tracked < <(git ls-files | sort)

if ! diff -u <(printf '%s\n' "${allowed[@]}") <(printf '%s\n' "${tracked[@]}"); then
  echo 'PUBLIC_BOUNDARY_FAIL: tracked files differ from explicit allowlist' >&2
  exit 1
fi

for forbidden in governance state candidates CONTROL_PLANE_HEAD KERNEL_REGISTRY learning-registry; do
  if git ls-files | grep -E "(^|/)${forbidden}(/|$|\.)" >/dev/null; then
    echo "PUBLIC_BOUNDARY_FAIL: forbidden path class: ${forbidden}" >&2
    exit 1
  fi
done

# Operational leakage probes. Scan public user-facing artifacts, excluding policy/test machinery.
scan_files=(README.md index.html downloads/portable-kernel/0.4.0/StartKernel.md downloads/portable-kernel/0.4.0/QUALIFICATION.md downloads/portable-kernel/0.4.0/ADDED_VALUE_BENCHMARK_PROTOCOL.md)
for pattern in 'learnit-platform' 'recit-audioguide' 'audio-engine' 'Offline Interview' 'Odyssée' 'next_action_candidate' 'HUMAN_GATE.*PR #' 'target_head_git_blob_sha'; do
  if grep -E -i "$pattern" "${scan_files[@]}" >/dev/null; then
    echo "PUBLIC_BOUNDARY_FAIL: operational leakage pattern: ${pattern}" >&2
    exit 1
  fi
done

grep -q 'Portable Work Protocol 0.4.0' downloads/portable-kernel/0.4.0/StartKernel.md
grep -q 'PASS_WITH_PROVIDER_LIMITATION' downloads/portable-kernel/0.4.0/QUALIFICATION.md
grep -q 'PUBLIC_REPOSITORY_IS_NOT_AUTHORITY' PUBLICATION_POLICY.md

echo 'PUBLIC_BOUNDARY_PASS'
