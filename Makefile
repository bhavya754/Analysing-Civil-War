# target to make the file report
all: mds_project.html

download_datafiles:
	bash 01_get_original_data.sh

mds_project.html: download_datafiles
	#Project Replication
	Rscript -e "rmarkdown::render('project_replication.Rmd')"
	#Project Extension 1 - In Sample
	Rscript -e 'rmarkdown::render("project_extenion1.Rmd", params = list(threshold = "0.1"))'
	Rscript -e 'rmarkdown::render("project_extenion1.Rmd", params = list(threshold = "0.5"))'
	#Project Extension 2 - Out of Sample
	Rscript -e 'rmarkdown::render("project_extenion2.Rmd", params = list(threshold = "0.1"))'
	Rscript -e 'rmarkdown::render("project_extenion2.Rmd", params = list(threshold = "0.5"))'
	#Project Extension 3 - Regularized
	Rscript -e 'rmarkdown::render("project_extenion3.Rmd", params = list(threshold = "0.1"))'
	Rscript -e 'rmarkdown::render("project_extenion3.Rmd", params = list(threshold = "0.5"))'

clean:
	rm project_*.pdf *.csv *.html