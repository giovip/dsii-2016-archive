#Making Visible

##[01] Waves

###Concept
Dispositivo/installazione audio-visiva che utilizza come dati di partenza, le frequenze dei campi elettromagnetici (Hertz).
I campi elettromagnetici sono presenti ovunque nel nostro ambiente, ma sono invisibili all’occhio umano. Alcuni di questi sono prodotti dall’accumulo nell’atmosfera di cariche elettriche in occasione dei temporali, altri invece sono generati da sorgenti artificiali di grandi dimensioni come antenne televisive, impianti radiofonici, stazioni radio per la telefonia mobile, e in maniera minore negli spazi in cui viviamo, da televisori, elettrodomestici, dispositivi digitali.
L’idea di progetto è quella di rendere visibile il vasto sistema di dati che circonda la nostra quotidianità, rappresentandolo e rendendolo tangibile visivamente e acusticamente attraverso il linguaggio  degli elaboratori elettronici: il sistema numerico binario.

###Funzionamento
Il dato viene acquisito tramite ARDUINO ed è definito dalla frequenza del campo elettromagnetico in un range di valori che va da 30 Hz a 30 GHz.

Alcuni esempi:<br>
Radio AM 526 - 1606 Hz;<br>
Televisore 460 - 870 MHz;<br>
Telefoni cellulari 1,2 - 2,2 MHz;<br>
Microonde 2,4 GHz;<br>
WiFi 5 GHz;<br>

PROCESSING elabora e converte il dato acquisito in codice binario rappresentandolo successivamente con un insieme di linee bianche e nere (barcode) in continuo mutamento. 

###Varianti
 In una prima ipotesi, dopo essere stato rilevato ed elaborato all'interno di un'area specifica, il dato viene stampato su supporto cartaceo simile ad uno scontrino.

![](http://i.imgur.com/UPRVlnD.jpg)

Per incentivare l'utente all'interazione, ho pensato ad un ulteriore elemento (scanner) che consenta di leggere il supporto stampato traducendo le linee in musica attraverso opportuna mappatura midi, la durata di una nota dipenderà dallo spessore delle linee. 

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

