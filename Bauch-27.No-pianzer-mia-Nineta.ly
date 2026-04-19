\version "2.24.4"
\paper {
  #(set-paper-size "tabloid")
}
\header {
  title = "27. No pianzer mia Nineta"
  subtitle = "Le canzonete dei nostri veci"
  composer = "Canzone popolare"
  arranger = "Luigi Bauch. Trascritto da: pic57"
}

\score {
<< % Apre Canto
\new Staff="Canto"
 
\relative c' {
  \clef treble  
  \key g \major 
  \time 2/4
  \tempo 4=108
  %rigo canto 1.1
  \partial 8 d'8 ^\markup{\bold "Moderato"}|
  d8. e16 fis8. g16|
  fis4 fis8. e16|
  c8. d16 e8.c16|
  d4~d8 r|
  \break
  %rigo canto 1.2
  \tupletUp \tuplet 3/2 {d8 d d} e8. b16
d4 c|
\tupletUp \tuplet 3/2 {e8 e e} fis8. c16|
d4 r8 d|
d8. e16 fis8. g16|
\break
%rigo canto 1.3
fis4 fis8. e16|
c8. d16 e8.c16| 
b4 b8 r|
\tupletUp \tuplet 3/2{d8 d d}  e8. b16|
\break
%rigo canto 1.4
d4 c|
\tupletUp \tuplet 3/2{e8 e e } fis8. c16|
d4 r8 d|
d4 g|
fis4~ fis8 e|
\break
%rigo canto 1.5
d8 e fis e|
d4. b8|
b8. d16 fis8. e16| e4 d8. b16|
\break
%rigo canto 1.6
d8.c16 b8. a16|
g4  r4
     }%Chiude relative Canto 
   \addlyrics { No pian zer mia Ni ne ta se va do mi li tar,
   va do ser vir la pa tria e spe ro de tor nar El gior no che ri
   tor no un fior te por ta rò _ su la tua bo ca
   be la un ba cio ti da rò. A di o Za ra
   Za ra be _ la quan do la pa tria cia ma se
   de ve tu ti_an dar.
   }%Chiude lyrics1
   
   
>> %Chiude Canto
 
  \layout {
    \context {
    \Staff \RemoveAllEmptyStaves
  }
  \context {
    \PianoStaff
    \consists "Span_stem_engraver"
  }
    indent = 3\cm
    short-indent = 1\cm
    ragged-right = ##f
    ragged-last = ##t
  }
  \midi { }
}