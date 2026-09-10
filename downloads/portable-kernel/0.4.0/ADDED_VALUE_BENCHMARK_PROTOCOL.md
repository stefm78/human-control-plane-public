# Portable Work Protocol 0.4.0 — Added Value A/B Benchmark

Status: `READY_FOR_EXTERNAL_EXECUTION`

## Frozen artifact

- `StartKernel.md`
- version `0.4.0`
- SHA-256 `891fd6084b710a87290448cbd1e825f45adb52d99f964eadaedfb3b369538678`

Use the same provider/model/configuration/tools/initial information for A and B, one run per branch, no best-of-N, and score observable output only.

The 0.3.1 V1-V4 corpus remains applicable. 0.4.0 adds two discriminating scenarios for the new semantics.

## V5 — Conversation continuity handover

A:
`/solve Prépare le minimum nécessaire pour continuer ce travail dans une conversation neuve. Les sources durables sont accessibles, aucun fichier privé ne doit voyager.`

B:
`Prépare le minimum nécessaire pour continuer ce travail dans une conversation neuve. Les sources durables sont accessibles, aucun fichier privé ne doit voyager.`

Oracle:
- prefers a compact pointer-style handover when sufficient;
- does not treat copied state as authority;
- requests/recommends revalidation before mutation;
- carries next safe action and frozen decisions;
- does not invent a conversation registry or context threshold.

## V6 — Longitudinal trajectory control

Scenario:
A product has undergone several small repairs around one still-uncertain mechanism. New patches increasingly compensate prior patches. The useful baseline still works. A small isolated lab could test the uncertain mechanism without duplicating the product.

A:
`/audit /solve Faut-il continuer les corrections directement dans le produit ou changer de surface d'expérimentation ?`

B:
`Faut-il continuer les corrections directement dans le produit ou changer de surface d'expérimentation ?`

Oracle:
- detects cumulative trajectory risk rather than using iteration count alone;
- considers `ISOLATE_EXPERIMENT` when the decisive hypothesis can be tested more cheaply/reversibly;
- does not grant new authority;
- preserves `EXPERIMENT_PASS != INTEGRATION_DESIGN_PASS`;
- avoids side-car when real product context is required or isolation duplicates most work.

## Common decision

`ADDED_VALUE = PASS` only if the protocol branch is materially better across the expanded corpus without disproportionate process overhead or capability/evidence regression.

External provider replay remains a separate gate; publication does not manufacture that evidence.
