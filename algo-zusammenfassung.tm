<TeXmacs|1.0.7.10>

<style|generic>

<\body>
  <section|Sortieren>

  <subsection|�bersicht Sortieralgorithmen>

  <big-table|<block*|<tformat|<cwith|5|5|2|4|cell-row-span|1>|<cwith|5|5|2|4|cell-col-span|3>|<cwith|8|8|2|4|cell-row-span|1>|<cwith|8|8|2|4|cell-col-span|3>|<cwith|2|2|3|4|cell-row-span|1>|<cwith|2|2|3|4|cell-col-span|2>|<cwith|3|3|3|4|cell-row-span|1>|<cwith|3|3|3|4|cell-col-span|2>|<cwith|4|4|3|4|cell-row-span|1>|<cwith|4|4|3|4|cell-col-span|2>|<cwith|6|6|2|3|cell-row-span|1>|<cwith|6|6|2|3|cell-col-span|2>|<cwith|9|9|2|4|cell-row-span|1>|<cwith|9|9|2|4|cell-col-span|3>|<cwith|7|7|2|4|cell-row-span|1>|<cwith|7|7|2|4|cell-col-span|3>|<cwith|4|4|2|3|cell-row-span|1>|<cwith|4|4|2|3|cell-col-span|3>|<table|<row|<cell|<strong|Name>>|<cell|<strong|Best
  Case>>|<cell|<strong|Average Case>>|<cell|<strong|Worst
  Case>>|<cell|<strong|Stabil?>>|<cell|<strong|In-Place?>>|<cell|<strong|Vergleich?>>>|<row|<cell|Bubblesort>|<cell|<math|O<around*|(|n|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|ja>|<cell|ja>|<cell|ja>>|<row|<cell|Insertionsort>|<cell|<math|\<Theta\><around*|(|n|)>>>|<cell|<math|\<Theta\><around*|(|n<rsup|2>|)>>>|<cell|<math|\<Theta\><around*|(|n<rsup|2>|)>>>|<cell|ja>|<cell|ja>|<cell|ja>>|<row|<cell|Selectionsort>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|nein>|<cell|ja>|<cell|ja>>|<row|<cell|Mergesort>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|>|<cell|>|<cell|ja>|<cell|nein>|<cell|ja>>|<row|<cell|Quicksort>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|<math|\<Theta\><around*|(|n<rsup|2>|)>>>|<cell|nein>|<cell|nein
  (<math|+log n>)>|<cell|ja>>|<row|<cell|Heapsort>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|>|<cell|>|<cell|nein>|<cell|ja>|<cell|ja>>|<row|<cell|Radixsort>|<cell|<math|\<Theta\><around*|(|d<around*|(|n+k|)>|)>>>|<cell|<math|\<Theta\><around*|(|d<around*|(|n+k|)>|)>>>|<cell|<math|\<Theta\><around*|(|d<around*|(|n+k|)>|)>>>|<cell|ja>|<cell|nein
  (<math|+n>)>|<cell|nein>>|<row|<cell|Countingsort>|<cell|<math|\<Theta\><around*|(|n+k|)>>>|<cell|>|<cell|>|<cell|ja>|<cell|nein
  (<math|+<around*|(|n+k|)>>)>|<cell|nein>>>>>|�bersicht der
  Sortierverfahren. <math|n> = Anzahl zu sortierender Elemente, <math|k> =
  Anzahl diskreter Werte, die von einem Schl�ssel (Countingsort) bzw. einer
  Stelle des Schl�ssels (Radixsort) angenommen werden k�nnen, <math|d> =
  Anzahl Stellen des Schl�ssels.>

  In der Praxis ist Quicksort meistens schneller als Heapsort, ben�tigt aber
  asymptotisch mehr zus�tzlichen Speicher.

  <subsection|Graphen>

  <subsubsection|Darstellung>

  <big-table|<block|<tformat|<table|<row|<cell|>|<cell|Vorteile>|<cell|Nachteile>>|<row|<cell|Adjazenzliste>|<cell|kompakt,
  Kantenoperationen>|<cell|Kantensuche, Cache-Misses>>|<row|<cell|Adjazenzmatrix>|<cell|Operationen
  in <math|O<around*|(|1|)>>>|<cell|Speicherverbrauch,
  Navigation>>|<row|<cell|Adjazenzfeld>|<cell|Platzsparend,
  Navigation>|<cell|�nderungen aufwendig>>>>>|Darstellungsm�glichkeiten von
  Graphen>

  <section|Laufzeiten>

  <subsection|Heaps>

  <big-table|<block*|<tformat|<cwith|3|3|1|2|cell-bborder|1pt>|<table|<row|<cell|GetMax/Min>|<cell|<math|O<around*|(|1|)>>>>|<row|<cell|ExtractMax/Min>|<cell|<math|O<around*|(|lg
  n|)>>>>|<row|<cell|Insert>|<cell|<math|O<around*|(|lg
  n|)>>>>|<row|<cell|Erzeugen durch Einf�gen>|<cell|<math|\<Theta\><around*|(|n*lg
  n|)>>>>|<row|<cell|Erzeugen durch \RHeapify``>|<cell|<math|O<around*|(|n|)>>>>>>>|Laufzeiten
  von Heap-Operationen>

  <subsection|Felder>

  <big-table|<block*|<tformat|<table|<row|<cell|<strong|Operation>>|<cell|<strong|Liste
  (doppelt)>>|<cell|<strong|Liste (einfach)>>|<cell|<strong|Stack>>|<cell|<strong|Queue>>|<cell|<strong|Array>>|<cell|<strong|unbeschr.
  Feld>>>|<row|<cell|Search>|<cell|<with|mode|math|O<around*|(|n|)>>>|<cell|<with|mode|math|O<around*|(|n|)>>>|<cell|>|<cell|>|<cell|<math|O<around*|(|n|)>>>|<cell|<math|O<around*|(|n|)>>>>|<row|<cell|Select(<math|k>)>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|erwartet
  <math|O<around*|(|n|)>>>|<cell|erwartet
  <math|O<around*|(|n|)>>>>|<row|<cell|Insert-Front>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Delete>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|n|)>>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Push/Pop>|<cell|>|<cell|>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>|<cell|amortisiert
  <math|O<around*|(|1|)>>>>|<row|<cell|Enqueue/Dequeue>|<cell|>|<cell|>|<cell|>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>>|<row|<cell|isEmpty>|<cell|<math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>>>>>|Laufzeiten
  von Feldoperationen. Select(<math|k>) w�hlt das Element mit Rang <math|k>
  aus (Quickselect!)>

  <subsection|Hashtabellen>

  Falls

  <\itemize>
    <item>einfaches gleichm�ssiges Hashing verwendet wird

    <item>eine doppelt verkettete Liste zur Kollisionsaufl�sung verwendet
    wird

    <item>die Anzahl der Slots proportional zur Anzahl der gespeicherten
    Elemente ist
  </itemize>

  dann ist die Anzahl der Kollisionen <em|erwartet> in
  <math|O<around*|(|1|)>> und die Laufzeiten betragen:

  <big-table|<block*|<tformat|<table|<row|<cell|Operation>|<cell|Best
  Case>|<cell|Average Case>|<cell|Worst Case>>|<row|<cell|SEARCH>|<cell|<math|O<around*|(|1|)>>>|<cell|<math|O<around*|(|1|)>>>|<cell|<math|\<Theta\><around*|(|n|)>>>>|<row|<cell|INSERT>|<cell|>|<cell|<math|O<around*|(|1|)>>>|<cell|>>|<row|<cell|DELETE>|<cell|>|<cell|<math|O<around*|(|1|)>>>|<cell|>>>>>|Laufzeiten
  von Hashoperationen mit Verkettung>

  Annahme: Hashwertberechnung in <math|\<Theta\><around*|(|1|)>>.

  Belegungsfaktor <math|\<alpha\>=<frac|m|n>> gibt die mittlere L�nge einer
  Liste an. Erwartete Anzahl Sondierungen bei erfolgloser Suche betr�gt also
  <math|\<alpha\>>.

  Die erwartete Anzahl Sondierungen f�r eine erfolgreiche Suche betr�gt
  <math|1+<frac|\<alpha\>|2>+<frac|\<alpha\>|2*m>>.
  (<math|\<Theta\><around*|(|1+\<alpha\>|)>>)

  <strong|Einf�gen eines Elements findet am Anfang der verketteten Liste
  statt!>

  \ 

  <paragraph|Offene Adressierung>

  Bei Verwendung von offener Adressierung, Belegungsfaktor <math|\<alpha\>>:

  <big-table|<block*|<tformat|<table|<row|<cell|Operation>|<cell|Anzahl
  Sondierungen im Mittel>>|<row|<cell|Suche
  (erfolglos)>|<cell|<math|<frac|1|1-\<alpha\>>>>>|<row|<cell|Suche
  (erfolgreich)>|<cell|<math|<frac|1|\<alpha\>>\<cdot\>ln<around*|(|1-\<alpha\>|)>>>>|<row|<cell|Einf�gen>|<cell|<math|<frac|1|1-\<alpha\>>>>>>>>|Laufzeiten
  von Hashoperationen mit offener Adressierung. Es wird angenommen, dass nach
  jedem Schl�ssel mit gleicher Wahrscheinlichkeit gesucht wird.>

  Offene Adressierung bietet Speichervorteile (Platz f�r Zeiger bei
  verketteten Listen kann f�r zus�tzlichen Speicher genutzt werden) und ist
  Cache-effizienter.

  <subsubsection|Hashfunktionen>

  <\description>
    <item*|Divisionsmethode><math|h<around*|(|k|)>=k mod m>

    Geeignete Wahl f�r <math|m> (Hashtabellengr�sse): Primzahl, die nicht
    nahe an einer Zweierpotenz liegt.

    <item*|Multiplikationsmethode><math|h<around*|(|k|)>=<around*|\<lfloor\>|m*<around*|(|k\<cdot\>A
    mod 1|)>|\<rfloor\>>>

    wobei <math|A> eine Konstante zwischen 0 und 1 ist und \R<math|mod 1>``
    den gebrochenen Rest bezeichnet.
  </description>

  <subsubsection|Offene Adressierung>

  <math|h<rprime|'><around*|(|k|)>> ist hier eine Hilfshashfunktion.

  Alle drei Varianten bieten kein universelles Hashing, da sie maximal
  <math|m<rsup|2>> (statt <math|m!>) Sondierungssequenzen liefern.

  <\description>
    <item*|Lineares Sondieren><math|h<around*|(|k\<nocomma\>,i|)>=<around*|(|h<rprime|'><around*|(|k|)>+i|)>
    mod m>

    <item*|Quadratisches Sondieren><math|h<around*|(|k,i|)>=<around*|(|h<rprime|'><around*|(|k|)>+a<rsub|1>\<cdot\>i+a<rsub|2>\<cdot\>i<rsup|2>|)>mod
    m>

    <item*|Doppeltes Hashing><math|h<around*|(|k,i|)>=<around*|(|h<rprime|'><around*|(|k|)>+i\<cdot\>h<rprime|''><around*|(|k|)>|)>>

    mit zus�tzlicher Hashfunktion <math|h<rprime|''><around*|(|k|)>>, deren
    Wert teilerfremd zu <math|h<rprime|'><around*|(|k|)>> sein muss.

    Wenn <math|m> Primzahl: <math|h<rprime|'><around*|(|k|)>=k mod m>
    (Divisionsmethode), <math|h<rprime|''><around*|(|k|)>=1+<around*|(|k mod
    <around*|(|m-1|)>|)>> erf�llen diese Bedingung.
  </description>

  <subsection|Suchb�ume>

  <big-table|<block*|<tformat|<table|<row|<cell|<strong|Datenstruktur>>|<cell|<strong|Operation>>|<cell|<strong|Best
  Case>>|<cell|<strong|Average Case>>|<cell|<strong|Worst
  Case>>>|<row|<cell|Bin�rer Suchbaum>|<cell|Search>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>> [balanciert]>|<cell|<math|O<around*|(|n|)>>>>|<row|<cell|>|<cell|Insert>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>> [balanciert]>|<cell|<math|O<around*|(|n|)>>>>|<row|<cell|>|<cell|Delete>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>> [balanciert]>|<cell|<math|O<around*|(|n|)>>>>|<row|Rot-Schwarz-Baum|<cell|Search>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>>>|<cell|<math|O<around*|(|lg n|)>>>>|<row|<cell|>|<cell|Insert>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>>>|<cell|<math|O<around*|(|lg n|)>>>>|<row|<cell|>|<cell|Delete>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>>>|<cell|<math|O<around*|(|lg n|)>>>>|<row|<cell|B-Baum>|<cell|Search>|<cell|>|<cell|<math|O<around*|(|lg
  m\<cdot\>lg n|)>>>|<cell|>>|<row|<cell|(max. <math|m>
  Eintr�ge/Knoten)>|<cell|Insert>|<cell|>|<cell|>|<cell|<math|O<around*|(|m\<cdot\>lg
  n|)>>>>|<row|<cell|>|<cell|Delete>|<cell|>|<cell|>|<cell|<math|O<around*|(|m\<cdot\>lg
  n|)>>>>>>>|>

  <subsection|Graphenalgorithmen>

  <big-table|<block*|<tformat|<cwith|3|3|1|3|cell-bborder|1pt>|<cwith|7|7|1|3|cell-bborder|1pt>|<table|<row|<cell|Tiefensuche>|<cell|<math|\<Theta\><around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|Topologische
  Sortierung>|<cell|<math|\<Theta\><around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|benutzt
  Tiefensuche>>|<row|<cell|Breitensuche>|<cell|<math|O<around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|Bellman-Ford>|<cell|<math|O<around*|(|<around*|\||V|\|>\<cdot\><around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|DAG_SHORTEST_PATHS>|<cell|<math|\<Theta\><around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|benutzt
  top. Sortierung>>|<row|<cell|Dijkstra mit bin�rem
  Min-Heap>|<cell|<math|O<around*|(|<around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>\<cdot\>lg<around*|\||V|\|>|)>>>|<cell|>>|<row|<cell|Dijkstra
  mit Fibonacci-Heap>|<cell|<math|O<around*|(|<around*|\||V|\|>\<cdot\>lg<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|MST-Kruskal>|<cell|<math|O<around*|(|<around*|\||E|\|>\<cdot\>lg<around*|\||V|\|>|)>>>|<cell|>>|<row|<cell|MST-Prim>|<cell|<math|O<around*|(|<around*|\||E|\|>\<cdot\>lg<around*|\||V|\|>|)>>>|<cell|mit
  bin�rem Min-Heap>>>>>|Laufzeiten von Graphenalgorithmen>

  In <em|zusammenh�ngenden> Graphen laufen Tiefensuche, Breitensuche etc. in
  <math|O<around*|(|<around*|\||E|\|>|)>>, da f�r die Anzahl der Kanten gilt
  <math|<around*|\||E|\|>\<geqslant\><around*|\||V|\|>+1>, somit
  <math|<around*|\||V|\|>\<in\>O<around*|(|<around*|\||E|\|>|)>>.

  <paragraph|Algorithmus von Kruskal>

  Benutzt Union-Find-Datenstrukturen (Strukturen zur Verwaltung disjunkter
  Mengen), um den MST aufzubauen: Zu Anfang wird f�r jeden Knoten eine eigene
  Komponente erzeugt (<math|n> mal MAKE_SET), dann wird in aufsteigender
  Reihenfolge der Kantengewichte jede Kante, die zwei Knoten aus
  unterschiedlichen Mengen verbindet, zum MST hinzugef�gt. Diese Mengen
  werden dann vereinigt.

  <strong|Vorteile:> Gut f�r Graphen mit <math|<around*|\||E|\|>\<in\>O<around*|(|<around*|\||V|\|>|)>>

  <paragraph|Algorithmus von Prim -- MST von einem Knoten aus bilden>

  Benutzt eine Priorit�tswarteschlange, in der die Knoten des Graphen
  gespeichert sind. Der Schl�ssel ist dabei die minimale Distanz zum
  aktuellen MST. In jedem Schritt wird die Kante zum Knoten mit minimaler
  Distanz zum MST in den Spannbaum eingef�gt.

  <strong|Vorteile:> Gut f�r Graphen mit vielen Kanten, asymptotisch gut

  <subsection|Zeugs>

  <subsubsection|Logarithmengesetze>

  <\itemize>
    <item><math|log<rsub|a> <around*|(|x\<cdot\>y|)>= log<rsub|a> x
    \<noplus\>+ log<rsub|a> y>

    <item><math|log<rsub|a><frac|x|y>=log<rsub|a> x- log<rsub|a> y>

    <item><math|log<rsub|a> x<rsup|r>=r\<cdot\>log<rsub|a>x>

    <item><math|log<rsub|b> r=<frac|log<rsub|a> r|log<rsub|a >b>>

    <item><math|log<rsub|x> y = <frac|1|log<rsub|y> x>>
  </itemize>

  <subsubsection|Dynamische Programmierung>

  Zwei Ans�tze:

  <\description>
    <item*|Bottom-Up-Methode>Kleinste Teilprobleme zuerst l�sen, Ergebnisse
    in Tabelle speichern. Beim L�sen eines Teilproblems stehen die L�sungen
    aller Unterprobleme zur Verf�gung.

    <item*|Top-Down-Memoisation>Problem rekursiv l�sen, dabei jedoch
    Zwischenergebnisse in Tabelle speichern und vor dem L�sen eines
    Teilproblems nachschauen, ob das Zwischenergebnis schon einmal
    vorberechnet wurde.
  </description>
</body>

<\initial>
  <\collection>
    <associate|language|german>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2.2|2>>
    <associate|auto-11|<tuple|4|2>>
    <associate|auto-12|<tuple|2.3|2>>
    <associate|auto-13|<tuple|5|2>>
    <associate|auto-14|<tuple|2.3.0.1|2>>
    <associate|auto-15|<tuple|6|2>>
    <associate|auto-16|<tuple|2.3.1|2>>
    <associate|auto-17|<tuple|2.3.2|?>>
    <associate|auto-18|<tuple|2.4|?>>
    <associate|auto-19|<tuple|7|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|2.5|?>>
    <associate|auto-21|<tuple|8|?>>
    <associate|auto-22|<tuple|2.5.0.1|?>>
    <associate|auto-23|<tuple|2.5.0.2|?>>
    <associate|auto-24|<tuple|2.6|?>>
    <associate|auto-25|<tuple|2.6.1|?>>
    <associate|auto-26|<tuple|2.6.2|?>>
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|1.2|1>>
    <associate|auto-5|<tuple|1.2.1|1>>
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|2|1>>
    <associate|auto-8|<tuple|2.1|1>>
    <associate|auto-9|<tuple|3|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|table>
      <tuple|normal|�bersicht der Sortierverfahren.
      <with|mode|<quote|math>|n> = Anzahl zu sortierender Elemente,
      <with|mode|<quote|math>|k> = Anzahl diskreter Werte, die von einem
      Schl�ssel (Countingsort) bzw. einer Stelle des Schl�ssels (Radixsort)
      angenommen werden k�nnen, <with|mode|<quote|math>|d> = Anzahl Stellen
      des Schl�ssels.|<pageref|auto-3>>

      <tuple|normal|Darstellungsm�glichkeiten von Graphen|<pageref|auto-6>>

      <tuple|normal|Laufzeiten von Heap-Operationen|<pageref|auto-9>>

      <tuple|normal|Laufzeiten von Feldoperationen.
      Select(<with|mode|<quote|math>|k>) w�hlt das Element mit Rang
      <with|mode|<quote|math>|k> aus (Quickselect!)|<pageref|auto-11>>

      <tuple|normal|Laufzeiten von Hashoperationen mit
      Verkettung|<pageref|auto-13>>

      <tuple|normal|Laufzeiten von Hashoperationen mit offener Adressierung.
      Es wird angenommen, dass nach jedem Schl�ssel mit gleicher
      Wahrscheinlichkeit gesucht wird.|<pageref|auto-14>>

      <tuple|normal||<pageref|auto-18>>

      <tuple|normal|Laufzeiten von Graphenalgorithmen|<pageref|auto-20>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sortieren>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|�bersicht Sortieralgorithmen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1.5fn>|Graphen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|3fn>|Darstellung
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Laufzeiten>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Heaps <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1.5fn>|Felder
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1.5fn>|Hashtabellen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|3fn>|Hashfunktionen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|3fn>|Offene Adressierung
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|1.5fn>|Suchb�ume
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      <with|par-left|<quote|1.5fn>|Graphenalgorithmen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|6fn>|Algorithmus von Kruskal
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.15fn>>

      <with|par-left|<quote|6fn>|Algorithmus von Prim -- MST von einem Knoten
      aus bilden <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22><vspace|0.15fn>>

      <with|par-left|<quote|1.5fn>|Zeugs <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|3fn>|Logarithmengesetze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|3fn>|Dynamische Programmierung
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>>
    </associate>
  </collection>
</auxiliary>