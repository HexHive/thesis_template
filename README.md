# EPFL thesis/project report LaTeX template

Template for IC EPFL (BSc, MSc, or doctoral) theses and semester projects.
The template contains a rough structure with some hints for systems-oriented
projects but the same structure is easily adaptable to other research
projects as well.

Check out [the compiled example document](./sample.pdf) if you want to see how
it is rendered.


# License and acknowledgement

The source code and LaTeX package is licensed under the LPPL. This work may be
distributed and/or modified under the conditions of the LaTeX Project Public
License, either version 1.3 of this license or (at your option) any later
version. The latest version of this license is in
http://www.latex-project.org/lppl.txt

We would appreciate if you acknowledge the use of this template and where you
got it from in your report.


# Contact

Contact [Mathias Payer](mailto:mathias.payer@epfl.ch) with bug reports or 
questions.


# Prerequisites

Make sure you have the necessary LaTeX packages installed. For Ubuntu/Debian,
the installation instructions are as follows:

```
sudo apt install make texlive-base texlive-bibtex-extra texlive-latex-base \
                 texlive-latex-extra texlive-latex-recommended \
                 texlive-science texlive-lang-german texlive-lang-french \
                 texlive-bibtex-extra biber rubber texlive-fonts-extra
```


# Editing

You will edit the files `thesis.tex` (this is where you write your report) 
and `thesis.bib` (this is where you add all your references). Add figures in
a `./figures` directory. To create the PDF of your thesis, run `make`.


# Writing Tips

Writing is hard. Here, have some help.


## I. Punctuation

1. Use the Oxford comma for enumerations: We talk about a, b, and c (see the
   comma before and)
2. We use commas around e.g. and i.e.: foo, e.g., or, i.e., bar
3. `This is a sentence with a footnote\footnote{In the footnote we use a full
   sentence as well.}.`


## II. Weasel words and bad writing

1. Never use "is able to", "is not able to". These expressions can always be
   removed
2. Don't use passive voice (or minimize passive voice as much as possible)
3. Don't use abbreviations (no don't won't it's) in a paper
4. Don't use [weasel words](https://en.wikipedia.org/wiki/Weasel_word)
   (Up to sixty percent, Clearly, The vast majority)
5. Run a spell check and grammar check on the document before every commit
6. Don't use **Discuss about** 
   [link](https://english.stackexchange.com/questions/146833/is-discuss-about-grammatically-incorrect)
7. For the "Related Work" section, use consistency. Always cite the work after
   introducing the name
8. Always add a space after parentheses "foo (bar)", not "foo(bar)", this is
   not a function call!
9. Be careful about the correct spelling of benchmark and other systems:
   SPEC CPU2006


## III. LaTeX do's and don'ts

1. Use `\autoref` not `\ref` when referring to a section. When you refer to a
   specific section add `label{sec:mysec}` and then refer to it as
   `\autoref{sec:mysec}`. LaTeX will turn this into, e.g., `Section 2`.
   Same goes for Figures, Tables, or Listings.
2. Use a non-breaking space (`\~`) before, e.g., `\cite (foo\~\cite{bar})`, 
   `\autoref` as in `foo\~\autoref{fig:foo}`; don't use a breaking space ` `
   before a non-breaking space as this defeats the purpose of non-breaking
   spaces. Do not use non-breaking spaces for free-standing text such as
   `XXX. \autoref{fig:foo} shows...`.
3. For providing inline comments while iterating over the paper, 
   you can use the `todonotes` LaTeX package. This allows for turning off the
   comments using a simple disable flag. Sample provided below:
   ```latex
    \usepackage[disable]{todonotes} %disables all todonotes
    \newcommand{\ali}[1]{\todo[inline,color=red!40]{alice: #1}} % inline comment block
   ```
4. Use \emph while introducing keywords and for proper nouns, e.g.,
   `\emph{Control-Flow Integrity} (CFI)`


## IV. Paper writing

1. Start with an outline of the paper
2. For each section/subsection outline each paragraph and what you want to
   say. Keep this information as comments above the paragraphs
3. Continue to expand (write text for the individual paragraphs) and compact
   (condense the text to remove fluff), then expand again to figure out a
   better wording.
4. Figures are important, each major concept should be described through a
   self-explaining Figure; take care of reasonable captions!
5. Tables and graphs are important too, take care to show the advantages of
   your system; make sure the captions are helpful!
6. Goal: someone reading just the outline and looking at the Figures/Graphs
   should get a good idea what the paper is about.


## V. Benchmarking

1. Always use all programs in a benchmark set, report the full performance
   overhead
2. Memory overhead may be important too
3. For figures: show the baseline, start x/y axis at 0, show label axes
4. When presenting results in a table: (i) right align numbers, left align
   text, (ii) use commas as delimiter for large numbers: 1,000,000; not
   1000000, (iii) label your columns/rows, (iv) the caption should explain any
   abbreviations, (v) the table must be referenced in text, explaining the
   main takeaway but not just repeating results.


## VI. Discussing Related Work

Think who is the most likely expert reviewer of your paper. How critically
should you discuss their work? Orthogonally, their work is already published
and contributed to the field. Always talk about related work in a positive
way. Highlight the positive aspects when you introduce related work, then
iterate over why your work is different.

Foo et al. introduced the first zero-overhead CFI instrumentation based on an
optimized set `check\~\cite{FoosWork}`. While `\sysname` leverages a similar
runtime check, it combines a static analysis with a dynamic modification
scheme that allows on-the-fly adjustments of target sets while Foo's target
sets were purely static.

## VII. Repositories and Linting

Note that these are hard rules that we will enforce in the group :)

* Push your code to a git repository, add a link to this repository in your
  slack channel and/or in the wiki of the project
* Add a `Makefile` that builds the paper with `rubber` (or `pdflatex`).
  The repository contains an example `Makefile`.
* Always use vector images, never rasterize (i.e., no JPG/PNG but rather
  export to PDF then embed PDF)
* The full text of the paper is in a single file for easier editing/searching
  (the repository will take care of merging)
* Break lines at 80 characters

# Presentation tips

## General rules:
 * Around one slide per minute of presentation.
 * If the presentation is shorter than 15 minutes, no need for an overview of the content.
 * Always finish your presentation on the conclusion slide. You want your listener to read it again while you answer questions and not look at a blank "Q&A" slide.
 * Add slide numbers for easier referencing when your listeners ask questions.
 * Aim for consistency in fonts, letter case, color among slides.
 * Short word sequences, not necessarily full sentences

## Figures:
  * Make sure figures are readable (do not go under 10pt).
  * Google Slides does not allow for SVG import, make sure your PNG are big enough to not look fuzzy on the projector. 
  * Add labels and units to figures, graphs, axes.  

## Giving the talk
 * Specify if you want questions during or after the talk
 * Watch the audience (pick 2-3 faces throughout the room and let your eyes wander during the talk)
 * Modulate your voice, speak clearly and make breaks between sentences/slides
 * Hold your hands still and don't constantly jump around, let the audience focus on the slides

