EXPORT File_Crimes := MODULE
/* This dataset contains estimated data at the state and national level and was derived from the Summary Reporting System (SRS). 
   These data reflect the estimates the FBI has traditionally included in its annual publications. 
   Download this dataset to see the FBI's estimated crime totals for the nation and all 50 states, 1979 to current year available.
   Source: https://cde.ucr.cjis.gov/LATEST/webapp/#/pages/downloads#nibrs-downloads
*/
 EXPORT Layout := RECORD
  UNSIGNED2 year;
  STRING2   state_abbr;
  STRING20  state_name;
  UNSIGNED5 population;
  UNSIGNED4 violent_crime;
  UNSIGNED3 homicide;
  UNSIGNED3 rape_legacy;
  UNSIGNED3 rape_revised;
  UNSIGNED3 robbery;
  UNSIGNED4 aggravated_assault;
  UNSIGNED4 property_crime;
  UNSIGNED4 burglary;
  UNSIGNED4 larceny;
  UNSIGNED4 motor_vehicle_theft;
  STRING577 caveats;
 END;

EXPORT File := DATASET('~fyp::main::input::estimated_crimes_1979_2020',Layout,CSV(HEADING(1)));

END;