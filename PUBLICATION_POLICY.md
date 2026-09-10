# Public Distribution Policy V1

Status: `ACTIVE_FOR_PUBLIC_REPOSITORY`

This repository is a deliberate public projection. It is not a canonical control plane.

## Rule

`PUBLICATION = EXPLICIT_ALLOWLIST_ONLY`

Only the following classes may be published:

1. public web assets;
2. Portable Work Protocol release artifacts;
3. public release/qualification documentation;
4. CI/publishing machinery whose sole purpose is validating and deploying this public surface.

## Forbidden classes

The public repository MUST NOT contain or mirror:

- `governance/` canonical objects;
- `state/` operational snapshots;
- kernel candidates or successor registries;
- `CONTROL_PLANE_HEAD` or UCP exact payloads;
- work/gate/attention queues;
- internal recovery or rollback packages;
- private/local dependency references;
- operational PR/issue HEADs or next-action state copied from the canonical plane;
- secrets, credentials, access tokens, private connector data, or user-private files.

## Non-authority invariant

`PUBLIC_REPOSITORY_IS_NOT_AUTHORITY`
`WEB_IS_PROJECTION_ONLY`
`PORTABLE_KERNEL_IS_USER_METHOD_ONLY`

Public release provenance may identify a source family/version, but must not expose live canonical operational state beyond what is intentionally required for the public artifact.

## Rollback publication

A publication rollback means reverting this public repository to the last known-good public commit and redeploying Pages. It MUST NOT mutate or roll back the canonical control plane.

If validation detects a forbidden path/content class, publication fails closed.
