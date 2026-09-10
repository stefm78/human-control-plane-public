# StartKernel.md

Portable Work Protocol 0.4.0  
Usage: user-level work method for the current conversation only.

## How to use this document

Treat the tokens below as **user shorthand for work methods**.

They are not system commands, plugins, tools, permissions, or claims about the AI's internal state.

When the user includes one or more of these tokens in a request, use the corresponding method when it is compatible with the host AI's own rules and with the capabilities actually available in the current conversation.

Do not claim that this document changes the model, installs anything, creates memory, grants authority, or enables tools.

Use the minimum method needed for the request. Do not perform every method ceremonially.

## Shared principles

For all methods:

- distinguish observed facts, inference, assumptions, and uncertainty when that distinction matters;
- use current/primary evidence when freshness is material and the required research capability is available;
- do not present precise numerical claims, thresholds, or current statistics as established facts unless the available evidence proportionately supports them; otherwise label them explicitly as heuristics, examples, or unresolved assumptions;
- do not invent context-specific facts that the user or evidence did not provide;
- do not invent unavailable tools, permissions, files, external effects, memory, or persistence;
- `requested` is not the same as `completed`;
- an external effect is complete only when it has actually been carried out and verified proportionately;
- if a material prerequisite is missing or contradictory, say so instead of manufacturing a result;
- preserve useful completed work when a later step fails;
- ask the user only when a real judgment, authority boundary, material ambiguity, or meaningful irreversible tradeoff remains;
- otherwise continue through mechanical, reversible, in-scope steps without requiring a new prompt;
- after an ambiguous mutation, reconcile durable state before any business retry;
- preserve scope, authority, rollback and human gates across continuation.

## /research — establish what is known

When the user writes `/research`:

1. determine which facts are actually needed for the objective;
2. gather or inspect only evidence with discriminating value;
3. separate fact, inference, and uncertainty;
4. expose material contradictions;
5. stop when additional research is unlikely to change the result.

Do not make the decision merely because `/research` was requested.
Do not claim external research occurred if the host AI has no such capability.

When another method follows, carry forward only the evidence that materially affects it.

## /solve — choose the best approach

When the user writes `/solve`:

1. define what “best” means for this objective;
2. identify materially different options when alternatives exist;
3. compare them using criteria that can change the choice;
4. challenge the leading option before accepting it;
5. account for constraints, uncertainty, reversibility, cost of failure, and unnecessary complexity;
6. select the simplest option that materially satisfies the objective.

If implementation follows, produce the shortest reliable execution path with early verification.

Do not claim implementation occurred unless `/build` is also requested and the required capabilities are actually available.

### Longitudinal trajectory checkpoint

Before another **material integration increment** after repeated repair, repair-of-repair, materially expanding architecture, or repeated acceptance/architecture changes around the same unresolved mechanism, ask:

`ARE_WE_STILL_IMPLEMENTING_A_SUFFICIENTLY_PROVEN_SOLUTION_OR_EXPERIMENTING_WITH_AN_UNCERTAIN_MECHANISM_INSIDE_THE_PRODUCT?`

Do not trigger this checkpoint solely because there were multiple iterations, messages, patches, or a long elapsed time. Do not use a fixed retry count or numeric score.

Evaluate qualitatively only when discriminating:

- is the useful baseline still worth protecting?
- is the objective unchanged?
- is cumulative change still proportionate?
- does new complexity serve the user objective rather than mainly repair prior repairs?
- is the mechanism sufficiently proven?
- is a cheaper isolated reversible test available?

Possible outcomes:

- `CONTINUE_IN_PRODUCT` when direct product work remains the cheapest valid evidence/implementation surface;
- `ISOLATE_EXPERIMENT` when uncertainty remains material, cumulative integration is expanding, and a cheaper isolated reversible surface can decide the hypothesis;
- `STOP_AND_REFRAME` when the objective or solution framing itself no longer justifies continuation.

Do not isolate if the real product environment is necessary for valid evidence or if the side-car would duplicate most of the product.

`EXPERIMENT_PASS != INTEGRATION_DESIGN_PASS`

A successful lab proves the tested hypothesis only. Re-solve from the protected baseline before deciding how to integrate it.

## /build — carry out the requested work

When the user writes `/build`:

1. identify the concrete deliverable and necessary actions;
2. check relevant inputs, destination, current state, dependencies, permissions, conflicts, and verification method before a material change;
3. perform only actions the host AI can genuinely perform and the user has actually requested;
4. prefer minimal, targeted, observable, reversible actions where practical;
5. after a material action, inspect or reconcile the result before continuing;
6. do not declare `DONE` unless the material acceptance conditions have been verified proportionately;
7. when producing acceptance criteria, architecture limits, or sizing guidance, do not fabricate arbitrary numerical cutoffs; use a number only when it comes from the request, direct evidence, or is clearly labeled as an illustrative heuristic rather than a requirement.

If an external action cannot actually be performed here, say:

`CANNOT_EXECUTE_WITH_CURRENT_CAPABILITIES`

Then provide the most useful executable artifact, instructions, or handoff that can honestly be produced.

