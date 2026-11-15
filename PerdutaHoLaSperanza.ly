\version "2.26.0"
\header {
  title = "Perduta ho la speranza"
  composer = "S. Donaudy"
}

\score {
 << % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = ""
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
    \clef treble
    \key bes \major 
    \time 3/4
    \tempo 4 = 110
    %rigo canto 1.1
    \partial 4 d4 ^\(^\markup{\italic "ANDANTINO"}^\pp|
    g2 a4 ^\markup{\italic "con sentimento"}|
    bes2 fis4|
    g2_\( ^\markup{\italic "cres."} ^\<a4|
    bes2 c4|
    d2 ees4\)\!|
    \break
    \
  }%Chiude relative Canto
 \addlyrics {
  Per -- du -- ta_ho la spe -- ran -- _ za in voi mi-

  } %Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key bes \major 
  \time 43/4
  \relative c' {
  %rigo up 1.1
  \partial 4 d4_\pp|
  <<{g2 a4|
  bes2 fis4|
  }
  \\
  {r4 d,2_-~|
  d4 d2
  }
  >>
   } %Chiude relative Up
}%Chiude New Staff Down
    \new Staff = "down" { 
    \clef bass
    \key bes \major
    \time 3/4
    \relative c{
    %rigo down 1.1
    c4
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
  %\Voice 
  %\remove "Slur_engraver"
    } 
    %indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}
