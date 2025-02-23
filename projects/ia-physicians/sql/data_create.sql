CREATE TABLE "04-GNRL-RSRCH-ia-trim-2013-2014-2015" (
	"Category" VARCHAR(5) NOT NULL, 
	"Covered_Recipient_Type" VARCHAR(35) NOT NULL, 
	"Teaching_Hospital_ID" INTEGER, 
	"Teaching_Hospital_Name" VARCHAR(37), 
	"Physician_Profile_ID" INTEGER, 
	"Physician_First_Name" VARCHAR(20), 
	"Physician_Middle_Name" VARCHAR(18), 
	"Physician_Last_Name" VARCHAR(24), 
	"Recipient_Primary_Business_Street_Address_Line1" VARCHAR(55) NOT NULL, 
	"Recipient_Primary_Business_Street_Address_Line2" VARCHAR(55), 
	"Recipient_City" VARCHAR(17) NOT NULL, 
	"Recipient_Zip_Code" VARCHAR(10) NOT NULL, 
	"Physician_Primary_Type" VARCHAR(28), 
	"Physician_Specialty" VARCHAR(115), 
	"Submitting_Applicable_Manufacturer_or_Applicable_GPO_Name" VARCHAR(77) NOT NULL, 
	"Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_ID" BIGINT NOT NULL, 
	"Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_Name" VARCHAR(77) NOT NULL, 
	"Applicable_Manufacturer_or_Applicable_GPO_Making_Payment_State" VARCHAR(4), 
	"Total_Amount_of_Payment_USDollars" FLOAT NOT NULL, 
	"Date_of_Payment" DATE NOT NULL, 
	"Form_of_Payment_or_Transfer_of_Value" VARCHAR(52) NOT NULL, 
	"Record_ID" INTEGER NOT NULL
);
