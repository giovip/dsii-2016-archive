#Making Visible

##[01] Waves

###Concept
Installazione audio-visiva che utilizza come dati di partenza, le frequenze dei campi elettromagnetici (Hertz). 
Navighiamo in un mare di onde, senza vederle né toccarle. I campi elettromagnetici sono presenti ovunque nel nostro ambiente, ma sono invisibili all’occhio umano. Alcuni di questi sono prodotti dall’accumulo nell’atmosfera di cariche elettriche in occasione dei temporali, altri invece sono generati da sorgenti artificiali di grandi dimensioni come antenne televisive, impianti radiofonici, stazioni radio per la telefonia mobile, e in maniera minore negli spazi in cui viviamo, da televisori, elettrodomestici, dispositivi digitali, ma ancor più interessante è la capacità di spostare, attraverso queste, milioni di dati tra vari dispositivi, potremmo in qualche modo definirle “autostrade dei dati”, sono il mezzo indispensabile atto all’invio e la ricezione continua di dati in forma digitalizzata.

Lo scambio di tali informazioni avviene grazie ad un processo di codifica DIGITALE – ANALOGICO – DIGITALE. 
Il dato – codice binario – viene convertito in onda elettromagnetica – analogica – per giungere al ricevente nuovamente sotto forma di codice binario.
Da qui l’idea di rendere visibile tale fenomeno attraverso il linguaggio dei calcolatori e di avvalermi del processo inverso ANALOGICO – DIGITALE – ANALOGICO per mettere in scena un’installazione audiovisiva.
Onda elettromagnetica – codifica binaria – visualizzazione e sonorizzazione.
Il progetto vuole essere un “tributo” a un processo e un linguaggio che caratterizzano la vita e le abitudini delle popolazioni occidentali.


###Funzionamento
Il dato viene acquisito tramite ARDUINO ed è definito dalla frequenza del campo elettromagnetico in un range di valori che va da 30 Hz a 30 GHz.

Alcuni esempi:<br>
Radio AM 526 - 1606 Hz;<br>
Televisore 460 - 870 MHz;<br>
Telefoni cellulari 1,2 - 2,2 MHz;<br>
Microonde 2,4 GHz;<br>
WiFi 5 GHz;<br>

PROCESSING elabora e converte il dato acquisito in codice binario rappresentandolo successivamente come un insieme di linee bianche e nere (barcode). Le linee b/n vengono definite secondo un ordine acceso/spento, che sono alla base del funzionamento di tutti gli elementi visivi e sonori. 
Visivo: L'installazione è composta da 32 "bacchette" di legno dotate di led, ognuna delle quali risponderà al segnale acceso/spento fornito da processing, generando visivamente un codice a barre che scorre da sinistra verso destra e una volta posizionatosi sull'intera superficie rimane impresso per 15/30 secondi.

Sonoro: Con l'utilizzo della libreria Minim, avvalendomi in particolar modo della funzione player, ho realizzato un codice con il quale istruisco processing: bianco riproduce il file .mp3 (creato con Logic), nero mette in pausa. (Work in progress)  

####Nota:
Nella conversione da decimale a binario, maggiore è il valore decimale maggiore sarà il numero di cifre che compongono il codice binario:<br>
1 = 1 <br>
2 = 10<br>
8 = 1000<br>
16 = 10000<br>
 etc

Secondo tale principio maggiore sarà la frequenza della radiazione, maggiore sarà la lunghezza dello scontrino. Lo scontrino diventa dunque l’unità di misura (visiva) della radizione. 

Esempio:
Se la frequenza rilevata è di 300 Hz (cuffie lettore mp3) il codice binario sarà - 100101100 – la lunghezza dello scontrino sarà 20 cm (dimensione ipotetica).
Se la frequenza rilevata è di 30000 Hz (router WiFi) il codice binario sarà - 111010100110000 – la lunghezza dello scontrino sarà 30 cm (dimensione ipotetica).

Nella seconda ipotesi, si tratterebbe di un'installazione audio-visiva, la mappatura midi avviene in tempo reale. Le line bianche e nere vengono proiettate su una parete e danno origine, laddove possibile, a suoni di frequenza simile a quella delle onde elettromagnetiche; il sistema viene attivato attraverso un rilevatore di presenza, smette di funzionare in assenza di visitatori.

###Reference
Sound On Intuition By Pieter-Jan Pieters (https://vimeo.com/51611669)<br>
The Transfinite By Ryoji Ikeda (https://www.youtube.com/watch?v=omDK2Cm2mwo)<br>

