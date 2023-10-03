IMPORT $;
PopDensity := $.File_popden.File;

OUTPUT(PopDensity ,NAMED('PopDensity'));
OUTPUT(COUNT(PopDensity),NAMED('Cnt_PopDensity'));

