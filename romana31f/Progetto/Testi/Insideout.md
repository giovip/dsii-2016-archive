
--
WHAT IS IT?
--

Nel progetto Insideout il concetto d’invisibilità da rendere visibile risiede proprio dentro noi stessi.
Normalmente viviamo in una dimensione di apparente normalità: svogliamo le mansioni che ci spettano quotidianamente, ci spostiamo, ci relazioniamo con persone, ridiamo, ci arrabbiamo... In tutto l’arco della giornata il nostro corpo risente continuamente del modo in cui ci interfacciamo al mondo circostante: contesti, persone, cose. L’obiettivo di questo progetto è quello di rendere visibile questo flusso di relazioni che avviene incessantemente fra noi e il resto del mondo: come cambiano i parametri corporei e cosa siamo in grado di mostrare (e allo stesso modo nascondere) quando riceviamo degli stimoli esterni.

--
HOW DOES IT WORK?
--

La risposta fisiologica alle emozioni comporta delle alterazioni dei parametri biometrici quali ad esempio battito cardiaco, pressione arteriosa, vasocostrizione o dilatazione, sudorazione, midriasi, temperatura ecc. Queste alterazioni vengono misurate attraverso appositi sensori, in grado di mappare questi parametri e individuarne l’andamento sempre in risposta a determinate emozioni.
Si vuole pertanto creare un alter-ego “interno” della nostra persona in grado di rappresentare cosa siamo (e sentiamo). Come reagiamo agli stimoli e a determinate circostanze che ci mettono alla prova o che in qualche modo alterano il nostro stato di quiete. 

Posizionando la mano su una superficie sensibile in grado di registrare queste variazioni fisiologiche (sensori di battito cardiaco, umidità e temperatura, saturazione di ossigeno nel sangue ecc) si possono raccogliere i dati necessari per creare un profilo delle nostre emozioni.
I dati vengono successivamente processati ed un algoritmo consente dunque una visualizzazione degli stessi.

Una correlazione fra geometrie, colori, luminosità ed i parametri biometrici permette di smaterializzare e ricomporre di nuovo il ritmo che viene a formarsi dentro di noi, alimentato dalla nostra risposta agli stimoli. I dati raccolti contribuiscono a creare un’immagine tridimensionale della nostra interiorità che varia, in tempo reale, sulla base del monitoraggio dei parametri citati.
La forma, il movimento, il colore e la luminosità dell’immagine dipendono infatti dalle variazioni registrate sulla superficie della mano, corrispondenti alle variazioni fisiologiche alle emozioni.

la visualizzazione oleografica consente di trasporre questa immagine più interna ed intima all’esterno. Posizionando una mano sulla superficie sensibile e con l’altra mostrare l’immagine ottenuta (attraverso un device), consente di rendere visibile questo flusso continuo di emozioni.

Ipotesi istallazione:
![Ipotesi Istallazione](http://i.imgur.com/EZs1qNu.jpg)

Ipotesi wereable:
![Ipotesi Istallazione](http://i.imgur.com/svEzQbM.jpg)


--
EMOZIONI E PARAMETRI BIOMETRICI
--

(work in progress)

Generalmente una reazione d’allarme (fisiopatologia dello stress) comporta un’alterazione dello stato di quiete e si manifesta con dei meccanismi automatici che interessano il sistema nervoso centrale il sistema nervoso simpatico. In queste circostanze viene rilasciato un ormone “d’allarme” (Adrenalina e Noradrenalina) che viene immediatamente messo in circolo e agisce sugli organi del corpo.
Il cuore ha bisogno di più sangue e questo definisce un aumento della frequenza cardiaca (aumento dei battiti) ed è richiesto da parte da parte delle coronarie un apporto maggiore di sangue per poter funzionare meglio (vasodilatazione delle arterie centrali). Le arterie periferiche, invece, interessandosi degli altri organi, si costringono permettendo così un aumento della pressione.
I capillari della pelle, poiché il sangue viene dirottato agli organi più importanti (cuore, polmoni, cervello e reni..) riducono il loro volume e l’effetto sul corpo umano è quello di pallore e abbassamento della temperatura. La vasocostrizione cutanea incide anche sulle ghiandole sudoripare presenti sulla pelle, manifestandosi con sudorazione fredda.
Le fibre muscolari diventano più sensibili all’eccitazione nervosa e necessitano quindi di un tempo minore per attivarsi.
Le pupille si dilatano (midriasi) e l’occhio umano diventa più sensibile alle leggere variazioni dell’ambiente luminoso.
Il livello di saturazione del sangue è una stima della percentuale di ossigeno trasportata dai globuli rossi (emoglobina che lega l’ossigeno). Questo parametro dipende dall’integrità dei polmoni (alterata da patologie croniche o no) e non è direttamente collegata al ritmo respiratorio. L’adrenalina dilata i polmoni ma non è riscontrata una diretta correlazione con la saturazione di ossigeno nel sangue. (NB.: valutare per il progetto se considerare questo parametro!!!)

--
DATI PROGETTO
--
(work in progress)


https://www.cooking-hacks.com/documentation/tutorials/ehealth-v1-biometric-sensor-platform-arduino-raspberry-pi-medical/

In entrata il sistema riceve dei dati provenienti da sensori biometrici in grado di rilevare:
- Battito cardiaco: pulsazioni monitorate per 15 secondi e moltiplicate per 4 per ottenere un valore espresso in bpm come visualizzato nei comuni cardiofrequenzimetri (Pulse Heart Rate Sensor);
- Temperatura corporea: (Body temperature sensor);
- Sudorazione: (GSR Galvanic Skin Response sensor);
- Respirazione e livello di ossigeno nel sangue -ossimetria-(Oxygen Blood Sensor);
I dati vengono monitorati e comunicati in tempo reale e possono essere inviati ad un computer con sistemi wireless.

Strumenti utilizzati:
- Arduino UNO oppure Raspberry Pi (base);
- e-Healt Sensor Shield per ricevere in entrata i dati dei sensori biometrici interessati;

- SP02 Sensor¬¬: per misurazioni di pulsazioni cardiache ed ossigeno nel sangue;
- Termometro;
- GSR Sweating per il monitoraggio della sudorazione della pelle;


--
DATI PROTOTIPO
--
(work in progress)


Il prototipo mette in evidenza solo una parte del progetto, ovvero la misurazione e l’elaborazione di due tipologie di dati: il battito cardiaco e la temperatura corporea. I valori in entrata andranno rispettivamente a incidere sulle variazione di forme/trasformazioni (pulsazioni cardiache ed elaborazione bpm) e colore/saturazione (temperatura). Le misurazioni non corrispondono esattamente a quelle immaginate per il prodotto finito, per il quale si ipotizza un supporto più articolato e sensibile ed in grado di immagazzinare dati provenienti da più fonti (altre misurazioni biometriche).

[schemi esplicativi]

