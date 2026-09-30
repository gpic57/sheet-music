\version "2.26.0"

\header {
  title = "Pulcinella innamorato Secondo"
  composer = "J. Burgmein"
}

\score {
<< % Apre Piano
  
   
 \new PianoStaff  
      \with { instrumentName = \markup{\italic "ALL." \super "tto"" VIVACE ASSAI" }
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
  <bes des,>8_. <f aes,> <g bes,>_. <ees des>_.|
  \mark #1
  <aes c,>8_. <ees aes,>_. <f aes,>_. <des aes>_.|
  <c aes>8_. <c aes>8_. <f aes,>_. <g bes,>_.|
  <aes c,>8_. <ees c>
  <<{c8^\( d|
  ees f g f| 
  ees8 <ees c g>8|
  }
  \\
  {c4_>|
  c4_> <d b>4|
  c8
  }
  >>
  r8 <ees des! g,>8_.|
  r8 <ees c aes>_. r <ees aes,>_.|
  
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key aes \major
    \time 2/4
    \relative c{
    %rigo down 1.1
    <ees aes,>8^. aes^. <ees aes,>8^. aes^.|
    <ees aes,>8^. aes^. <ees aes,>8^. aes^.|
    <ees aes,>8^. aes^. <ees aes,>8^. aes^.|
    <ees aes,>8^. aes^. <ees aes,>8^. aes^.|
    <ees aes,>8_. r aes,8_. r|
    \break
    %rigo down 1.2

      } %Chiude relative low
             
}%Chiude Staff low
>>%Fine Base Piano
  
 >> %Chiude Canto e Piano
 
 \layout {
 \set Score.rehearsalMarkFormatter = #format-mark-box-numbers
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
    indent = 4\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}