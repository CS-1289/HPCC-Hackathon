EXPORT File_Trans := MODULE
EXPORT Layout := RECORD
    UNSIGNED8 RecID;
    STRING20   state;

    REAL8     commute_mode_share_auto;
    REAL8     score_commute_mode_share_auto;
    REAL8     commute_mode_share_transit;
    REAL8     score_commute_mode_share_transit;
    REAL8     commute_mode_share_bicycle;
    REAL8     score_commute_mode_share_bicycle;
    REAL8     commute_mode_share_walk;
    REAL8    score_commute_mode_share_walk;

    STRING15    complete_streets_policies;
    INTEGER4   score_complete_streets_policies;
    REAL8      fatalities;
    REAL8     score_fatalities;
    REAL8      miles_of_travel_by_vehicle;
    REAL8    score_miles_of_travel_by_vehicle;
    REAL8      miles_of_travel_by_walk;
    REAL8     score_miles_of_travel_by_walk;
    REAL8      physical_activity;
    REAL8     score_physical_activity;
   
    REAL8     proximity_to_major_roadways;
    REAL8     score_proximity_to_major_roadways;

    REAL8     road_fatalities_auto;
    REAL8     score_road_fatalities_auto;
    REAL8      road_fatalities_bicycle;
    REAL8     score_road_fatalities_bicycle;
    REAL8      road_fatalities_pedestrian;
    REAL8     score_road_fatalities_pedestrian;
    REAL8      road_fatalities_exposure_auto;
    REAL8     score_road_fatalities_exposure_auto;
    REAL8      road_fatalities_exposure_bicycle;
    REAL8     score_road_fatalities_exposure_bicycle;
    REAL8      road_fatalities_exposure_pedestrian;
    REAL8     score_road_fatalities_exposure_pedestrian;
    REAL8      seat_belt;
    REAL8      score_seat_belt;

    REAL8     transit_trips_per_capita;
    REAL8     score_transit_trips_per_capita;

    REAL8    federal_funds;
    REAL8    score_federal_funds;
    REAL8    vehicle_miles;
    REAL8    score_vehicle_miles;                     
    
END;

EXPORT File :=DATASET('~class::tb::trans::team_believers_trans.csv',Layout,CSV(HEADING(1)));


END;