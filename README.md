Data analytics for decision making project for the "Projects in Data Analytics for Decision Making" course given by Dr. Jacques Zuber during the Spring Semester 2022.

## Group members  
* Elodie Kwan 
* Katia Voltz

Project’s title : 
# Report on the German Credit dataset 


# Project structure 
It is divided in 6 files:
- 'intro.Rmd' contains the introduction of our project 
- 'data.Rmd' contains a first overview of the data and the data cleaning 
- 'eda.Rmd' contains the exploratory data analysis of the cleaned dataset
- 'analysis.Rmd' contains the analysis of our project. 
- 'concl.Rmd' contains the conclusion and limitations of our project 
  - The file 'concl.Rmd' cannot be knitted on its own as it includes the annex part. In this section, some chunck code from others 'child' files are required. 
- 'report.Rmd' is used to put our different parts of the project together. 
  - We recommand knitting into an HTML file for better visualisation. Knitting to pdf also works. 

# Use our code 
In order to run the whole report, one has to knit the file named 'report.Rmd'. It can be knitted into html or pdf without any problem. 

The file 'setup.R' contains all the packages and libraries used during the project. 

1) Clone the project 
```
git clone https://github.com/Elodie-kwan/project_DA.git
```

2) Open the project (on R or R studio)
* Click on 'project_DA.Rproj' 

5) Render the report as html or pdf 
Open the "report.Rmd" and click on "knit as html" or click on "knit as pdf".
