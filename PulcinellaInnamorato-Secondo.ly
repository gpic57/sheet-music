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
  ees8 \)<ees c g>8
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
  \break
  %rigo up 2.6
  r8 <ees c aes>_. r8 \clef bass <d bes f>^.|
  r8 <d bes g>^. r8 <ees c g>^.|
  r8 <ees c f,>^. r <d b aes>^.|
  r8 <ees bes g>^. r <ees bes>^.|
  r8 <ees c>^. r8 <bes aes>^.|
  r8 <ees bes>^. r8 <c g ees>^.|
  r8 <c aes ees> r8 <bes aes f>^.|
  \break
  %rigo up 2.7
  r8 <bes g ees>^. \autoBeamOn 
  \override TupletBracket.bracket-visibility = ##f
  \tupletUp \tuplet 3/2 {aes16( bes aes)} _\markup{\dynamic ppp \italic "sottovoce e staccato"} bes8^.
  aes^.[ g^. aes^. bes^.]|
  \tupletUp \tuplet 3/2 {aes16( bes aes)} g8^. aes^. g^.|
  f8^.[ g^. aes^. bes^.]|
  ees,8^. <ees' bes g>^. r8 _\ff <ees bes g>^.|
  r8 <ees ces aes>^. r8 <f ces aes>^.|
  r8 <ges des bes>^. r8 <ees bes g>^.|
  \break
  %rigo up 2.8
  r8 \stemDown <ees ces aes>8^. r <des ces aes f>^.|
  r8 <des bes ges>^. r8 <ges des>|
  r8 <ges c,!>^. r <f des ces>^.|
  <ges des bes>^. f^. 
  \tupletUp  
  \override TupletBracket.bracket-visibility = ##f
  \tuplet 3/2 {ees16[( f ees)} des8^.]|
  r8 <ees ces ges>^. r <des ces aes>^.|
  <ges bes,>_. f^. _\> 
  \tuplet 3/2{ees16[( f ees)} des8]\!|
  \break
  %rigo up 2.9
  \mark #3 r8 _\markup{\dynamic p \italic "leggiero"} <des bes>8^.[ ges^. <des bes>^.]|
  r8 <ees c>^.[ ges^. <ees c>]|
  \clef treble r8 \stemUp <f des>8[ <ges ees> <aes f>]|
  <ges bes,>_. f \tupletDown \tuplet 3/2{ees16_([ f ees)} des8]_.|
  r8 ges_.[ f_. ees_.]|
  d!8_.[ _\<bes8_. c!_. cis_.]|
  d8_.[ ees_. f_. d_.]\!|
  \break
  %rigo up 2.10
  <<{ees8^. d^. _\markup{\italic "cres."}  
    \override TupletBracket.bracket-visibility = ##f
    \tupletDown \tuplet 3/2{c16_\([ d c\)} bes8_.]}\\{g?2}>>|
  \clef bass
  \stemDown  <ees' g,>8^. _\< [ees,^. <ees' g,>8^. ees,^.]|
  <ees' g,>8^. [ees,^. <ees' g,>8^. ees,^.]|
  ees'8^.[ ees,^. ees'8^. ees,^.]\!|
  r8 <ees' bes ees,>8^. r <ees bes ees,>^.|
  r8 <ees c g>^. r <ees c g>^.|
  r8 <ees c aes>^. r <ees c aes>^.|
  r8 <ees bes aes>^. r <ees bes aes>^.|
  \break
  %rigo up 2.11
  r8 <ees bes g>^. r8 <ees bes g>^.|
  r8 _\f <g ees>4^> <ees c>8^>~|
  <ees c>8 <c aes>4^> <c aes>8^>|
  r8 <c g ees>^. r <b g f>^.|
  r8 <g ees>8^. <fis d>8 <g ees>^.|
  \mark #4 
  r8 <c g ees>^. r8 <c g ees>^.|
  r8 <c aes f>^. r <c aes f>^.|
  \break
  %rigo up 2.12
  r8 <f b, g>^. r <f b, g>^.|
  ees16^. d^. c^. bes!^. aes^. g^. fis^. g^.|
  \clef treble
  r8 \f \stemUp <bes' g>4^> <g ees>8^>~|
  <g ees>8 <ees c>4^> <ees c>8|
  \clef bass
  r8 \stemDown <c aes>^. r <d bes aes>^.|
  r8 <bes g>^. <a fis>^. <b g>8|
  r8 <ees bes g>^. r <ees bes g>^.|
  \break
  %rigo up 3.13
  r8 <ees c aes>^. r <ees c aes>^.|
  r8 <f bes, aes>^. r <d bes aes>^.|
  e,16^. f^. g^. aes^. bes^. c^. d^. ees^.|
  <des aes f>2 _\p|
  <des aes f>2|
  <des aes f>2|
  <des aes f>8^. r <gis e>4^\( _\pp|
  \break
  %rigo up 3.14
  <eis cis>4 <d bes!>|
  <b g>4\) \clef treble \stemUp <ees! des g,>_\(|
  <f des aes>4 <g des bes> \bar "||"
  \key aes \major
  \mark #5
  <aes c,>8_.\) <c ees,>_. <aes c,>8_. <c ees,>_.|
  <aes c,>8_. <c ees,>_. <aes c,>8_. <c ees,>_.|
  <aes c,>8_. <c ees,>_. <aes c,>8_. <c ees,>_.|
  aes16_. _\markup{\italic "leggiere"} g_. f_. ees_. des_. c_. des_. ees_.
  \break
  %rigo up 3.15
  f16_. ees_. des_. c_. bes_. aes_. bes_. c_.|
  aes8_. _\< <c' ees,>_. <aes aes,>_. <c ees,>_.|
  <aes aes,>_. <c ees,>_. <aes aes,>_. <c ees,>_.|
  \clef bass
  \stemDown ees,16^. d^. c^. bes^. aes^. g^. aes^. bes^.|
  c16^. bes^. aes^. g^. f^. ees^. f^. g^.|
  \autoBeamOff aes8^. \clef treble \stemUp <aes' des,>_._\pp <des f,>_.[ <aes des,>_.]|
  <c ees,>_.[ <g c,>_.] <c ees,>_.[ <g c,>_. ]|
  \break
  %rigo up 3.16
  \autoBeamOn <bes des,>8_. _\> <f aes,>_. <g bes,>_. <ees des>_.\!|
  <aes aes,>8_. <ees aes,>_. <f aes,>_. _\f <des aes>_.|
  <c aes>_. <c aes>_. <f aes,>_. <g bes,>_.|
  <aes c,>_. <ees c>_.
  <<{c8^\( d|
  ees8 f g f|
  <ees c>8\) <ees c>
  }
  \\
  {c4|
  c4 <d b>|
  s8 \stemUp g,8_.
  }
  >>
  r8 <ees' d g,>_.|
  r8 <ees c aes>_. r <ees aes,>_.|
  \break
  %rigo up 3.17

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
    \break
    %rigo down 2.6
    <aes, aes,>8_. r <bes bes,>_. r|
    <g g,>8_. r <c c,>8_. r|
    <f, f,>8_. r <bes bes,> r|
    <bes ees,>8_. r g_. g'_.|
    \stemDown aes,8^. aes'^. \stemUp f,_. f'_.|
    g,8_. g'_. c,,_. c'_.|
    aes,8_. aes'_. bes,_. bes'_.
    \break
    %rigo down 2.7
    ees,8 r8 <c' c,>8_. <bes bes,>_.|
    <aes aes,>8_.[ <g g,>_. <aes aes,>_. <bes bes,>_.]|
    <c c,>8_.[<bes bes,>_. <aes aes,>_. <g g,>_.]|
    <f f,>8_.[ <g g,>_. <aes aes,>_. <bes bes,>_.]|
    <ees, ees,>8_. r <ees' ees,>_. r|
    <aes, aes,>_. r <des des,> r|
    <ges, ges,>8_. r <ees' ees,>_. r|
    \break
    %rigo down 2.8
    \stemUp <aes, aes,>8_. r <des des,>8 r8|
    <ges, ges,>_. r \stemDown bes^. bes'^. |
    beses,!^. beses'!^. aes,^. aes'^.|
    \stemUp ges,_. ges'^. ees,_. ees'_.|
    ces,8_. ces'_. des,_. des'_.|
    ges,_. f'_. \stemDown ees^. des^.|
    \break
    %rigo down 2.9
    \stemUp ges,8_. r \stemDown des' r|
    \stemUp aes8_. r \stemDown ees'^. r
    des8 r8 r4|
    \stemUp <des ges,>8_. r \stemDown <bes' ges> r|
    ges,8^.[ bes'^. des,^. bes'^.]|
    \stemUp f,8_. r <aes f>^. r|
    bes,8_. r \stemDown <aes'' bes,>^. r|
    \break
    %rigo down 2.10
    \stemUp <ees ees,>2|
    <d? d,?>2|
    <c c,>2|
    <bes bes,>4_\( <aes aes,>|
    <g g,>8_.\) r8 g_. r|
    c,8_. r c'8_. r|
    f,8_. r \stemDown f'^. r|
    \stemUp bes,,8_. r bes'_. r|
    \break
    %rigo down 2.11
    ees,8_. r \stemDown ees'^. r|
    c'4^> aes^>|
    f4^> ees8^\( d\)|
    \stemUp g,8_. r g_. r|
    c,_. r c' r|
    ees,8 r ees r|
    d8 r d r|
    \break
    %rigo down 2.12
    g8_. r g_. r|
    c8_.[ g_. c_. ees_.]|
    \stemDown ees'4^> c^>|
    aes4^> g8^\( f\)|
    \stemUp bes,8_. r bes_. r|
    ees,8_. r \stemDown ees'^. r|
    \stemUp g,8_. r g_. r|
    %rigo down 3.13
    f8 r \stemDown f' r|
    \stemUp bes,8_. r bes_. r|
    ees,8_. ees'_. ees,8_. r|
    ees8_. ees'_. ees,8_. r|
    ees8_. ees'_. ees,8_. r|
    ees8_. ees'_. ees,8_. r|
    ees'8^. r \stemDown b'4^\(|
    \break
    %rigo down 3.14
    gis4 f!|
    d!4\) \stemUp <ees bes!>_\(|
    <ees ees,>\) <ees ees,> \bar "||"
    \key aes \major
    \stemDown <ees g>8^. aes^. <ees g>8^. aes^.|
    <ees g>8^. aes^. <ees g>8^. aes^.|
    <ees g>8^. aes^. <ees g>8^. aes^.|
    \stemUp ees,8^. ees'^. ees,^. r|
    \break
    %rigo down 3.15
    ees8_. ees'_. ees,_. r|
    \stemDown <ees' aes,>8^. aes^. <ees aes,>8^. aes^.|
    <ees aes,>8_. aes^. <c, f,>^. f^.|
    \stemUp bes,,8_. bes'_. bes,_. r|
    ees8_. ees'_. ees,_. r|
    ees8_. ees'_. ees,_. r|
    ees8_. ees'_. ees,_. r|
    \break
    %rigo down 3.16
    ees8_. ees'_. ees,_. r8|
    aes8_. r aes4_>|
    aes4_> \stemDown aes8^. aes'^.|
    \stemUp aes,8_. r <f' f,>8_. r|
    <g g,>8 r g,_. r|
    c4_\( bes|
    aes\) c4_\(|
    \break
    %rigo down 3.17
    bes4 ees,\)|
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