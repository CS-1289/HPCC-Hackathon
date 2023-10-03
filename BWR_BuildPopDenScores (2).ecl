PopDenRec := RECORD
 STRING2    State;
 INTEGER4   PopDensityRank;
END;

PopDen_DS := DATASET('~class::tb::Hacks::PopDenRank',PopDenRec,FLAT);  //Created in BWR_AnalyzePopDen

RankTbl := RECORD
 PopDen_DS.State;
 PopDen_DS.PopDensityRank;
END;

//higher rank, more population density  [Pop Den of rank 1 > rank 2]
TempTbl := TABLE(PopDen_DS,RankTbl);

OUTPUT(TempTbl, ,'~class::tb::Hacks::PopDensityRank',NAMED('TopPopDensity'),OVERWRITE);
