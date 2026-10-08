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
  ees32^>]^\( g,8..\) c32^>^\(  |
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
  \stemDown ees'4^> c^>|
  aes4^> g8^\(f|
  ees4 d|
  c2\)|
  \mark #4 \ottava #1 c''16^. _\markup{\italic "brillante"} bes^. aes^. g^. f^. ees^. f^. g^.|
  aes16^. g^. f^. ees^. d^. c^. b^.  \ottava #0 c^. |
  \break
  %rigo up 2.12
  d16^. c^. bes^. aes^. g^. f^. ees^. d^.|
  c8^. r r4|
  g''^>_\f ees^>|
  c^> bes8^\( aes|
  g4 f|
  ees2\)|
  ees'16 _\markup{\italic "brillante"} d^. c^. bes^. aes^. g^. aes^. bes^.|
  \break
  %rigo up 3.13
  c16^. bes^. aes^. g^. f^. ees^. d^. ees^.|
  f16^. ees^. d^. c^. \stemUp bes^. aes^. g^. f^.|
  ees8_. r r4|
  \stemDown bes'16^._\p c^. des^. ees^. f8^. aes^.|
  g8^. r ees'^. r|
  des,16^. ees^. f^. g^. aes8^. des^.|
  bes8^. ees^. r _\pp e^.|
  \break
  %rigo up 3.14
  r8 eis^. r f!^.|
  r8 \ottava #1 
  g8^. r g^.|
  r8 c^. r bes^. \bar "||"
  \key aes \major
  \mark #5
  aes8^. r8 r4|
  aes16^. _\markup{\dynamic pp \italic "leggiere"} g^. f^. ees^. des^. c^. des^. ees^.|
  f16^. ees^. des^. c^. bes^. aes^. bes^. c^.|
  \stemUp bes8_! r ees,_! r|
  \stemDown ees'8-! r ees'-! r|
  \break
  %rigo up 3.15
  c16^. _\< bes^. aes^. g^. f^. ees^. f^. g^.|
  f16^. ees^. des^. c^. bes^. aes^. bes^. c^.|
  bes8-! r f'-! r|
  ees-! r ees'-! r|
  aes,16^. \! _\markup{\dynamic pp \italic "subito"} g^. f^. ees^. des^. ees^. f^. aes^.|
  g8^! r g'^! \ottava #0 r8|
  des,16^. _\> c^. bes^. aes^. g^. aes^. bes^. c^.|
  \break
  %rigo up 3.16
  aes8^.  r \! \ottava #1 
  aes'8^. _\f f^.|
  ees16^. g^. ees^. c^. des^. f^. des^. bes^.|
  ees8^. aes,^. aes'^. f^.|
  ees16^. g^. ees^. c^. b^. d^. b^. g^. \ottava #0 |
  c8^> bes!16^\( _\< aes g f g ees\)|
  aes8^. aes4^> \! aes8^>^~|
  aes16 g^\( f g ees8^.\) ees8^\(|
  \break
  %rigo up 3.17
  aes8^.\) _\< aes^\( f'8^.\) f^.|
  f16^\( ees\) \! f,^\( g\) ees^. _\< ees'^\( f g|
  \autoBeamOff aes8^!\)\!  _\markup{\dynamic ppp \italic "subito"}<g des>^. <f c>^. <ees bes>^.
  <des aes>^. <c g>^. <bes f>^. <aes ees>^.|
  \autoBeamOn g16^._\markup{\italic "molto cres."} aes^. bes^. c^. des^. ees^. f^. _\< g^.
  \ottava #1
  aes16^. bes^. c^. des^. \f ees^. _\< aes,^\( bes c|
  \autoBeamOff des8-!\) \! _\markup{\dynamic ppp \italic "subito"} <c g>8^. <bes f>^. <aes ees>^.|
  \break
  %rigo up 3.18
  <g des>8^. <f c>^. <ees bes>^. <des aes>^.|
  c8^.[ c'^.] r8 f,^. |
  r8 e8^. r ees^.|
  d8^. bes^.\ottava #0 
  r8 d, _\markup{\italic "sempre" \dynamic pp}|
  des16^.[ c^. des^. ees^. ]f^. [g^. aes^. bes^.]|
  c16^\([ ees c aes\)] f8^.[ ees^.]|
  aes16^.[ c aes f]\) ees8^.[ des^.]|
  \break
  %rigo up 3.19
  \autoBeamOn c16^\( ees des c\)
  \crossStaff { f,8 ees}
  _\markup {\italic "m. s."}
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
    \break
    %rigo down 2.10
    R1*2/4*5|
    r4 \stemUp aes4~|
    aes4 bes4_\(|
    g2\)|
    \break
    %rigo down 2.11
    \stemDown ees'4^> ^\f c^>|
    \stemUp aes4_> g8_\( f|
    ees4 d|
    c2\)|
    R1*2/4*2|
    \break
    %rigo down 2.12
    R1*2/4*2|
    \stemDown g''4^> ees^>|
    c4^> \stemUp bes8_\( aes|
    g4 f|
    ees2\)|
    R1*2/4
    \break
    %rigo down 3.13
    R1*2/4*3|
    f2_\(|
    ees16_.\) f_. g_. aes_. \stemDown bes8^. ees^.|
    \stemUp f,2_\(|
    ees8_.\) r \stemDown <e'! d>4^\(|
    \break
    %rigo down  3.14
    <cis b>4 \stemUp <bes! aes!>|
    <gis f!>\) r8 \stemDown g'8^.|
    r8 c8^. r bes^. \bar "||"
    \key aes \major
    aes8^. r r4|
    R1*2/4*2|
    r8 <des, bes>^. r <ees des g,>^.|
    r8 <f ees aes,>^. r <g ees des>^.
    \break
    %rigo down 3.15
    <aes ees c>^. r r4|
    R1*2/4|
    r8 <ees bes g>8^. r <d! bes aes>^.|
    r8 <ees bes g>^. r <g ees bes>^.|
    f2^\(|
    ees\)|
    f4^\( ees8 des|
    \break
    %rigo down 3.16
    c8^.\) r aes'^. f^.|
    ees16^. g^. ees^. c^. des^. f^. des^. bes^.|
    ees8^. aes,^. aes'^. f^.|
    ees16^. g^. ees^. c^. b^. d^. b^. g^.|
    c4^> des^\)|
    c8\) r8 r4|
    R1*2/4|
    \break
    %rigo down 3.17
    r4 d^\(|
    des!4\)^~des16 ees^\( f g|
    \autoBeamOff aes8^!\) bes^.  aes^. g^.|
    f8^. ees^. des^. c^.|
    des8^.[ f^. ees^. des^.]|
    c8^. r8 r16 aes'^\([ bes c]|
    des8\)-! ees^. des^. c^.|
    \break
    %rigo down 3.18
    bes8^. aes^. g^. f^.|
    <g e>8^. r r f^.|
    r8 e r ees|
    d8^.[ bes'^.] r4|
    R1*2/4*3|
    \break
    %rigo down 3.19
    s8 s8 
    \stemDown
    \hide NoteHead
    \hide LedgerLineSpanner
    f8[ ees]
    
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