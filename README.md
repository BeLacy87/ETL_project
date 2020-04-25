# ETL_project
Basic ETL practice

Extract and Transform

Data was gleaned from two sources: https://www.kaggle.com/bappekim/air-pollution-in-seoul and https://data.world/datagov-uk/b7cd6b51-57b1-4105-babc-09d8318d1f73. Using Jupyter Notebook and the Pandas library, the two csv files were read in and converted to dataframes. The following changes were then made to the data files:

![ETL_table](https://user-images.githubusercontent.com/58399638/80284823-d7423400-86ee-11ea-9d9f-cb0e3d477f34.PNG)

"*" These columns initially contained measurements in ug.  However, as the column label contained a decimal (PM2.5), we were unable to use this as a field label in a postgres db.  Multiplying the values out by a factor of two remedied this.

Load

Our two final data frames were loaded into a postgres database using pgAdmin using the following naming convention:
	DB: ETL_project
		Collections:	UK
				Seoul
An additional ID column was added to each collection as the primary key.  Both collections measured nitrous dioxide, but with seemingly different resolution (a factor of 100x difference).  While these two columns could be combined with a join, it was unclear to us as to whether these differences in measurements were due to instrumentation or actual readings.
