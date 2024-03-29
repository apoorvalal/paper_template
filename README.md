# Lal Paper Template

Fork of [Ricardo Dahis'](https://github.com/rdahis/paper_template) excellent repo adapted
for a more linux and R-centric workflow.

Modifications:
- separate folder for notebooks (either R or Jupyter) for prototyping
- symlink to a master bibliography file on dropbox
- contains several boilerplate files that I use to tweak tex

---

This folder provides an all-encompassing working structure for
empirical papers.

It organizes every step of the process: merging and cleaning (several)
data sets, performing analyses (tables, figures, regressions), writing
the article itself and also presentations.

This readme explains in more detail the folder structure and how you
can take the most advantage of it. For more information, see Gentzknow
& Shapiro (2014) Code and Data for the Social Sciences. For a fancier
(but harder to learn) version of a paper template, see
[here](https://github.com/gslab-econ/template).

**To use it**: simply download it and adapt it to your own project!


## Summary
0. Requirements
1. Folders
2. Files
3. Principles
4. Further Reading


## 0. Requirements

This workflow requires:
- [Python 3](https://www.python.org) [Free] 
- [Bash](https://www.gnu.org/software/bash/) [Free]
- [LaTeX](https://www.latex-project.org) [Free]

## 1. Folders

#### `/nb`
- Code for fast prototyping / Exploratory data analysis. Use `rmarkdown::purl` (R) or `jupyter nbscript` to convert to a script and move to `/src` whenever something substantial is done

##### `/src`
- Any code that manipulates build data and performs analysis should be put here.
- All output should be redirected into `/output`. Ideally as a single data file called, say, `data.dta`.
- Keep code clean and modularized.

  `/sub`
  - Holds modularized code to implement subroutines in `build.do` and `analysis.do`.
  
##### `/input`
- Any original data source should be included here in clean and normalized form.
- Only include cleaned files. Raw external files should be cleaned in each data source specific folder.
- These data sets will then be manipulated and merged by the files in `/src`.
  
##### `/output`
- Holds the final data set, to be then used in `/src/analysis.do`.
- Contains all analysis objects generated by files in `/src`.
- Will then serve as source for the generation of `.tex` files.
	
##### `/tmp`
- Contains any temporary file created during the manipulation of input data sets or the analysis routine.

##### `/extra`
- Contains any extra file relevant to the paper.
- Examples: grant material, previous analyses.

##### `/ref`
- Keeps the paper references.
- Suggestion of formatting
  - Author 1 & Author 2 (Journal, Year) Title with Capitalized First Letters.pdf
- Recommended auxiliary program: Mendeley.

##### `/tex`
- Where the juice is produced.
- Contains all .tex files for preliminary results, the paper and presentations.

  `/sub`
  - Curated set of packages and shortcuts commonly used in Social Science papers and presentations.


## 2. Files

##### `run_paper.py`
- Automates the whole paper construction.
- Runs everything in a pre-specified order, from beginning (building data sets) to end (compiling `.tex` files).
- Keeps clear what should be run when.
- Also cleans `/output` and `/tmp` folders before running other code.

##### `/src/get_input.py`
- Erases any file inside `/input` and copies any original data set from outside sources.
- Ensures consistency across original data generation and data building for paper.



## 3. Principles

- Use a good text editor (I recommend [vim](http://www.vim.org/), [Sublime Text](https://www.sublimetext.com/) or [Notepad ++](https://notepad-plus-plus.org/)).
- Keep papers in a `/papers` folder.
- Keep a separate `/data` folder for original data sets.
	- Use the same structure for generating these datasets (`/input`, `/src`, `/output`, `/tmp`)
	- Then use `/main_paper/src/get_input.py` to copy original datasets.
- Use version control systems (e.g. [Git](https://git-scm.com/)).
	- Keep track of multiple authors' edits.
	- No more `report_final_v3.2b_ST_toDelete.tex`.
	- Use branching to work simultaneously on the same code.
- Use a task manager (see [Asana](https://asana.com), [Trello](https://trello.com/), [JIRA](https://www.atlassian.com/software/jira), etc).
	- Your email inbox is not a task manager.
- Use a modern and flexible communication tool (see [Slack](https://slack.com)).
- Keep documentation lean and clean.
- Keep this folder organized. Your future self thanks your present effort.

## 4. Further Reading

- [Gentzkow & Shapiro Lab's Paper Template](https://github.com/gslab-econ/template)
- [Gentzkow & Shapiro (2014) Code and Data for the Social Sciences](https://web.stanford.edu/~gentzkow/research/CodeAndData.pdf)
- [Tutorial on how to combine Git and Dropbox](https://github.com/kbjarkefur/GitHubDropBox)

