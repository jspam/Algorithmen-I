<TeXmacs|1.0.7.10>

<style|generic>

<\body>
  <section|Sortieren>

  <subsection|Übersicht Sortieralgorithmen>

  <big-table|<block*|<tformat|<cwith|5|5|2|4|cell-row-span|1>|<cwith|5|5|2|4|cell-col-span|3>|<cwith|8|8|2|4|cell-row-span|1>|<cwith|8|8|2|4|cell-col-span|3>|<cwith|2|2|3|4|cell-row-span|1>|<cwith|2|2|3|4|cell-col-span|2>|<cwith|3|3|3|4|cell-row-span|1>|<cwith|3|3|3|4|cell-col-span|2>|<cwith|4|4|3|4|cell-row-span|1>|<cwith|4|4|3|4|cell-col-span|2>|<cwith|6|6|2|3|cell-row-span|1>|<cwith|6|6|2|3|cell-col-span|2>|<cwith|9|9|2|4|cell-row-span|1>|<cwith|9|9|2|4|cell-col-span|3>|<cwith|7|7|2|4|cell-row-span|1>|<cwith|7|7|2|4|cell-col-span|3>|<table|<row|<cell|<strong|Name>>|<cell|<strong|Best
  Case>>|<cell|<strong|Average Case>>|<cell|<strong|Worst
  Case>>|<cell|<strong|Stabil?>>|<cell|<strong|In-Place?>>|<cell|<strong|Vergleich?>>>|<row|<cell|Bubblesort>|<cell|<math|O<around*|(|n|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|ja>|<cell|ja>|<cell|ja>>|<row|<cell|Insertionsort>|<cell|<math|\<Theta\><around*|(|n|)>>>|<cell|<math|\<Theta\><around*|(|n<rsup|2>|)>>>|<cell|<math|\<Theta\><around*|(|n<rsup|2>|)>>>|<cell|ja>|<cell|ja>|<cell|ja>>|<row|<cell|Selectionsort>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|<math|O<around*|(|n<rsup|2>|)>>>|<cell|nein>|<cell|ja>|<cell|ja>>|<row|<cell|Mergesort>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|>|<cell|>|<cell|ja>|<cell|nein>|<cell|ja>>|<row|<cell|Quicksort>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|<math|\<Theta\><around*|(|n<rsup|2>|)>>>|<cell|nein>|<cell|nein
  (<math|+log n>)>|<cell|ja>>|<row|<cell|Heapsort>|<cell|<math|\<Theta\><around*|(|n\<cdot\>lg
  n|)>>>|<cell|>|<cell|>|<cell|nein>|<cell|ja>|<cell|ja>>|<row|<cell|Radixsort>|<cell|<math|\<Theta\><around*|(|d<around*|(|n+k|)>|)>>>|<cell|<math|\<Theta\><around*|(|d<around*|(|n+k|)>|)>>>|<cell|<math|\<Theta\><around*|(|d<around*|(|n+k|)>|)>>>|<cell|ja>|<cell|nein
  (<math|+n>)>|<cell|nein>>|<row|<cell|Countingsort>|<cell|<math|\<Theta\><around*|(|n+k|)>>>|<cell|>|<cell|>|<cell|ja>|<cell|nein
  (<math|+<around*|(|n+k|)>>)>|<cell|nein>>>>>|Übersicht der
  Sortierverfahren. <math|n> = Anzahl zu sortierender Elemente, <math|k> =
  Anzahl diskreter Werte, die von einem Schlüssel (Countingsort) bzw. einer
  Stelle des Schlüssels (Radixsort) angenommen werden können, <math|d> =
  Anzahl Stellen des Schlüssels.>

  In der Praxis ist Quicksort meistens schneller als Heapsort, benötigt aber
  asymptotisch mehr zusätzlichen Speicher.

  <subsection|Graphen>

  <subsubsection|Darstellung>

  <big-table|<block|<tformat|<table|<row|<cell|>|<cell|Vorteile>|<cell|Nachteile>>|<row|<cell|Adjazenzliste>|<cell|kompakt,
  Kantenoperationen>|<cell|Kantensuche, Cache-Misses>>|<row|<cell|Adjazenzmatrix>|<cell|Operationen
  in <math|O<around*|(|1|)>>>|<cell|Speicherverbrauch,
  Navigation>>|<row|<cell|Adjazenzfeld>|<cell|Platzsparend,
  Navigation>|<cell|Änderungen aufwendig>>>>>|Darstellungsmöglichkeiten von
  Graphen>

  <section|Laufzeiten>

  <subsection|Heaps>

  <big-table|<block*|<tformat|<cwith|3|3|1|2|cell-bborder|1pt>|<table|<row|<cell|GetMax/Min>|<cell|<math|O<around*|(|1|)>>>>|<row|<cell|ExtractMax/Min>|<cell|<math|O<around*|(|lg
  n|)>>>>|<row|<cell|Insert>|<cell|<math|O<around*|(|lg
  n|)>>>>|<row|<cell|Erzeugen durch Einfügen>|<cell|<math|\<Theta\><around*|(|n*lg
  n|)>>>>|<row|<cell|Erzeugen durch \RHeapify``>|<cell|<math|O<around*|(|n|)>>>>>>>|Laufzeiten
  von Heap-Operationen>

  <subsection|Felder>

  <big-table|<block*|<tformat|<table|<row|<cell|<strong|Operation>>|<cell|<strong|Liste
  (doppelt)>>|<cell|<strong|Liste (einfach)>>|<cell|<strong|Stack>>|<cell|<strong|Queue>>|<cell|<strong|Array>>|<cell|<strong|unbeschr.
  Feld>>>|<row|<cell|Search>|<cell|<with|mode|math|O<around*|(|n|)>>>|<cell|<with|mode|math|O<around*|(|n|)>>>|<cell|>|<cell|>|<cell|<math|O<around*|(|n|)>>>|<cell|<math|O<around*|(|n|)>>>>|<row|<cell|Select(<math|k>)>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|erwartet
  <math|O<around*|(|n|)>>>|<cell|erwartet
  <math|O<around*|(|n|)>>>>|<row|<cell|Insert-Front>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Delete>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|n|)>>>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|Push/Pop>|<cell|>|<cell|>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>|<cell|amortisiert
  <math|O<around*|(|1|)>>>>|<row|<cell|Enqueue/Dequeue>|<cell|>|<cell|>|<cell|>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>>|<row|<cell|isEmpty>|<cell|<math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|<with|mode|math|O<around*|(|1|)>>>|<cell|>|<cell|>>>>>|Laufzeiten
  von Feldoperationen. Select(<math|k>) wählt das Element mit Rang <math|k>
  aus (Quickselect!)>

  <subsection|Hashtabellen>

  Falls

  <\itemize>
    <item>einfaches gleichmässiges Hashing verwendet wird

    <item>eine doppelt verkettete Liste zur Kollisionsauflösung verwendet
    wird

    <item>die Anzahl der Slots proportional zur Anzahl der gespeicherten
    Elemente ist
  </itemize>

  dann ist die Anzahl der Kollisionen <em|erwartet> in
  <math|O<around*|(|1|)>> und die Laufzeiten betragen:

  <big-table|<block*|<tformat|<table|<row|<cell|Operation>|<cell|Best
  Case>|<cell|Average Case>|<cell|Worst Case>>|<row|<cell|SEARCH>|<cell|<math|O<around*|(|1|)>>>|<cell|<math|O<around*|(|1|)>>>|<cell|<math|\<Theta\><around*|(|n|)>>>>|<row|<cell|INSERT>|<cell|>|<cell|<math|O<around*|(|1|)>>>|<cell|>>|<row|<cell|DELETE>|<cell|>|<cell|<math|O<around*|(|1|)>>>|<cell|>>>>>|Laufzeiten
  von Hashoperationen>

  <subsection|Suchbäume>

  <big-table|<block*|<tformat|<table|<row|<cell|<strong|Datenstruktur>>|<cell|<strong|Operation>>|<cell|<strong|Best
  Case>>|<cell|<strong|Average Case>>|<cell|<strong|Worst
  Case>>>|<row|<cell|Binärer Suchbaum>|<cell|Search>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>> [balanciert]>|<cell|<math|O<around*|(|n|)>>>>|<row|<cell|>|<cell|Insert>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>> [balanciert]>|<cell|<math|O<around*|(|n|)>>>>|<row|<cell|>|<cell|Delete>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>> [balanciert]>|<cell|<math|O<around*|(|n|)>>>>|<row|Rot-Schwarz-Baum|<cell|Search>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>>>|<cell|<math|O<around*|(|lg n|)>>>>|<row|<cell|>|<cell|Insert>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>>>|<cell|<math|O<around*|(|lg n|)>>>>|<row|<cell|>|<cell|Delete>|<cell|>|<cell|<math|O<around*|(|lg
  n|)>>>|<cell|<math|O<around*|(|lg n|)>>>>|<row|<cell|B-Baum>|<cell|Search>|<cell|>|<cell|<math|O<around*|(|lg
  m\<cdot\>lg n|)>>>|<cell|>>|<row|<cell|(max. <math|m>
  Einträge/Knoten)>|<cell|Insert>|<cell|>|<cell|>|<cell|<math|O<around*|(|m\<cdot\>lg
  n|)>>>>|<row|<cell|>|<cell|Delete>|<cell|>|<cell|>|<cell|<math|O<around*|(|m\<cdot\>lg
  n|)>>>>>>>|>

  <subsection|Graphenalgorithmen>

  <big-table|<block*|<tformat|<cwith|3|3|1|3|cell-bborder|1pt>|<cwith|7|7|1|3|cell-bborder|1pt>|<table|<row|<cell|Tiefensuche>|<cell|<math|\<Theta\><around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|Topologische
  Sortierung>|<cell|<math|\<Theta\><around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|benutzt
  Tiefensuche>>|<row|<cell|Breitensuche>|<cell|<math|O<around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|Bellman-Ford>|<cell|<math|O<around*|(|<around*|\||V|\|>\<cdot\><around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|DAG_SHORTEST_PATHS>|<cell|<math|\<Theta\><around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|benutzt
  top. Sortierung>>|<row|<cell|Dijkstra mit binärem
  Min-Heap>|<cell|<math|O<around*|(|<around*|(|<around*|\||V|\|>+<around*|\||E|\|>|)>\<cdot\>lg<around*|\||V|\|>|)>>>|<cell|>>|<row|<cell|Dijkstra
  mit Fibonacci-Heap>|<cell|<math|O<around*|(|<around*|\||V|\|>\<cdot\>lg<around*|\||V|\|>+<around*|\||E|\|>|)>>>|<cell|>>|<row|<cell|MST-Kruskal>|<cell|<math|O<around*|(|<around*|\||E|\|>\<cdot\>lg<around*|\||V|\|>|)>>>|<cell|>>|<row|<cell|MST-Prim>|<cell|<math|O<around*|(|<around*|\||E|\|>\<cdot\>lg<around*|\||V|\|>|)>>>|<cell|mit
  binärem Min-Heap>>>>>|Laufzeiten von Graphenalgorithmen>

  In <em|zusammenhängenden> Graphen laufen Tiefensuche, Breitensuche etc. in
  <math|O<around*|(|<around*|\||E|\|>|)>>, da für die Anzahl der Kanten gilt
  <math|<around*|\||E|\|>\<geqslant\><around*|\||V|\|>+1>, somit
  <math|<around*|\||V|\|>\<in\>O<around*|(|<around*|\||E|\|>|)>>.

  <paragraph|Algorithmus von Kruskal>

  Benutzt Union-Find-Datenstrukturen (Strukturen zur Verwaltung disjunkter
  Mengen), um den MST aufzubauen: Zu Anfang wird für jeden Knoten eine eigene
  Komponente erzeugt (<math|n> mal MAKE_SET), dann wird in aufsteigender
  Reihenfolge der Kantengewichte jede Kante, die zwei Knoten aus
  unterschiedlichen Mengen verbindet, zum MST hinzugefügt. Diese Mengen
  werden dann vereinigt.

  <strong|Vorteile:> Gut für Graphen mit <math|<around*|\||E|\|>\<in\>O<around*|(|<around*|\||V|\|>|)>>

  <paragraph|Algorithmus von Prim -- MST von einem Knoten aus bilden>

  Benutzt eine Prioritätswarteschlange, in der die Knoten des Graphen
  gespeichert sind. Der Schlüssel ist dabei die minimale Distanz zum
  aktuellen MST. In jedem Schritt wird die Kante zum Knoten mit minimaler
  Distanz zum MST in den Spannbaum eingefügt.

  <strong|Vorteile:> Gut für Graphen mit vielen Kanten, asymptotisch gut

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

  Zwei Ansätze:

  <\description>
    <item*|Bottom-Up-Methode>Kleinste Teilprobleme zuerst lösen, Ergebnisse
    in Tabelle speichern. Beim Lösen eines Teilproblems stehen die Lösungen
    aller Unterprobleme zur Verfügung.

    <item*|Top-Down-Memoisation>Problem rekursiv lösen, dabei jedoch
    Zwischenergebnisse in Tabelle speichern und vor dem Lösen eines
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
    <associate|auto-14|<tuple|2.4|2>>
    <associate|auto-15|<tuple|6|2>>
    <associate|auto-16|<tuple|2.5|2>>
    <associate|auto-17|<tuple|7|?>>
    <associate|auto-18|<tuple|2.5.0.1|?>>
    <associate|auto-19|<tuple|2.5.0.2|?>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|2.6|?>>
    <associate|auto-21|<tuple|2.6.1|?>>
    <associate|auto-22|<tuple|2.6.2|?>>
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
      <tuple|normal|Übersicht der Sortierverfahren.
      <with|mode|<quote|math>|n> = Anzahl zu sortierender Elemente,
      <with|mode|<quote|math>|k> = Anzahl diskreter Werte, die von einem
      Schlüssel (Countingsort) bzw. einer Stelle des Schlüssels (Radixsort)
      angenommen werden können, <with|mode|<quote|math>|d> = Anzahl Stellen
      des Schlüssels.|<pageref|auto-3>>

      <tuple|normal|Laufzeiten von Heap-Operationen|<pageref|auto-6>>

      <tuple|normal|Laufzeiten von Feldoperationen|<pageref|auto-8>>

      <tuple|normal||<pageref|auto-10>>

      <tuple|normal||<pageref|auto-12>>

      <tuple|normal||<pageref|auto-14>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Sortieren>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Übersicht Sortieralgorithmen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Laufzeiten>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <with|par-left|<quote|1.5fn>|Heaps <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|1.5fn>|Felder
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1.5fn>|Hashtabellen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1.5fn>|Suchbäume
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1.5fn>|Graphenalgorithmen
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1.5fn>|Zeugs <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|3fn>|Logarithmengesetze
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>
    </associate>
  </collection>
</auxiliary>