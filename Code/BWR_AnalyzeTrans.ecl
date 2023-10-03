#OPTION('ObfuscateOutput',TRUE);
IMPORT $,STD;
Trans:= $.File_Trans.File;
TransRec:= $.File_Trans.Layout;
bestrecord := STD.DataPatterns.BestRecordStructure(Trans);
OUTPUT(bestrecord,ALL);

profileResults := STD.DataPatterns.Profile(Trans):PERSIST('~UGA::Persist::TransProfile');
OUTPUT(profileResults, ALL, NAMED('profileResults'));



/*NewTrans:= RECORD
Trans.RecID;
Trans.proximity_to_major_roadways;
Trans.


asadc.NewTrans
Trans;
END;*/