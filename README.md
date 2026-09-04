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

This 90-minute practical is a concise “tasting menu” of the shared R practices used throughout SSoQE. Synthetic forest-plot examples connect fresh sessions, scripts, portable paths, project dependencies, and data immutability. The final challenge uses R's built-in Black Cherry tree data for a peer rerun.

Software installation and account setup happen **before arrival**. Participants should complete the [SSoQE pre-arrival technical setup](https://ssoqe.github.io/SSoQE_website/About/pre_workshop.html) before this lesson; class time is reserved for reproducible practice rather than installation or authentication troubleshooting.

## 🎯 Learning goals

By the end of the lesson, participants should be able to:

- navigate an R project and distinguish source, input, derived data, and output;
- write consequential code in scripts and recreate objects from declared inputs;
- use project-relative paths with `here::here()`;
- keep raw data immutable and avoid hidden workspace or working-directory dependence;
- distinguish file-, object-, and column-level data immutability;
- explain the roles of an `renv` project library and lockfile;
- pass a clean-session peer rerun audit.

## 📚 Materials

- `Presentation/presentation.qmd` is the 90-minute lesson source.
- `R/Exercises/final_boss_starter.R` is the deliberately broken script linked from the final exercise slide.
- `Data/Input/forest_plots.csv` is the bundled immutable input.
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
