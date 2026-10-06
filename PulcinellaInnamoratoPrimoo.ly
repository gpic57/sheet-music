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
  des8^.\) _\markup{\dynamic ppp \italic "subito"} \autoBeamOff <c aes>^. <bes f>^. <aes ees>^.|
  <g des>^. <f c>^. <ees bes>^. <des aes>^.|
  \autoBeamOn c8^. c'^. 
  \ottava #0 
  r8 f,^.|
  r8 e^. r ees^.|
  d8^. aes'^. r _\markup{\dynamic ppp \italic "e deciso"} aes,^>|
  g16^. aes^. bes^.  c^. des!^. _\< ees^. f^. g^.|
  \mark #2 
  aes8\! _\markup{\dynamic ff \italic "molto"} r bes,8^. g^. \bar "||"
  \key ees \major
  \break
  %rigo up 2.6
  c8^! _\markup{\italic "staccato e brillante"} aes^! f^! d^!|
  bes'8^! g^! g^! ees^!|
  aes8^! f^! d^! bes^!|
  ees^! r16. \ottava #1 bes''32^>^\(bes,8..^>[\) bes'32^>^\(]|
  c,8..^>[\) bes'32^>^\(]^\(d,8..^>[\) bes'32^>^\(]|ees,8..\)[
  \ottava #0 
  ees32^>]^\( g,8.. c32^>^\(  |
  \break
  %rigo up 2.7
  f,8..\) aes32^>^\( d,8..\) bes'32^>^\(|
  ees,8^.\) r8 r4|
  R1*2/4 _\markup{\bold \fontsize #5 1}|
  R1*2/4 _\markup{\bold \fontsize #5 2}|
  R1*2/4 _\markup{\bold \fontsize #5 3}|
  r4 bes'8^! _\markup{\dynamic ff \italic "staccato e brillante"} g^!|
  ces8^! aes^! des^! aes^!|
  ges'8^! des^! bes^! ges^!|
  \break
  %rigo up 2.8
  ces8^! aes^! f^! des^!|
  ges8^! r16. 
  \ottava #1 
  des''32^>^\(des,8..^>[\) des'32^>]^\(|
  ees,8..\)[ des'32^>]^\(|
  f,8..\) des'32^>^\(|
  g,8..\) \ottava #0 ges32^>\(|
  bes,8..\) ees32^>\(|
  aes,8..\) ces32^>\(|
  f,8..\) des'32^>\(|
  ges,8\) r r4|
  \break
  %rigo up 2.9
  \mark #3 des2 _\markup{\dynamic p \italic "espressivo"}|
  des2|
  \acciaccatura {ces16 des} ces8^\([ bes ces des!]|
  bes2\)|
  bes2|
  bes2|
  \acciaccatura {aes16 bes} aes8[_\( g? aes bes]|
  g4\) bes^\(_\<|
  \break
  %rigo up 2.10
  c4 d ees2\)|
  d4\!^\( c|
  bes8\) _\markup{\italic "con eleganza"} d^\( ees f|
  fis8 g\) ees'8^\( c|
  bes8 aes\) c,^\( ees|
  f4 g|
  ees2\)|
  \break
  %rigo up 2.11
  
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
    des!4\)~ des16 ees\( f g|
    aes8-!\) \autoBeamOff bes^. aes^. g^.|
    f8^. ees^. des^. c^.|
    \autoBeamOn f8^. aes^. ees^. des^.|
    c8^. r r16 aes'^\( bes c|
    \break
    %rigo down 1.5
    des8\)-! \autoBeamOff ees^. des^. c^.|
    bes8^. aes^. g^. f^.|
    <g e>8^. r r f^.|
    r8 e^. r ees^.|
    f^. \autoBeamOn bes^. r8 \stemUp aes,8_>|
    \stemDown g16^. aes^. bes^. c^. des^. ees^. f^. g^.|
    aes8^. r ees-! bes-! \bar "||"
    \key ees \major
    \break
    %rigo down 2.6
    ees8^! c^! \stemUp bes_! f_!|
    \stemDown d'8^! bes^! c^! g^!|
    c^! aes^! \stemUp aes_! f_!|
    g8_! r \stemDown bes4^\( c d ees\) \stemUp g,_\(|
    \break
    %rigo down 2.7
    f4 aes g8\) r8 r4|
    R1*2/4*3|
    r4 \stemDown ees'8^! bes^!|
    ees^! ces^! f^! des^!|
    bes'8^! ges^! ees^! bes^!|
    \break
    %rigo down 2.8
    ees8^! ces^! ces^! aes^!|
    bes8^! r des4^!^\(|
    ees4 f|
    ges4\) bes,4^\(|
    \stemUp aes4 \stemDown ces|
    bes8\) r r4|
    \break
    %rigo down 2.9
    R1*2/4*8|
    R1*2/4*5|
    r4 \stemUp aes4~|
    aes4 bes4_(|
    g2\)|
    \break
    %rigo down 2.10
    
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