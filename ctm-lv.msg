; This file is a part of CuteMouse source
; Here are messages in Latvian (for codepage 775)
; Translated by Kristaps Kaupe, Latvia <neons@digital.lv>

E_needvga       db 'No VGA? Use older CTMOUSE if you need EGA RIL support',nl,eos
E_error		db nl,'K??da: ',eos
E_option	db 'Nepareiza opcija',eos
E_argument	db 'Invalid option argument',eos
E_help		db 5,nl,'Ievadiet /? komandrind? lai ieg?tu pal?dz?bu',eos

E_mousepresent	db 5,'Cits peles draiveris jau ir atmi??',eos
E_notfound	db 5,'K??da: iek?rta nav atrasta',eos
;;+E_noIRQ	db 5,'K??da: IRQ line not detected',eos

E_nocute	db 1,'CuteMouse draiveris netika iel?d?ts!',eos
E_notunload	db 2,'K??da izl?d?jot draiveri: da?i p?rtraukumi aiz?emti...',eos
S_unloaded	db 0,'Draiveris veiksm?gi izl?d?ts...',eos

S_reset		db 'Rezident? da?a p?rl?d?ta uz ',eos
S_installed	db 'Iel?d?ts uz ',eos
S_atPS2		db 'PS/2 porta',eos
S_atCOM		db 'COM'
com_port	db ?,' ('
S_atIO		db '0000h/IRQ'
IRQno		db ?
S_in		db ') ',eos
S_inMSYS	db 'Mouse Systems re،m?',eos
S_inMS		db 'Microsoft re،m?',eos
S_inLT		db 'Logitech re،m?',eos
S_wheel		db ' (pele ar riten?ti)'
S_CRLF		db nl,eos

Copyright	db nl,'CuteMouse v',CTMRELEASE,' [FreeDOS]',nl,eos
Syntax		label byte
    db 0,'Opcijas:',nl
    db '  /P	   - PS/2 peles re،ms',nl
    db '  /S[c[i]] - seri?l?s peles re،ms uz COM porta c (1-4) ar IRQ l?niju i (1-7)',nl
;;+ db '  /S$a[,i] - seri?l?s peles re،ms I/O adres? a (heksadecim?lais numurs)',nl
;;+ db '	     ar IRQ l?niju i (1-7)',nl
    db '  /O       - enable PS2 and BIOS USB wheel detection (might hang)',nl
; 2008: made /Y (ignore MSys) the default and introduced /M (enable MSys)
;   db '  /Y	   - do not try Mouse Systems mode for non-PnP devices',nl,nl
    db '  /M       - try *old* Mouse Systems / Genius for non-PnP mice',nl,nl
    db '  /V	   - apgriezt? mekl??ana: mekl?t PS/2 p?c seri?l?s peles',nl
    db '  /3	   - 3 pogu re،ms (tikai Microsoft un PS/2 pel?m)',nl
    db '  /R[h[v]] - horizont?l?/vertik?l? iz??irtsp?ja (h,v=0-9; ja nav opcijas R,',nl
    db '	     nav argumentu vai arguments p?c R ir 0, tiek lietota autom?tiska',nl
    db '	     iz??irtsp?ja, ja tr?kst otr? argument? tam tiek pie??irta t?da',nl
    db '	     pati v?rt?ba k? pirmajam)',nl
    db '  /L	   - kreis?s rokas re،ms (noklus?tais ir lab?s rokas re،ms)',nl
    db '  /B	   - p?rtraukt darbu, ja cits peles draiveris jau ir atmi??',nl
    db '  /N	   - load CuteMouse as new TSR, even if CuteMouse is already loaded',nl
    db '	     (useful for batch files which unload CuteMouse at end)',nl
    db '  /W	   - nel?d?t draivera rezidento da?u UMB',nl
    db '  /U	   - izl?d?t draiveri',nl
    db '  /?	   - par?d?t ?o pal?dz?bu',eos
