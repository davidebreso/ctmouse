; This file is a part of CuteMouse source
; Here are messages in Polish
; Translated by:
;                - Mateusz Viste <mateusz.viste@mail.ru> (until now)
;                - Jerzy 'HARY' Klejnowski <ksionrze@poczta.wp.pl> (until v1.9)


E_needvga       db 'Brak VGA? U?yj starszej wersji CTMOUSE dla obs?ugi EGA RIL',nl,eos
E_error         db nl,'B??d: niepoprawn',eos
E_option	db 'a opcja',eos
E_argument	db 'y argument',eos
E_help          db 5,nl,'Pomoc uzyskasz podaj?c /? w wierszu polece?',eos

E_mousepresent  db 5,'Us?ugi myszy s? ju? dost?pne',eos
E_notfound      db 5,'B??d: nie znaleziono urz?dzenia',eos
;;+E_noIRQ      db 5,'B??d: nie wykryto linii IRQ',eos

E_nocute        db 1,'Sterownik CuteMouse nie zosta? zainstalowany!',eos
E_notunload     db 2,'Nie mog? odinstalowa? sterownika: zmienione wektory przerwa?...',eos
S_unloaded      db 0,'Sterownik odinstalowany...',eos

S_reset         db 'Cz??? rezydentna ustawiona na ',eos
S_installed	db 'Zainstalowany na: ',eos
S_atPS2		db 'PS/2',eos
S_atCOM		db 'COM'
com_port	db ?,' ('
S_atIO		db '0000h/IRQ'
IRQno		db ?
S_in            db '), protok?? ',eos
S_inMSYS	db 'Mouse Systems',eos
S_inMS		db 'Microsoft',eos
S_inLT		db 'Logitech',eos
S_wheel         db nl,9,9,'(obs?uga rolki w??czona)'
S_CRLF		db nl,eos

Copyright	db nl,'CuteMouse v',CTMRELEASE,' [FreeDOS]',nl,eos
Syntax		label byte
    db 0,'Opcje:',nl
    db '  /P	   - wymusza tryb PS/2',nl
    db '  /S[c[i]] - wymusza u?ycie portu szeregowego COM nr c (1-4) na przerwaniu',nl
    db '	     i (1-7)',nl
;;+ db '  /S$a[,i] - wymusza u?ycie portu szeregowego pod adresem a (szesnastkowo)',nl
;;+ db '	     na przerwaniu i (1-7)',nl
    db '  /O       - umo?liwia wykrycie k??ka PS2 i USB BIOS (mo?e si? zawiesi?)',nl
; 2008: made /Y (ignore MSys) the default and introduced /M (enable MSys)
;   db '  /Y       - nie pr?buje trybu Mouse Systems dla urz?dze? nie-PnP',nl,nl
    db '  /M       - pr?buje *dawny* Mouse Systems / Genius dla myszy nie-PnP',nl,nl
    db '  /V       - odwraca kolejno??: szuka najpierw na COM, potem na PS/2',nl
    db '  /3       - wymusza tryb 3-przyciskowy (tylko dla myszy Microsoft i PS/2)',nl
    db '  /R[h[v]] - rozdzielczo?? pozioma/pionowa (h,v=0-9; brak opcji R, brak',nl
    db '	     argument?w lub podanie 0 oznacza auto resolution; brak drugiego',nl
    db '             argumentu oznacza tak? sam? warto?? jak dla pierwszego argumentu)',nl
    db '  /L       - mysz dla lewor?cznych (domy?lnie dla prawor?cznych)',nl
    db '  /B       - nie uruchamiaj, je?li us?ugi myszy s? ju? dost?pne',nl
    db '  /N       - instaluj, nawet je?li sterownik CuteMouse jest ju? zainstalowany',nl
    db '             (u?yteczne w .BAT, kt?re deinstaluj? CuteMouse na ko?cu)',nl
    db '  /W       - nie instaluj cz??ci rezydentnej w UMB',nl
    db '  /U       - odinstaluj sterownik',nl
    db '  /?       - poka? ten tekst',eos
