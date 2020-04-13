Tidying Survey Data in R
======================

Foundations For Research Computing - Columbia University
--------------------------------

## Part 2 - Survey Data Management and Analysis 

### R Packages

We will be working with two R survey packages that focus on survey data management and analysis. These packages include `survey` which is one of the most widely packages in survey research and `pewmethods` which is a recently developed package from the Pew Research Center. As a working example, we will be using a survey data excerpt from the Pew Research Center (available through the package). To gain access to the full survey or other similar survey data set, you should sign up for their free account.

This excercise is adapted from tutorials from the Pew Research Center and part-time job experience as a Research Assistant at Bank Street College.


```{r, include=FALSE}
library(tidyr)
library(dplyr)
#install.packages("devtools")
library(devtools)
#install_github("pewresearch/pewmethods", build_vignettes = TRUE)
library(pewmethods)
#dataset_1 <- read.csv("datasets/dataset_1.csv")
pewsurvey <- pewmethods::dec13_excerpt
```

First, lets get a quick glance at the survey structure. While there are many ways to explore the structure and get a description of data, I usually use `summary` base function to get a glimpse into the data and summary statistics for each item. 

```{r, echo=FALSE}
summary(pewsurvey)
```

After running the summary function, we see what the structure of a well constructed survey. 

The survey data starts with a response ID (psraid) which helps ensure data intergrity. IDs help survey takers remain anonymous and help analyst retrace steps in case ID changes columns after some operation. Then we have data related to the survey which is usually assigned through a survey tool. In this case we have the region where the survey took place but it can also include time survey was taken.

Next, the questions are enumerated based on a widely used survey convention where question and corresponding n position in the survey are placed as the header. This convention allows for quicker and cleaner output of survey data. Usually, other software packages such as SASS or SPSS store questions under "labels". Otherwise, a reference object should be rendered. In this case, we can get the labels using the `pewmethods` package function called `get_spss_label`  

```{r, echo=FALSE}
get_spss_label(pewsurvey,"q1") #bipolar 
get_spss_label(pewsurvey,"q2") #unipolar
```

Here we see two questions that are related. The first question asks a bipolar question as to whether the respondant approves or disapprove. Such question design categorizes respondant and influences following questions. The second takes the positive or negative attitude and measures its intensity through a unipolar question. 

Because these two questions are related, it makes sense to combine them to see how attitude ranges within these two spectrums. These following operation is commonly used in scenerios of questions being logically linked together but spreadout through multiple questions.  

```{r,echo=FALSE}
pewsurvey <- pewsurvey %>%
  mutate(
    obama_approval_scale = fct_case_when(
      q1 == "Approve" & q2 == "Very strongly" ~ "Approve very strongly",
      q1 == "Approve" & q2 == "Not so strongly" ~ "Approve not so strongly", 
      q1 == "Disapprove" & q2 == "Not so strongly" ~ "Disapprove not so strongly",
      q1 == "Disapprove" & q2 == "Very strongly" ~ "Disapprove very strongly",
      TRUE ~ "Don’t know/Refused (VOL.)"
    )
  )
```

Now, lets look at weights and how critical they are in any type of sample analysis. Depending on the way the survey is administered, there maybe different weights (or no weights). Weights account for issues such as over polling certain groups because they have better access to the survey. In this survey, we see three different weights.

The first weight is a survey weight to properly represent the US population. The next is this same weight but adjusted for landlines and cell phones respecively. These were the two ways the

```{r, echo=FALSE}
get_totals("obama_approval_scale", pewsurvey, 
           wt = c("weight", "llweight", "cellweight"), digits = 1)
```

While the response is interesting, survey analysis typically uses cross tabulation among subgroups of interest to see how the response vary. Using the same function, try different weights by different groups you saw before. 

```{r}
 get_totals("obama_approval_scale", pewsurvey, wt = "weight", 
             by = "receduc", by_total = TRUE, digits = 0) %>%
    select(-`DK/Ref`)
```

Another extremely useful package is the `survey` package which is a much more established package with a large set of functions made with survey research in mind. For now, lets set up the survey using this package to show some useful functions.

```{r}
library(survey)
pewsurvey_design = svydesign(
         ids = ~0, #formula indicating there are no clusters  
         data = pewsurvey,      #this is the dataset 
         weights = ~weight) #this is the landline 'weight' variable
pewsurvey_design
```

Now, we take the object we created and use the function `svymean` to get the mean per response possible of the first item.

```{r}
svymean(~obama_approval_scale, design = pewsurvey_design)
```

To see how responses vary by age group, use the `svyby` function with the object and apply the `svymean` function.

```{r}
approval_by_sex = svyby(~obama_approval_scale,
                   ~recage,
                   design = pewsurvey_design,
                   FUN = svymean, #function to use on each subgroup
                   keep.names = FALSE) 
approval_by_sex
```