* print pdf; 
%macro topdf(dsn=, file=, title=); 
ods listing close; 
options nonumber nodate; 
ods pdf file = "&file."; 
title "&title."; 
proc print data = &dsn.; 
run; 
ods pdf close; 
ods listing; 
%mend; 
