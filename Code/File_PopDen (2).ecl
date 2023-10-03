EXPORT File_PopDen := MODULE
EXPORT Layout := RECORD
   // UNSIGNED8 RecID;
    STRING20  state_of_region;
    STRING2   state_abbr;
    REAL8     population_1910;
    REAL8     population_1920;
    REAL8     population_1930;
    REAL8     population_1940;
    REAL8     population_1950;
    REAL8     population_1960;
    REAL8     population_1970;
    REAL8     population_1980;
    REAL8     population_1990;
    REAL8     population_2000;
    REAL8     population_2010;

    REAL8     density_1910;
    REAL8     density_1920;
    REAL8     density_1930;
    REAL8     density_1940;
    REAL8     density_1950;
    REAL8     density_1960;
    REAL8     density_1970;
    REAL8     density_1980;
    REAL8     density_1990;
    REAL8     density_2000;
    REAL8     density_2010;
    
    INTEGER4     rank_1910;
    INTEGER4     rank_1920;
    INTEGER4     rank_1930;
    INTEGER4     rank_1940;
    INTEGER4     rank_1950;
    INTEGER4     rank_1960;
    INTEGER4     rank_1970;
    INTEGER4     rank_1980;
    INTEGER4     rank_1990;
    INTEGER4     rank_2000;
    INTEGER4     rank_2010;
END;                                                  
              
EXPORT File := DATASET('~class::tb::popden::team_believers_popden.csv',Layout,CSV(HEADING(1)));

END;