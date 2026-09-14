# Ali Khalifa — CV

One unified CV in English and German, plus an English DFG-style CV based on the supplied proposal template.

| Folder | Purpose | PDF |
| --- | --- | --- |
| `english/` | Unified English CV with portrait | [English CV](english/CV_AliKhalifa.pdf) |
| `german/` | Matching German CV with portrait | [German CV](german/CV_AliKhalifa.pdf) |
| `dfg/` | English proposal CV following the supplied DFG-style structure | [DFG-style CV](dfg/CV_AliKhalifa.pdf) |
| `shared/` | Common facts, dates, portrait, publications, layout, and bilingual narrative | — |
| `dfg/template/` | Template provenance note | — |

## Build

From the repository root:

```bash
./build.sh
```

Requires `pdflatex` and standard TeX Live packages. On Ubuntu, the packages are `texlive-latex-base`, `texlive-latex-recommended`, `texlive-latex-extra`, and `texlive-fonts-recommended`. No external fonts, custom CV class, or Python generator are required.

The script runs pdfLaTeX twice in each folder, updates the three PDFs, and stops on compilation errors or overfull layout warnings. To build only one version, run `pdflatex CV_AliKhalifa.tex` twice from its folder. Keep the repository structure intact because the sources use relative paths to shared files.

## Updating all versions together

- Edit shared factual values in `shared/facts.tex`: contact details, dates, identifiers, and project/thesis titles.
- Edit journal references once in `shared/journals.tex`; they appear in all three versions. Edit conference references in `shared/proceedings.tex`; they appear in both unified CVs.
- Maintain matching narrative changes in `shared/english.tex` and `shared/german.tex`. Translation is editorial, not automatic. Update the corresponding DFG summary when the same fact is relevant there.
- Replace `shared/portrait.jpg` to change the photo in both unified CVs.
- Run `./build.sh`, inspect all changed pages, and commit the changed source files together with all regenerated PDFs.
- Keep journal/first-author totals in the two unified wrappers consistent with the publication list. Review the DFG publication selection when new papers are added or a proposal requires a different selection.

`AGENTS.md` records this workflow for future assisted updates. Nothing updates in the background; requested updates should be applied and rebuilt together in this repository.

## Content decisions

- Hamburg teaching is listed as teaching assistance; TUM teaching is listed as lecturing. No course-design claim is made.
- The winter 2026/27 ML course is marked as scheduled; Control Engineering is listed for summer 2026.
- The DFG role is Co-PI: funding for a HiWi position supervised at TUM, with contribution to PhD supervision in Hamburg. No total grant amount or sole doctoral-supervisor claim is inferred.
- The dissertation award is described as co-recipient, as stated in the supplied DFG CV.
- Existing student leadership activities remain in the unified CVs. No separate academic/general variants are maintained.
- The DFG source uses the supplied ODT as a structural reference and updates its outdated position and publication list. It is not a certification of compliance with the latest DFG form. The original ODT remains unchanged and is not published in this repository.
- The generated DFG consent box is deliberately unselected. Review the consent text and the relevant application form before submitting; this CV is not submitted by the build process.

The portrait and CVs contain personal information and are included at the owner's request.
