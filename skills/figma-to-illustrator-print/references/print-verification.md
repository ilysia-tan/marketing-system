# Print verification and handoff

Read before the pilot production export and final delivery. Choose available tools; no particular connector is required.

## Evidence to obtain

| Check | Required evidence |
|---|---|
| Size and order | Actual page count and dimensions; approved variants, ending, orientation and intentional blanks |
| Bleed | TrimBox, BleedBox and MediaBox coordinates on every page, plus artwork covering the required bleed |
| Safe areas/binding | Reading text and critical marks clear of cutting and binding allowances; printer to confirm imposition and creep |
| Colour | Intended document profile and embedded PDF output intent; source assumptions and conversions recorded |
| Ink | Actual CMYK coverage against the chosen limit; large dark areas and small multi-ink type reviewed separately |
| Images | Decoded pixel dimensions and effective ppi at the PDF placement; crop, transparency and link integrity |
| Fonts | Required fonts embedded as allowed or deliberately outlined in the press copy; saved master remains editable |
| Text/vectors | Overset, substitutions, fine strokes, white overprint, unexpected colour operators and unwanted page flattening |
| Standard | Required export settings, expected metadata/output intent, and dedicated conformance validation when required |

For PDF image resolution, account for content transformation matrices, nested form matrices, and repeated placements. Top-level resource lists alone are insufficient. Do not confuse unused resources or transparency masks with visible placed photographs.

A profile name does not prove that every object obeys the ink limit. A bleed setting does not prove artwork extends into bleed. A font in the source does not prove it is embedded in the export. Inspect the actual output.

## Tool choices

- Application preflight or a production application: document, font, colour and object checks.
- A PDF parser such as pypdf: page boxes, resources, image transforms, metadata and output intents.
- A renderer such as Poppler: proofs of the exact delivered PDF.
- An image library: dimensions, profiles, pixel measurements and proof sheets. Preserve ICC-aware interpretation when evaluating converted colours.
- A dedicated PDF/X validator: independent standards-conformance assurance. Matching metadata alone is not certification.

These are optional implementations. Discover existing dependencies before proposing installation. Do not send confidential documents to an online validator without authorization.

## Visual review

Render all pages for sequencing and consistency. Inspect dense text, dark gradients, complex photo crops, fine lines, illustrations and the final contact page at useful detail. Recheck changed pages and broaden review when shared assets or styles changed.

Look for missing photos, black fill artifacts, wrong fonts, exposed hidden text, broken stacking/clipping, banding, halos, unreadable reading copy, white edges and incorrect contact information. Judge tiny illustration labels separately from primary reading text. Recommend a physical proof when substrate, dark tones or fine details affect acceptance.

## Incomplete evidence and warnings

If an exporter ignores settings, change the route and reinspect. Do not rename a generic PDF to imply compliance. Segregate rejected exports from deliverables.

Narrow truncated preflight output by page or domain. If it remains incomplete, identify the unverified scope. If summary counters contradict detailed findings, preserve the report and verify relevant properties directly. Do not claim a clean pass from unexplained empty arrays.

Distinguish output failures from contextual flags: decorative trim-edge objects, intentional cropping, rich colours, automatic leading in fixed-position type, and tiny labels inside illustrations. Document the evidence for each classification. Do not damage the design merely to suppress warnings.

## Handoff record

Store job-specific values in the current job, never in this reusable skill:

- Exact editable and press filenames and their roles.
- Trim, bleed, pagination, binding assumption, colour/output profile and ink limit.
- Actual minimum image resolution and enhancement provenance.
- Substitutions and any press-only outlining or flattening.
- Structural/visual checks, unresolved issues and incomplete verification.
- Whether settings are printer-supplied or provisional, and outstanding printer/proof approval.

Keep one clear delivery pair. After temporary outlining, reopen the saved master and verify native text. Approval to prepare provisional files is not printer approval for production.
