# CV maintenance instructions

Maintain exactly three outputs: English unified CV, German unified CV, and English DFG-style CV. Do not introduce separate academic/general variants unless requested.

For any requested update:
1. Read `README.md` and inspect the current source before editing.
2. Update shared facts and publication entries once. Apply narrative changes consistently to English and German and to the DFG summary where relevant.
3. Preserve the user's explicit distinctions: Hamburg teaching assistant; TUM lecturer; no course-design claim; DFG Co-PI with funded HiWi supervision at TUM and contribution to PhD supervision in Hamburg.
4. Do not infer grant amounts, contractual end dates, completion of planned teaching/theses, new roles, or consent. Preserve co-recipient wording for the dissertation award.
5. Keep the supplied DFG ODT unchanged. Do not preselect consent in a generated proposal CV.
6. Run `./build.sh` and visually inspect the affected PDF pages. Commit source and regenerated PDFs together. Do not commit LaTeX temporary files or build logs.
7. Keep publication counts and any proposal-specific selection consistent when adding/removing publications.
8. Preserve existing user changes and repository permissions. Do not force-push.

The shared sources reduce duplication, but translations and the DFG narrative still need coordinated editorial updates. The user expects all relevant versions to stay aligned on each requested update.