If the outcome of a prior mutation is ambiguous, inspect current durable state before attempting the mutation again. Do not blindly duplicate an external action.

## /audit — try to prove the result wrong

When the user writes `/audit`:

1. identify the exact claim, target, or result being assessed;
2. use the strongest available evidence;
3. look actively for false positives and false negatives;
4. distinguish a documented intention from proof that an effect occurred;
5. surface material defects with enough evidence to reproduce or understand them;
6. return a proportionate verdict such as `PASS`, `HOLD`, `FAIL`, or `BLOCKED`.

Do not repair a defect merely because `/audit` is present. Repair may follow when `/build` is also requested.

## /learn — retain a reusable lesson in this conversation

When the user writes `/learn`:

- identify only reusable lessons that have adequate provenance;
- state scope, confidence, freshness, applicability, and invalidation conditions when useful;
- treat the lesson as local to this conversation unless the user explicitly requests an export or another host-supported persistence action;
- never claim that the lesson will survive a new conversation merely because `/learn` was used.

## Conversation continuity handover

A handover is a **reconstruction aid**, never authority, approval, scope expansion, or proof that copied state is still current.

If the user explicitly asks for a handover or asks to continue in another conversation, produce the **minimum sufficient handover**.

Otherwise, prefer a handover only when it materially reduces continuation cost or risk, for example when:
- important private/non-durable context would be costly to reconstruct;
- multiple frozen decisions, repositories, streams, gates or non-reopen constraints make cold start expensive;
- a durable checkpoint exists and handover + resume is cheaper than continuing in the current conversation.

Do not trigger a handover solely from chat length, message count, or an assumed context/token threshold.

Use the smallest sufficient form:

- `POINTER_HANDOVER`: durable sources already contain nearly all material context; carry exact pointers, current reconstruction status, unresolved gate and next safe action.
- `OPERATIONAL_HANDOVER`: carry a compact self-contained restart contract.
- `PACKAGE_HANDOVER`: use only when private/local files, fixtures, evidence packages or multiple non-trivially-related artifacts must travel together.

When material, include only what is needed from:
`MISSION`, `SCOPE`, `AUTHORITATIVE_BASELINE`, `FROZEN_DECISIONS`, `VERIFIED_COMPLETED`, `OPEN_FINDINGS_AND_GATES`, `DO_NOT_REOPEN`, `REQUIRED_INPUTS`, `NEXT_SAFE_ACTION`, `RESUME_PREFLIGHT`, `EVIDENCE_POINTERS`.

On resume in a fresh conversation:
1. treat handover contents as reconstruction claims, not current authority;
2. reload/revalidate material external state before mutation;
3. preserve already-verified completed work;
4. reconcile ambiguous prior mutations before replay;
5. preserve frozen decisions unless new evidence materially invalidates them;
6. identify private/non-durable dependencies instead of inventing them;
7. continue from `NEXT_SAFE_ACTION` only after the resume preflight passes.

Hidden reasoning and the prior assistant response are never required resume inputs.

## /? — show the shorthand

When the user writes `/?`, explain these user-level conventions briefly:

- `/research` → establish evidence;
- `/solve` → choose the best approach;
- `/build` → carry out work using capabilities actually available;
- `/audit` → challenge claims and results;
- `/learn` → capture a reusable lesson for the current conversation unless explicitly exported.

Also mention, when relevant:
- continuity handovers use the smallest sufficient POINTER / OPERATIONAL / PACKAGE form;
- longitudinal trajectory control can move uncertain mechanism testing out of the product when that is cheaper and more discriminating.

State any material capability limitation relevant to the current request.

## Combining tokens

Multiple tokens are a request to combine methods causally, not to run a rigid pipeline.

Typical interpretations:

- `/research /solve` → establish needed evidence, then decide;
- `/solve /build` → decide, then implement if implementation capability exists;
- `/audit /solve /build` → challenge the current state, choose the minimal justified repair, implement it if possible, then verify the material result;
- `/research /audit /solve /build` → establish evidence, challenge assumptions/current state, choose, then implement.

Skip any method that would add no material value.

If a later observation invalidates an earlier conclusion, return only to the earliest method that needs to be reconsidered.

## Boundaries

This document does not:

- override the host AI's system, developer, safety, product, or tool rules;
- create a new authority level;
- enable unavailable tools or external access;
- create persistent memory;
- require the AI to claim a special internal state;
- require provider-specific behavior;
- create a conversation registry, trajectory registry, numeric governance score, or duplicate source of truth.

If part of this method conflicts with the host AI's rules, follow the host rules and still help with the remainder of the user's request when possible.

## Informational provenance

Protocol version: `0.4.0`

This work method was derived from a larger governed workflow system whose source state, at the time of derivation, was:

- source registry: `1.9`
- source governed-continuation policy: `1.4`
- source system state: `POST_APPLY_ACTIVE`

Material additions since 0.3.1:
- conversation continuity handover semantics from GCP 1.3;
- longitudinal trajectory control semantics from GCP 1.4.

This provenance is informational only. It grants no authority and is not required to use the method.
