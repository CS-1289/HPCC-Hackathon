#OPTION('ObfuscateOutput',TRUE);
IMPORT $,STD;
PopDen    := $.File_PopDen.File;
PopDenRec := $.File_PopDen.Layout;
//StateDT   := $DCT.States;
//StateDTNew  := $DCT.MapSTNew2Name;

bestrecord := STD.DataPatterns.BestRecordStructure(PopDen);
OUTPUT(bestrecord,ALL);

// Use this code to profile the PopDen dataset:
profileResults := STD.DataPatterns.Profile(PopDen):PERSIST('~UGA::Persist::PopDenProfile');
OUTPUT(profileResults, ALL, NAMED('profileResults'));

NewPopDenRec := RECORD
 State_ab    :=   PopDen.state_abbr;
 PopRank     :=   PopDen.rank_2010;
END;

LatestPopDenTBL := TABLE(PopDen,NewPopDenRec);
OUTPUT(LatestPopDenTBL, ALL, NAMED('Latest_PopDen'));
// OUTPUT(SORT(LatestPopDenTBL,state_abbr),NAMED('Latest_PopDen'));


RankRec := RECORD
 STRING2    State;
 INTEGER4   PopDensityRank;
END;

RankRec CalcRatios(LatestPopDenTBL Le) := TRANSFORM
 SELF.State             := Le.State_ab;
 SELF.PopDensityRank    := Le.PopRank;
END;

BuildRatios := PROJECT(LatestPopDenTBL,CalcRatios(LEFT));
OUTPUT(BuildRatios,,'~class::tb::Hacks::PopDenRank',NAMED('PopDensityRank'),OVERWRITE);
