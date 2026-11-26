# Transfer and asset handling

Read for export preparation, importer adaptation, crop repair, or image enhancement. These are format-level concerns, not dependencies on a particular AI client.

## Choose an interchange route with a pilot

Compare SVG, PDF, and native connector access against the job. SVG exposes vectors and type but importer support varies. PDF may preserve appearance while fragmenting text or flattening effects. Screenshots prove appearance but do not replace editable reconstruction. Preserve the original exports so another route remains possible.

For large exports, separate bitmap data from the structural representation using stable IDs. Respect connector response limits and transfer in bounded chunks when needed. Do not print huge base64 payloads into chat or silently omit assets after truncation.

## SVG pitfalls

- Preserve inherited styles, especially `fill="none"`, opacity and font weights. Missing inherited fill can create black shapes.
- Prefix IDs when combining exports and rewrite every reference, including masks, clipping, gradients, patterns and image references.
- Image patterns may fill rectangles **or arbitrary paths**. If an importer drops them, materialize the bitmap using the correct transform and original shape as the crop. A rectangle-only repair is incomplete.
- Compose ancestor, image-mapping and crop transforms in the correct coordinate space. Test translated, scaled, non-rectangular and reused assets before bulk conversion.
- Retain page-level and nested crop boundaries deliberately. Do not remove every mask to fix one image.
- Inventory unsupported blur, noise, blending and effects. Reproduce them natively or rasterize only the affected visual component at adequate resolution; preserve page text and vectors.
- Inspect decoded bitmap formats. The extension may not match the underlying file format.

## Typography and hierarchy

Resolve actual font family, style and weight; variable and static font names may differ. Check installed fonts and exported appearance. Disclose substitutions. Logos, editable type, and text baked into images are distinct; an editable image container does not make its internal lettering editable.

Moving all text to a top layer can reveal text intentionally covered by artwork, break crops, or alter stacking. Expose primary reading text selectively. Preserve illustration groups. If regrouping is necessary, record parent/order/transforms first and verify the affected artwork afterward.

Editable-text testing and font-embedding testing are different gates. Native type may edit correctly yet fail the production export. Test both before scaling up.

## Image preparation

Effective ppi equals source pixels divided by the placed size in inches. Evaluate scaling in both directions and the weakest direction under transformations. Cropping creates no additional detail.

Prefer originals, then appropriate vector/native reconstruction or a better replacement, then suitable enhancement. External processing can upload imagery or incur costs; follow the active user's and client's permission rules.

For enlargement, preserve proportions and transparency. Inspect edges, halos, noise, small lettering and tonal transitions. Use sufficient precision for smooth gradients and deliberate profile conversion. Verify decoded dimensions and profiles after saving. Record original dimensions, processing method and limitations. Distinguish enhanced/resampled pixels from native captured detail.

Downsample excessive data according to output needs and asset type. Line art and text-containing bitmaps may need higher sampling or lossless compression than photos. Retain vectors and native page text. Recheck the PDF after compression/downsampling: its effective resolution can differ from the master.

## Automation boundaries

Use scripts for repeatable bulk work and the interface for unsupported settings. A successful command does not prove a preset was honoured. Verify the output.

Check target-document identity before mutations and preserve unrelated user documents. Keep temporary press transformations isolated. Read fresh UI state after actions and focus the correct dialog before typing. If a notice cannot be controlled, request one precise unblock action while continuing independent work.

Use the current application's supported object model and enum values, tested on a sample. Do not assume another Adobe application's or version's APIs exist. Write progress/error markers around fragile stages so a retry can resume rather than repeat completed asset processing.
