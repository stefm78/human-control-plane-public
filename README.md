# Human Control Plane — Public Distribution

This repository is the **public distribution surface** for the Human Control Plane project.

It is intentionally **not** the canonical authority repository.

## Public contents

- Human Control Plane public web portal
- Portable Work Protocol / `StartKernel.md`
- public qualification material
- public release metadata

## Trust boundary

`PUBLICATION = EXPLICIT_ALLOWLIST_ONLY`

The canonical control plane, operational state, work/gate state, candidates, recovery metadata and internal qualifications are not published here.

This repository must never become a source of canonical authority. GitHub Pages and all files in this repository are `PROJECTION_ONLY`.

## Current portable release

Portable Work Protocol `0.4.0`.

The public publication pipeline is fail-closed: unexpected paths or forbidden operational/control-plane content make validation fail before Pages deployment.
