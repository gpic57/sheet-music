\version "2.26.0"

\header {
  title = "Pianto antico"
  composer = "Alberto Gentili"
}

\score {
<< % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = \markup{\bold "CANTO"}
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble
    \key d \major 
    \time 4/4
    \tempo 4 = 88
    %rigo canto 1.1
    R1 ^\markup{\bold "Adagio."}|
    r2 \tupletUp \tuplet 3/2{fis8.\noBeam fis16 fis8\noBeam} fis\noBeam fis|

    
  }%Chiude relative Canto
  \addlyrics {
  _ L'albero a cui ten-
  de -- vi la par -- go -- let -- ta ma -- no, il ver -- de me -- lo gra -- no da' bei ver -- mi -- gli
  
   }%Chiude lyrics
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "PIANO" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key d \major 
  \time 4/4
  \relative c' {
  %rigo up 1.1
  <fis d fis,>4^( _\mf <a fis a,>4. <cis a cis,>4 <d bes d,>8
  <<{a2)\breathe <a d,>8[ d,] e fis|
  }
  \\
  {<cis a>8  <d bes>4 <e cis>8 \stemDown a,2|
  
  }
  >>
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key d \major
    \time 4/4
    \relative c{
  %rigo down 1.1
  <a f>2 a4 \stemUp d|
  <<{\stemDown f!4 s4\breathe \stemUp fis2 }
  \\
  {s4 a,4 a4 a4}
  \\
  {\stemDown s2 d,_\markup{\dynamic p \italic "rall."}}
  >>
      } %Chiude relative low
             
}%Chiude Staff low
>>%Fine Base Piano
  
 >> %Chiude Canto e Piano
 
 \layout {
    \context {
    \Staff \RemoveAllEmptyStaves
  }
  \context {
    \PianoStaff
    \consists "Span_stem_engraver"
  }
  \context{
  \Staff 
  \consists "Slur_engraver"
  \consists "Span_arpeggio_engraver"
    }
  \context{
  \Voice 
  \remove "Slur_engraver"
    } 
    indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}