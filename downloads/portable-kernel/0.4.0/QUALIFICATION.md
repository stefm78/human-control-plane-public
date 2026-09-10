# Portable Work Protocol 0.4.0 — Qualification

Status: `PASS_WITH_PROVIDER_LIMITATION`

## Frozen identity

- Runtime file: `StartKernel.md`
- Version: `0.4.0`
- SHA-256: `891fd6084b710a87290448cbd1e825f45adb52d99f964eadaedfb3b369538678`
- Source registry provenance: `1.9`
- Source governed-continuation policy: `1.4`
- Canonical source state at derivation: `POST_APPLY_ACTIVE`

This artifact is a user-level work method. It is not a canonical ACTIVE kernel, does not grant authority, and does not modify the host AI's rules or capabilities.

## Why 0.4.0 exists

0.3.1 predates two now-ACTIVE canonical behaviors:
1. conversation continuity handover from GCP 1.3;
2. longitudinal trajectory control from GCP 1.4.

The delta is material enough for a minor pre-1.0 version increment: `0.3.1 -> 0.4.0`.

## Preserved 0.3.1 behavior

The following remain mandatory and were inspected in the exact 0.4.0 payload:

- evidence/fact/inference discipline;
- numerical-claim discipline;
- context/capability honesty;
- `/research`, `/solve`, `/build`, `/audit`, `/learn`, `/?`;
- causal token composition rather than ceremonial pipelines;
- no invented tools, persistence or external effects;
- ambiguous mutation reconciliation before business retry;
- host rules and capabilities always prevail.

`0.3.1_CORE_REGRESSION = NONE_FOUND`

## New portable behavior

### Conversation continuity

0.4.0 adds:
- explicit handover request precedence;
- minimum sufficient handover;
- POINTER / OPERATIONAL / PACKAGE proportionality;
- handover-is-not-authority semantics;
- fresh-chat revalidation and ambiguous-mutation reconciliation;
- no conversation registry and no context-length trigger.

### Longitudinal trajectory control

0.4.0 adds:
- a checkpoint before another material integration increment when repair-of-repair or unresolved mechanism expansion is present;
- `CONTINUE_IN_PRODUCT`, `ISOLATE_EXPERIMENT`, `STOP_AND_REFRAME`;
- false-stop guards;
- false-continue guards;
- no numeric iteration threshold;
- `EXPERIMENT_PASS != INTEGRATION_DESIGN_PASS`.

## Delta qualification matrix

| Probe | Expected | Result |
|---|---|---|
| D1 explicit user asks for handover | minimum sufficient handover | PASS |
| D2 long chat but direct reconstruction is cheap | no automatic handover | PASS |
| D3 durable sources sufficient | POINTER preferred | PASS |
| D4 compact restart context required | OPERATIONAL available | PASS |
| D5 private/local evidence must travel | PACKAGE available | PASS |
| D6 repeated iterations only, no divergence signal | no forced isolation | PASS |
| D7 repair-of-repair + unresolved mechanism + cheap lab | ISOLATE_EXPERIMENT available | PASS |
| D8 product-only interaction / side-car weaker | CONTINUE_IN_PRODUCT preserved | PASS |
| D9 experiment succeeds | re-solve before integration | PASS |
| D10 unavailable capability | no fabricated execution | PASS |
| D11 ambiguous prior mutation | reconcile before retry | PASS |
| D12 host rule conflict | host rules prevail | PASS |

Static exact-payload checks: `15/15 PASS`.

`DELTA_STRUCTURAL_QUALIFICATION = PASS`
`DELTA_SEMANTIC_QUALIFICATION = PASS`

## Provider matrix

The 0.3.1 provider evidence remains informative for the preserved core:

| Provider | 0.3.1 core classification |
|---|---|
| Google | `ACCEPTED` |
| Mistral | `PARTIAL` |
| Third provider | `ACCEPTED` |

The 0.4.0 delta has not been independently replayed on all external providers in this execution.

Therefore:
- `PORTABILITY_OF_METHOD = PASS_WITH_INHERITED_EVIDENCE`
- `UNIFORM_BEHAVIORAL_FIDELITY = HOLD`
- `DELTA_CROSS_PROVIDER_REPLAY = NOT_EXECUTED`
- `CAPABILITY_HONESTY = PASS`
- `SESSION_LOCALITY = PASS`
- `STARTKERNEL_0.4.0_PROTOCOL_DEFECT = NONE_FOUND`
- `ADDED_VALUE = NOT_YET_PROVEN`
- `PORTABLE_WORK_PROTOCOL_0.4.0 = PASS_WITH_PROVIDER_LIMITATION`

## Release decision

`RECOMMENDED_PORTABLE_RELEASE = 0.4.0`

## Authority boundary

`WEB_AUTHORITY = PROJECTION_ONLY`

Publishing 0.4.0 changes only the portable distribution surface. It does not alter any canonical ACTIVE selection.
