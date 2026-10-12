\version "2.26.0"
\header {
  title = "Dimmi perché!"
  composer = "Alffredo Filipponi"
}

\score {
 << % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = "Tenore "
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble_8
    \key ees \major 
    \time 4/4
    \tempo 4 = 88
    %rigo canto 1.1
    R1*4/4|
    \autoBeamOff r2 ees'4^\( ees8. ees16|
    bes4. \breathe bes8 c c c c|
    \break
    %rigo canto 1.2
    g4 g8\)
  }%Chiude relative Canto
 \addlyrics {
  Dim -- mi per -- ché se a la campa -- gna_io
   }%Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "LENTO" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key ees \major 
  \time 4/4
  \relative c' {
  %rigo up 1.1
  <bes' ees, bes>1\arpeggio|
  <ees g, ees>4-_ _( <ees g, ees>4-_ <ees g, ees>4-_ <ees g, ees>4-_ )|
<ees g, ees>4-_ _( <ees g, ees>4-_ <ees g, ees>4-_ <ees g, ees>4-_ )|
\break

   } %Chiude relative Up
}%Chiude New Staff Down
    \new Staff = "down" { 
    \clef bass
    \key ees \major
    \time 4/4
    \relative c{
    <g' ees bes ees,>1\arpeggio|
    <bes ees,>1^(|
    <bes g>2) c|
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
    indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}
