Tidying Survey Data in R
======================

Foundations For Research Computing - Columbia University
--------------------------------

**Instructor: Jose Andres Montes Lopez**  
**[jam2448@columbia.edu](jam2448@columbia.edu)**  
**Available through Email Only**  
 
Quick Links
-----------

-   [Workshop Description](#workshop-description)
-   [References and Resources](#references-and-resources)
-   [Requirements and Workshop Goals](#requirements-and-workshop-goals)
-   [Policies](#policies)
-   [Workshop Topics](#workshop-topics)
    -   [Part 1 - Principles of Survey Research](#part-1---principles-of-survey-research)
    -   [Part 2 - Working with Qualtrics and qualtRics Package](#part-2---working-with-qualtrics-and-qualtrics-package)
    -   [Part 3 - Survey Insights](#part-3---survey-insights)
    -   [Part 4 - Parallel Reporting](#part-4---parallel-Reporting)

### Workshop Description

Surveys are an essential tool used across various disciplines in sampling and drawing inferences from populations of interest. However, poor survey design, survey tool limitations or data reliability and validation issues can lead to lengthy and often costly analysis of survey data.

This two-hour online workshop aims to introduce individuals looking to conduct or work with survey data with best practices in survey research and how to overcome common issues in survey design and data integrity. Participants will learn concepts such as survey measurement methods, data invalidity identification techniques and basic data transformations (log, square etc.). This workshop will present these concepts through an example and culminate with preliminary insights drawn from a survey. After the workshop, participating researchers will be better prepared in conducting surveys and handling survey data in addition to havng a basic understanding of the Qualtrics survey platform.

------------------------------------------------------------------------

### Requirements and Workshop Goals

#### Requirements

Basic knowledge of statistics on the level of an introductory level course is assumed. The focus is on survey methodology, but some statistical concepts will appear.

The course uses the software package `R` for the whole workshop. The program `R` itself can be downloaded for free at <http://cran.r-project.org/>. Intermediate familiarity with the software, in particular with regards to importing, cleaning, and reshaping data is assumed. Knowledge of specific packages and other software tools will be built throughout the workshop.

You will need to have access to your own computer to install and follow the exercise. I highly recommend having access to qualtrics or some familiarity with the tool since an overview of it will be carried out. Using some of the resources noted in the next References and Resources sections will be more than enough to be able to cover material in workshop.

#### Workshop Goals

1.  Achieve a basic understanding of survey research, management and preliminary analysis

2.  Have an understanding of Qualtrics workflow and how to transfer data into R

3.  Parameterizing report for multiple organizations (if enough time)

### Policies

**Open but Respectful environment**

This workshop targets a broad base of students/practitioners. Everyone is encouraged to ask question as they arise and others are expected to not interrupt, interject or engage in condescending behavior or other behavior that is not conducive to a learning environment. Failure to abide to such policy will result in offender being asked to exit out of the workshop or be blocked for the remainder of the workshop.

**Make Every Minute Count**

While you are not expected to turn off or silence your cell phones prior or during the workshop, it would be of the greatest benefit for everyone if there is engagement in the workshop. I might provide short answers as I try to finish the material scheduled for the workshop, but make sure to ask for more details after the workshop (or email me).

Workshop slides and exercises will be made available on github [here](https://github.com/joseandresmontes?tab=repositories). 
So do not worry about missing certain details and focus on the workshop so you can ask questions. 

### References and Resources

#### R, RStudio, and R Markdown

-   [IDRE at UCLA](http://www.ats.ucla.edu/stat/r/) has lots of tutorials, code examples, for R and other statistical packages.
-   [Try R](http://tryr.codeschool.com). In-browser, interactive online tutorial. Particularly useful if you have not used R (much) before.
-   [Cheat sheets](https://www.rstudio.com/resources/cheatsheets/) for data wrangling, data visualization, general use of R, R Studio, R Markdown etc.
-   [R Studio resources for R Markdown](http://rmarkdown.rstudio.com/). Get started here with markdown.
-   [Awsome-R](https://awesome-r.com) A curated list of great R packages and tools.

#### Getting and transforming data in R

-   Wickham, H., & Grolemund, G. (2017). *R for Data Science: Import, Tidy, Transform, Visualize, and Model Data* (1 edition). O Reilly Media. -- Great as introduction on how to use R. From the creator of many R packages that we use in the course, this will help with the usual tasks of data import and management, modeling, and some visualization. [Book is available for free online](http://r4ds.had.co.nz/).

-   Wickham, H. (2014). Advanced R (1 edition). Boca Raton, FL: Chapman and Hall/CRC. [Book is available for free online](http://adv-r.had.co.nz/)

#### Git and GitHub

-   Git
    -   [Official git command line and GUI clients, official documentation](https://git-scm.com/)
-   Clients
    -   [Desktop Client for Mac and Windows](https://desktop.github.com/). Comes standard with github and is easy to use, but limited.
    -   [Gitkraken](https://www.gitkraken.com/student-resources). Professional git client. Students get the full-version for free. Recommended!
-   Tutorials
    -   [Learning resources for git and github](https://help.github.com/en/articles/git-and-github-learning-resources)
    -   [Setting up commandline git](https://help.github.com/articles/set-up-git/)
    -   [Interactive tutorial to learn branching](https://learngitbranching.js.org/)
    -   [Hello World - GitHub for the non-programming beginner.](https://guides.github.com/activities/hello-world/)
    -   [Guides at GitHub](https://guides.github.com/)
    -   [Git and Github guide from plot.ly](https://plot.ly/r/github-getting-started-for-data-scientists/) Extensive screen-shot guided intro to Git, Github, Git in RStudio and GitHub pages.
    -   [Pro Git - a full book with lots of details](https://git-scm.com/book/en/v2)
    -   [Datacamp - Introduction to Git for Data Science](https://www.datacamp.com/courses/introduction-to-git-for-data-science)

#### Coding Help Sites

-   <http://stackoverflow.com/> Programming Q&A site. Excellent first stop if you have questions on coding. Search for keywords and restrict your queries by adding tags about the coding language or package in square brackets, e.g. `[R]`,`[ggplot]`, or `[shiny]`.

-   <http://stats.stackexchange.com/> A stackoverflow off-shoot with a bit more focus on conceptual questions in statistics.

-   <http://rseek.org/> Search engine for R-related stuff, including tutorials and code.

------------------------------------------------------------------------

Workshop Topics
--------------

### Pre-Workshop 

**On your own:**
Install R and R Studio on your own computer. Try out R Markdown (use the tutorial to get familiar).
Set up your own GitHub account. Familiarize yourself, if necessary with the suggested tutorials.

### Part 1 - Principles of Survey Research

#### [Survey Design Process](survey_research.html)

This module covers a short overview of survey design. Areas covered include operational definition of a survey, questionnare construction, and measurement assessment.

-   **Recommended Reading**:
    -   M.K. Trochim, William (2020). Research Methods Knowledge Base. Conjoint.ly, Sydney, Australia. [Read for free here](https://conjointly.com/kb/).

#### [Survey Data Management and Analysis](survey_data_management_and_analysis.html)

This module covers a short overview of survey management and analysis. Areas covered include exposure to `survey` and `pewmethods` packages while working through survey data.

-   **Recommended Reading**:
    -   Lau, Arnold (2020). Introducing pewmethods: An R package for working with survey data : Medium. 
    [Read for free here](https://medium.com/pew-research-center-decoded/introducing-pewmethods-an-r-package-for-working-with-survey-data-97601a250a46).
    -   Hatley, Nick (2018). How to analyze Pew Research Center survey data in R : Medium. 
    [Read for free here](https://medium.com/pew-research-center-decoded/introducing-pewmethods-an-r-package-for-working-with-survey-data-97601a250a46).

> **Goal**: Achieve a basic understanding of the survey design process, management and preliminary analysis

### Part 2 - Working with Qualtrics and qualtRics Package

#### [Qualtrics Overview](qualtrics_overview.html)

This module covers the workflow of qualtrics and the typical structure of a survey imported into R. In addition,
a quick setup of the qualtRics package will be given as an alternative to access data via API.

> **Goal**: Have an understanding of Qualtrics workflow and how to transfer data into R

### Part 3 - Parallel Reporting

#### [Parametering Survey Analysis]

> **Goal**: Parameterizing report for reporting to multiple organizations