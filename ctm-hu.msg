; This file is a part of CuteMouse source
; Here are messages in Hungarian
; Translated by Nagy Daniel <nagyd@users.sourceforge.net>

E_needvga       db 'No VGA? Use older CTMOUSE if you need EGA RIL support',nl,eos
E_error		db nl,'Hiba: ?rv?nytelen opci?'
E_option	db eos
E_argument	db ' argumentum',eos
E_help		db 5,nl,'A /? parancs ad tov?bbi seg?ts?get',eos

E_mousepresent	db 5,'Az eg?rmeghajt? m?r telep?tve van',eos
E_notfound	db 5,'Hiba: az eszk?z nem tal?lhat?',eos
;;+E_noIRQ	db 5,'Hiba: az IRQ nem detekt?lhat?',eos

E_nocute	db 1,'CuteMouse meghajt? nincs telep?tve!',eos
E_notunload	db 2,'Eg?rmeghajt? nem t?vol?that? el: a megszak?t?sokat m?s program haszn?lja...',eos
S_unloaded	db 0,'Eg?rmeghajt? sikeresen elt?vol?tva...',eos

S_reset		db 'Rezidens r?sz ?t?ll?tva: ',eos
S_installed	db 'Telep?tve: ',eos
S_atPS2		db 'PS/2 port',eos
S_atCOM		db 'COM'
com_port	db ?,' ('
S_atIO		db '0000h/IRQ'
IRQno		db ?
S_in		db ') in ',eos
S_inMSYS	db 'Mouse Systems m?d',eos
S_inMS		db 'Microsoft m?d',eos
S_inLT		db 'Logitech m?d',eos
S_wheel		db ' (g?rget?gomb t?mogatva)'
S_CRLF		db nl,eos

Copyright	db nl,'CuteMouse v',CTMRELEASE,' [FreeDOS]',nl,eos
Syntax		label byte
    db 0,'Opci?k:',nl
    db '  /P	   - PS/2 eg?r m?d',nl
    db '  /S[c[i]] - soros eg?r m?d a c COM porton (1-4) az i IRQ megszak?t?son (1-7)',nl
;;+ db '  /S$a[,i] - soros eg?r m?d az a I/O c?men (hexadecim?lis sz?m)',nl
;;+ db '	     ?s i IRQ megszak?t?son (1-7)',nl
    db '  /O       - enable PS2 and BIOS USB wheel detection (might hang)',nl
; 2008: made /Y (ignore MSys) the default and introduced /M (enable MSys)
;   db '  /Y	   - do not try Mouse Systems mode for non-PnP devices',nl,nl
    db '  /M       - try *old* Mouse Systems / Genius for non-PnP mice',nl,nl
    db '  /V	   - ford?tott keres?s: soros portok majd PS/2 port vizsg?lata',nl
    db '  /3	   - 3 gombos m?d (Microsoft ?s PS/2 eg?r eset?n)',nl
    db '  /R[h[v]] - horizont?lis/vertik?lis felbont?s (h,v=0-9; hi?nyz? R opci?,',nl
    db '	     hi?nyz? argumentum vagy 0 argumentum eset?n automatikus felbont?s;',nl
    db '	     hi?nyz? m?sodik argumentum eset?n horizont?lis ?rt?k haszn?lata)',nl
    db '  /L	   - balkezes m?d (jobbkezes m?d az alapbe?ll?t?s)',nl
    db '  /B	   - telep?t?s megakad?lyoz?sa, ha m?sik eg?rmeghajt? telep?tve van',nl
    db '  /N	   - CuteMouse bet?lt?se ?j TSR-k?nt akkor is, ha m?r telep?tve van',nl
    db '	     (batch programokn?l hasznos, melyek elt?vol?tj?k a CuteMouse-t)',nl
    db '  /W	   - UMB haszn?lat?nak tilt?sa',nl
    db '  /U	   - eg?rmeghajt? elt?vol?t?sa',nl
    db '  /?	   - ez a help ?zenet',eos
