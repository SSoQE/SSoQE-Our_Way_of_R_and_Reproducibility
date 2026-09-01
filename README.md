<div align="center">

<img src="https://ssoqe.github.io/SSoQE_website/photos/SSOQE_logo3.png" width="150" alt="SSoQE logo">

# Our Way of R and Reproducibility

**Primary repository for the merged SSoQE 2026 session**

**Tuesday, 15 September · 09:00–10:30**

[View the current slides](https://ssoqe.github.io/SSoQE-Our_Way_of_R_and_Reproducibility/) · [SSoQE website](https://ssoqe.github.io/SSoQE_website/) · [2026 programme](https://ssoqe.github.io/SSoQE_website/About/program.html)


| **📅 Course information** | **🧰 Technical** | **📌 Status** |
|:---:|:---:|:---:|
| ![SSoQE 2026](https://img.shields.io/badge/SSoQE-2026-155560) | ![Type](https://img.shields.io/badge/Type-Course_Module-155560) | ![Status](https://img.shields.io/badge/Status-Primary-509A8E) |
| ![Day](https://img.shields.io/badge/Day-Tuesday-C2A337) | ![Topic](https://img.shields.io/badge/Topic-Foundation_Skills-155560) | ![Tools](https://img.shields.io/badge/Tools-R_%7C_Quarto-276DC3) |

</div>

## 🌿 About the lesson

This session combines the former “Get to Know Our Way of R” and “Reproducibility in Science” modules. This repository is the base for the merged lesson; relevant material from the former reproducibility module will be consolidated here.

The session introduces the shared R practices used throughout SSoQE and connects them to reproducible project design. It is not a generic introduction to every feature of R: the focus is readable code, explicit project structure, immutable inputs, project-relative paths, transparent dependencies, and analyses that can be rerun from a clean session.

## 🎯 Learning goals

By the end of the lesson, participants should be able to:

- navigate an R project and distinguish source, input, derived data, and output;
- write readable R using descriptive names, explicit package namespaces, native `|>`, and project-relative paths;
- keep raw data immutable and avoid hidden workspace or working-directory dependence;
- explain why scripts, Quarto documents, dependency records, and version control contribute to reproducibility;
- recognize the difference between an explicit setup workflow and an ordinary analysis or render.

## 📚 Materials

- `Presentation/presentation.qmd` is the current slide source and the base for the merged 2026 presentation.
- `R/Exercises/01_example.qmd` is the current exercise template.
- `R/render.R` renders the presentation and updates the publication copy.
- `Presentation/colors.json`, `Presentation/fonts.json`, and `Presentation/custom_theme.json` are the editable theme sources.

## 🛠️ Setup and rendering

Use the explicit project setup in `R/___Init_project___.R` when preparing a new environment. Do not install or restore packages during an ordinary render.

Render the presentation from a clean session with:

```powershell
Rscript R/render.R
```

Do not hand-edit rendered HTML or generated SCSS and R theme files.

## 📄 Licence

See [LICENSE](LICENSE).
