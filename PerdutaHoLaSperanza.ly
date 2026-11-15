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
    \tempo 4 = 68
    %rigo canto 1.1
    c4
  }%Chiude relative Canto
 \addlyrics {
  hghghg
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
  c4
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
