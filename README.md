# Modeling Social Data Project

## Team Members (Group 3) :-
Kiran Ramesh (kr2789)
Sai Srujan Chinta (sc4401)
Bhavya Shahi (bs3118)

## File Description
1. 01_get_original_data.sh - Download Code
2. project_replication.Rmd - Greed & Grievance Paper Replication
3. project_extenion1.Rmd - In Sample Testing
4. project_extenion2.Rmd - Out of Sample Testing
5. project_extenion3.Rmd - Regularized Model
6. 02_final_report.Rmd - Combined Replication and Extension

## Make Description
1. The Makefile first runs 01_get_original_data.sh to download the data into the Data directory.
2. It then runs the 4 scripts project_replication, project_extenion1, project_extenion2, project_extenion3 at two thresholds (0.5 and 0.1) and generates 4 PDF reports (one for each markdown) and 6 csvs (accuracy, specificity, sensitivity for the two thresholds auc values for each of the extensions).
3. A combined 02_final_report script is also run and a 02_final_report.html and 02_final_report.pdf final reports are produced.


