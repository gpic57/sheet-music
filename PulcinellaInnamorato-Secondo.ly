\version "2.26.0"

\header {
  title = "Pulcinella innamorato Secondo"
  composer = "J. Burgmein"
}

\score {
<< % Apre Piano
  
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "Allegretto" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key aes \major 
  \time 2/4
  \relative c' {
  %rigo up 1.1
  <aes c>8_. _\markup{\dynamic f \italic "brillante e stacc."}<c ees>_. <aes c>8_.<c ees>_.|
  <aes c>8_. _\> <c ees>_. <aes c>8_.<c ees>_.\!|
  <aes c>8_. _\markup{\dynamic pp \italic "subito"} <c ees>_. <aes c>8_.<c ees>_.\!|
  <aes c>8_. <c ees>_. <aes c>8_.<c ees>_.|
  <g' des>8_. <ees g,>_. r8 <f ees aes,>_.|
  \break
  %rigo up 1.2

    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key aes \major
    \time 2/4
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
    indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}