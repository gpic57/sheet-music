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
  \tempo 4=100
  \relative c' {
  %rigo up 1.1
  <aes c>8_. _\markup{\dynamic f \italic "brillante e stacc."}<c ees>_. <aes c>8_.<c ees>_.|
  <aes c>8_. _\> <c ees>_. <aes c>8_.<c ees>_.\!|
  <aes c>8_. _\markup{\dynamic pp \italic "subito"} <c ees>_. <aes c>8_.<c ees>_.\!|
  <aes c>8_. <c ees>_. <aes c>8_.<c ees>_.|
  <g' des>8_. <ees g,>_. r8 <f ees aes,>_.|
  \break
  %rigo up 1.2
  r8 <f eis a,>_. r8 <g eis bes>_.|
  <aes c,>_. _\<<c ees,>_.<aes c,>_.<c ees,>_.|
  <aes c,>_.<c ees,>_.<aes c,>_.<c ees,>_.|
  <g ees>_. <ees g,>_. <c aes>_.<d bes>_.|
  <ees g,>_. <g bes,>_. <ees g,>_. <g bes,>_.\!|
  <des'? f,>8_. _\markup{\dynamic pp \italic "subito"}<aes des,?>_. <des f,> <aes des,>_.|
  <c ees,>8_. <g c,>_.<c ees,>8_. <g c,>_.|
  \break
  %rigo up 1.3
  <bes des,>8_. _\><f aes,> <g bes,>_. <ees des>_.|
  \mark #1
  <aes c,>8_. <ees aes,>_.\! <f aes,>_. <des aes>_._\f|
  <c aes>8_. <c aes>8_. <f aes,>_. <g bes,>_.|
  <aes c,>8_. <ees c>
  <<{c8^\( d|
  ees f g f| 
  ees8 \)<ees c g>8|
  }
  \\
  {c4_>|
  c4_> <d b>4|
  c8
  }
  >>
  r8 <ees des! g,>8_.|
  r8 <ees c aes>_. r <ees aes,>_.|
  \break
  %rigo up 1.4
  r8 <f des aes>_. r <ees des g,>|
  r8_\< <ees aes,>_. r <f d aes>_.|
  r8 \!<f des aes>_. r <ees des g,>_.|
  <aes ees aes,>^^_\sf r8 r4 |
  R1*2/4 _\markup{\bold \fontsize #5 "1"}|
  g8_.[ _\markup{\dynamic pp \italic "cres."}<c a>_. <bes g>_.  <aes f>_. _\<]|
  <aes ees>8_. <bes ees, des>_. <aes ees c>_. \!r|
  \break
  %rigo up 1.5
  <des aes des,>8^^ _\sf r8 r4|
  R1*2/4 _\markup{\bold \fontsize #5 "1"}|
  r4 \pp <ces f,>8_. r|
  <bes e>8_. r8 <aes! e> r8 |
  <aes! des,>8 r8 r4|
  <ees des bes>2^> _\f _\< \mark #2  |
  <ees c aes>8_. \!  r r _\ff <ees bes g>_.
  \key ees \major
  \bar "||"
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
    <ees aes,>8^. r aes,8_. r|
    \break
    %rigo down 1.2
    aes8_. r aes_. r|
    <ees' aes>8_. aes^.<ees aes>8_. aes^.|
    <ees aes>8_. aes^. \stemDown <c, f,>^. f^.
    \stemUp bes,,_. bes'8_. bes,_. r|
    \stemDown ees'8^. r \stemUp ees,_. r|
    ees8_. ees'_. ees,_. r|
    ees8_. r \stemUp ees'^. r|
    \break
    %rigo down 1.3
    ees,8_. ees'_. ees,_. r|
    aes8_. r aes4_>|
    aes4_> \stemDown aes8^. aes'8^.|
    \stemUp aes,8_. r <f' f,>_. r|
    <g g,>8 r g,_. r|
    c4_\( bes|aes\) c4_\(|
    \break
    %rigo down 1.4
    g4 ees\)|
    c'4_\( ces|
    bes4 ees,\)|
    <c' c,>8_^ r8 r4|
    R1*2/4*3|
    \break
    %rigo down 1.5
    <f f,>8 r r4|
    R1*2/4|
    r4 \stemDown des'8^. r|
    c8^. r ces^. r|
    bes8^. r8 r4|
    \stemUp <ees, bes ees,>2_>|
    <ees aes>8_. r <ees ees,>_. r
    \key ees \major
    \bar "||"
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