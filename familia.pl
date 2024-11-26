padrede('victor','alejandro').
padrede('victor','nicolay').
padrede('victor','ada').
padrede('victor','andrey').
padrede('victor','angelo').
padrede('victor','jonathan').
padrede('carmen','alejandro').
padrede('carmen','nicolay').
padrede('carmen','ada').
padrede('carmen','andrey').
padrede('carmen','angelo').
padrede('carmen','jonathan').
padrede('alejandro','paola').
padrede('alejandro','diego').
padrede('marcela','paola').
padrede('marcela','diego').
padrede('ada','isabella').
padrede('ada','victoria').
padrede('jose','isabella').
padrede('jose','victoria').
padrede('angelo','josue').
padrede('angelo','marcelo').
padrede('yanine','josue').
padrede('yanine','marcelo').
padrede('jonathan','leonardo').
padrede('deyo','leonardo').
padrede('ana','guillermo').
padrede('ana','alejo').
padrede('ana','juan').
padrede('ana','patricia').
padrede('ana','mauricio').
padrede('ana','marcela').
padrede('guillermo','luis').
padrede('angeles','luis').
padrede('juan','laura').
padrede('juan','angela').
padrede('juan','sebastian').
padrede('helena','laura').
padrede('helena','angela').
padrede('yesika','sebastian').
padrede('mauricio','andres').
padrede('mauricio','nicolas').
padrede('mauricio','paula').
padrede('andrea','andres').
padrede('janeth','nicolas').
padrede('janeth','paula').
padrede('patricia','daniela').



hijode(A,B) :- padrede(B,A).
madrede(A,B) :- padrede(A,B).
abuelode(A,B) :- padrede(A,C), padrede(C,B).
hermanode(A,B) :- padrede(C,A), padrede(C,B), A \== B.
tiode(A,B) :- padrede(C,B), hermanode(A,C).
nietode(A,B) :- abuelode(B,A).
familiarde(A,B) :- padrede(A,B); madrede(A,B); abuelode(A,B); hijode(A,B); tiode(A,B); hermanode(A,B); nietode(A,B).
primode(A,B) :- tiode(C,A), padrede(C,B).
sobrinode(A,B) :- tiode(B,A).
cunadode(A,B) :- casado(A,C), hermanode(C,B).
casado(A,B) :- padrede(A,C), padrede(B,C), A \== B.
suegrode(A,B) :- padrede(A,C), casado(C,B).
padres(R,M) :- findall(Y,padrede(Y,R),M).
esfeliz(X) :- casado(X,_).
