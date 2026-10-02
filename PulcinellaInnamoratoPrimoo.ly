\version "2.26.0"

\header {
  title = "Pulcinella innamorato Primo"
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
  R1*2/4 _\markup{\bold \fontsize #5 "1"}|
  R1*2/4 _\markup{\bold \fontsize #5 "2"}|
  \ottava #1 aes'''16^. _\markup{ \dynamic pp \italic "leggiere e molto staccate"}  g^. f^. ees^. des^. c^. des^. ees^.|
  f16^. ees^. des^. c^. bes^. aes^. bes^. c^.|
  bes8^! r ees,_! r|
  ees'^! r8 ees'^! r|
  \break
  %rigo up 1.2
  c16^. _\< bes^. aes^. g^. f^. ees^. f^. g^.|
  f16^. ees^. des^. c^. bes^. aes^. bes^. c^.|
  bes8^! r f'^! r|
  ees8^! r ees'^! r|
  aes,16^.\! _\markup {\dynamic pp \italic "subito"} g^. f^. ees^. des^. ees^. f^. aes^.|
  g8^! r g'^! r \ottava #0 |
  \break
  %rigo up 1.3
  des,16^._\> c^. bes^. aes^. g^. aes^. bes^. c^.|
  aes8^.  \mark #1 r8 \! \ottava #1 aes'8^._\f f^.|
  ees16^. g^. ees^. c^. des^. f^. des^. bes^.|
  ees8 ^. aes,^. aes'^. f^.|
  ees16^. g^. ees^. c^.b^. d^. b^. g^. \ottava #0 |
  c8^> bes16^\( aes g f g ees|
  aes8^.\) aes4^> aes8^>^\(
  \break
  %rigo up 1.4
  aes16\) g^\( f g ees8^.\) ees^\(|
  aes8^.\) _\< aes^.^\( f'^.\) f^.|
  f16^\( ees\)\! f,^\( g\)|
  ees16^.^\( ees'_\< f g|
  aes8-!\)  \autoBeamOff \! <g des>^.  <f c>^._\markup{\dynamic ppp \italic "subito"} <ees bes>^.|
  <des aes>8^. <c g>^. <bes f>^. <aes ees>^.|
  \autoBeamOn g16^. _\markup{\italic "molto cres."} aes^. bes^. c^. \ottava #1 
  des^. ees^. f^. g^._\<|
  aes16^. bes^. c^. des^.\! ees^. _\f _\< f,^.^\( g^. aes^.\!|
  \break
  %rigo up 1.5
  des8^.\) \autoBeamOff <c aes>^. <bes f>^. <aes ees>^.|
  <g des>^. <f c>^. <ees bes>^. <des aes>^.|
  \autoBeamOn c8^. c'^. 
  \ottava #0 
  r8 f,^.|
  r8 e^. r ees^.|
  d8^. aes'^. r aes,^>|
  g16^. aes^. bes^. c^. des!^. ees^. f^. g^.|
  \mark #2 aes8 r bes,8^. g^. \bar "||"
  \key ees \major
  \break
  %rigo up 2.6
   } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef treble
    \key aes \major 
    \time 2/4
    \relative c{
    %rigo down 1.1
    R1*2/4*6|
    \break
    %rigo down 1.2
    R1*2/4*4|
    f''2^\( ees\)|
    \break
    %rigo down 1.3
    f4^\( ees8 des|
    c8\) r aes'^. f^.|
    ees16^. g^. ees^. c^. des^. f^. des^. bes^.|
    ees8 ^. aes,^. aes'^. f^.|
    ees16^. g^. ees^. c^.b^. d^. b^. g^.|
    c4^> des!~|des8 r r4|
    \break
    %rigo down 1.4
    R1*2/4|
    r4 d4^\(|
    des!4\)
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