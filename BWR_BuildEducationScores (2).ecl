﻿IMPORT $;

EducationScoreRec := RECORD
  STRING2  state;
  INTEGER8 stcnt;
  INTEGER8 pubcnt;
  INTEGER8 prvcnt;
  DECIMAL5_2 prpubrat;
  REAL8    avestratio;
 END;
 
EdScoreDS := DATASET('~FYP::Main::Hacks::EducationSummary',EducationScoreRec,THOR);
OUTPUT(EdScoreDS,NAMED('Input_Data')); //Generated by BWR_AnalyzeSchools
 
 
 
 //BuildScores (higher score, better rating)  PunCnt,PrvCnt,AveStRatio
 
RankTbl := RECORD
 EdScoreDS.State;
 EdScoreDS.pubcnt;
 EdScoreDS.prvcnt;
 EdScoreDS.avestratio;
 UNSIGNED1 StudentTeacherScore := 0;
 UNSIGNED1 PrvSchoolScore := 0;
 UNSIGNED1 PublicSchoolScore := 0;
END;

TempTbl := TABLE(EdScoreDS,RankTbl);

AddSTScore  := ITERATE(SORT(TempTbl,-avestratio),TRANSFORM(RankTbl,
                                                           SELF.StudentTeacherScore := IF(LEFT.avestratio=RIGHT.avestratio,LEFT.StudentTeacherScore,LEFT.StudentTeacherScore+1),
                                                           SELF := RIGHT));
AddPrvScore := ITERATE(SORT(AddSTScore,prvcnt),TRANSFORM(RankTbl,SELF.PrvSchoolScore := IF(LEFT.prvcnt=RIGHT.prvcnt,LEFT.PrvSchoolScore,LEFT.PrvSchoolScore+1),SELF := RIGHT));
AddPubScore := ITERATE(SORT(AddPrvScore,pubcnt),TRANSFORM(RankTbl,SELF.PublicSchoolScore := IF(LEFT.pubcnt=RIGHT.pubcnt,LEFT.PublicSchoolScore,LEFT.PublicSchoolScore+1),SELF := RIGHT));

OUTPUT(AddPubScore,,'~FYP::Main::Hacks::EducationScores',NAMED('Scores'),OVERWRITE);