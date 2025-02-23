#IA physicians

These shell scripts parse through [CMS open payments data](https://www.cms.gov/OpenPayments/Explore-the-Data/Dataset-Downloads.html) from 2013 to 2015, combines them and figures out which doctors in Iowa were paid the most in that time period. It then converts this data into CSV files and then JSON files, which are used in our [top paid doctors app](http://www.thegazette.com/data/top-paid-doctors).

In all, we have 6,000+ small JSON files that make this app run, including three for each of the 2,000+ doctors in the app. Each are called one at a time as the reader selects individual doctors.

The final CSVs are located in the output directory. The final JSON files are located in the json directory.

To parse the data, run:

		sh process-payments

Note: The data needs to be downloaded first from the CMS site and put into the raw/payments directory. Each year's of data comes in a ZIP file titled something like "PGYR14_P063016.ZIP". This script will unzip the files so you don't need to do that.

These files were not included because they are too large for Github.