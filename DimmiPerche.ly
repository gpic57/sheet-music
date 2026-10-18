\version "2.26.0"
\header {
  title = "Dimmi perché!"
  composer = "Alfredo Filipponi"
}

\score {
 << % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = ""
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble
    \key ees \major 
    \time 4/4
    \tempo 4 = 88
    %rigo canto 1.1
    R1*4/4|
    \autoBeamOff r2 ees'4^\( ees8. ees16|
    bes4. \breathe bes8 c c c c|
    \break
    %rigo canto 1.2
    g4 g8\) r g4^\( f8. ees16|
    bes'4. bes8 \breathe aes g f ees|
    g4 f8\) r ees'4^\( ees8. ees16|
    \break
    %rigo canto 1.3
    bes4. \breathe bes8 c c c c|
    g4 g8\) r aes4^\( g8. f16|
    bes4. bes8 \breathe ees,8 ees d ees|
    \break
    %rigo canto 1.4
    g4 f8\) r8 bes4^\( ^\markup{\italic "Poco più mosso"} c8. d16|
    bes4. \breathe d8 e c bes a|
    d4 ^\markup{\italic "dim."} d8\)\breathe d c c d c \bar "||"
    \time 2/4
    \break
    %rigo canto 2.5
    b8^\( c d8. ees16|
    \time 4/4
    f2^>\)^\( -\tweak X-offset #12.5 ^\f g4^>ees8.^> c16|
    \break
    %rigo canto 2.6
    bes4\) bes8^\( ^\markup{\italic "dim:"} c g g f8.^\markup{\italic "ten:"} ees16|
    ees4^\fermata \) r4  -\tweak X-offset #4.5 ^\f aes ^\markup{\italic "a tempo"} aes8. f16|
    g4\) r8 c8 ^\markup{\italic "piano"} ees2
    \break
  %rigo canto 2.7
  ees4^\( ees8\) r ees4^\( ^\markup{\italic "Un po' più mosso"} d8. c16|
  bes4. aes8 g4. f8|
  ees4\) r8 ees'8^\( ^\markup{\italic "Meno"} g2
    \break
  %rigo canto 2.8
  g4^( g8)\) r8 f4 ^\markup{\italic "Poco affrettato"} ^\(ees8. c16|
  bes4. ^\markup{\italic "dim."}
 <<
    \voiceOne
     { 
     \magnifyMusic #0.7 {g'8 ^\markup{\italic "opp"} f4. ees8| ees1} 
     }
    \voiceTwo
     {
     \magnifyMusic #1.2 {\stemUp g,8 f4. ees8|ees1}
     }
  >> \bar "|."
  }%Chiude relative Canto
 \addlyrics {
  Dim -- mi per -- ché se a la campa -- gna_io
  sen -- to un suono un can -- to tu mi vieni in men -- te? Dim -- mi per-
  -ché se guar -- do il firma -- men -- to in o -- gni stel -- la tu mi sei pre-
  -sen -- te? Dim -- mi per -- ché da qual -- che dì mi pa -- re che il mondo non sia 
  fat -- to che -- di tè?... Tu ne -- i
  fior tu nel -- l'ae -- re tu nel mar! Dim -- mi per -- ché Sorri- _
  -di? _ Ah dun -- que tu lo sai per -- ché! Sor -- ri-
  -di?...  Ah dun -- que tu lo sai per -- ché!...
  } %Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key ees \major 
  \time 4/4
  \relative c' {
  %rigo up 1.1
  <bes' ees, bes>1\arpeggio ^\markup{\italic "Canto"} |
  <ees g, ees>4-_ _( <ees g, ees>4-_ <ees g, ees>4-_ <ees g, ees>4-_ )|
  <ees g, ees>4-_ _( <ees g, ees>4-_ <ees g, ees>4-_ <ees g, ees>4-_ )|
  \break
  %rigo up 1.2
  <g, ees>4__ _\< <g ees>__ <g c,>__ <f c>__ \!|
  <<{bes4 bes aes8[_( g)] f8[_( ees])|
  g4^\( f\) <ees' g, ees>4__ _\(<ees g, ees>4__ \)|
  }
  \\
  {\stemUp <ees, bes>4__ _(<ees bes>)__ ees8 s8 a,8 s8|
  \stemDown bes2 s2|
  }
  >>
  \break
  %rigo up 1.3
  \stemUp <bes' ees,>4__ _\( <bes ees,>4__ <c g ees>__ <c g ees>__\)|
  <<{g4__ _\( g__ aes__ g8. f16\)|}\\
  {\stemUp ees4 ees4 ees4 \stemDown ees4|}>>
  <bes' ees, bes>4__ _\(<bes ees, bes>__ <ees, a,>__ <d a>8__ ees8\)|
  \break
  %rigo up 1.4
  <<{ees4_( d) <bes' f> <a f>|
  <bes f>4 _\(<bes f> <c a>4 <bes f>8 a\)|
  <d bes>4 _\( <d bes> <c aes>4 <d aes>8 c\)|
  }
  \\{
  bes,2 \stemUp bes4__ _\< _( c__)|
  bes4__ bes__ \! _\> ees__ \stemDown ees \!|
  \stemUp d4__ _\< d__ ees__ ees8__ s8 \!|
  }
  >>
  \time 2/4
  %rigo up 2.5
  <b' ees>8__ _\< _( c ) <d d,>8.__ _( ees16) \!|
  \time 4/4  
  <<{ \arpeggioBracket <f d,>2\arpeggio s2}
  \\
  {\once \override NoteColumn.force-hshift = #2.5 
  f4^(  bes,! <g' ees bes g>^> _\f <ees bes g d>^> _\markup{\italic "meno mosso"})|
  }
  >>
  \break
  %rigo up 2.6
  <bes aes d,>4_>_( <aes d, bes>_> <g d bes aes>_> <f d bes aes>4_>)
  <ees bes g>^\fermata _\sf  <aes ees aes,>2. _\p _\>|
  <g ees bes>4 \! r4 fis2^(|
  \break
  %rigo up 2.7
  g2) <ees c fis,>4__ _( <ees c fis,>__)|
  <ees bes g>__ _(<ees bes g>__ <f d g,>__ <f d g,>__)
  <<{<ees c>}
  \\{ \change Staff= "down" \crossStaff{ \stemUp g,}}
  >> <g' ees c>4 -\tweak X-offset #2.5 _\f \stemDown <g' c, a>2
  \break
  %rigo up 2.8 
 <<{s2 aes,4^\( a}
 \\
 {<g' bes, g>2 ees,|}
 >>|
 <<{<bes' ees,>4 <g ees> f4. ees8\)^(}
 \\
 {s4. \once \override Stem.X-offset = #1.25
  \once \override Stem.Y-offset = #0.5
  \stemDown
  ees4 \once \override Stem.X-offset = #1.25
  \once \override Stem.Y-offset = #0.5
  \stemDown
  d4.}
 \\
 {s2 \stemDown aes!2|}
 >>|
ees'1)\bar "|."
   } %Chiude relative Up
}%Chiude New Staff Down
    \new Staff = "down" { 
    \clef bass
    \key ees \major
    \time 4/4
    \relative c{
    <g' ees bes ees,>1\arpeggio \sustainOn ^\markup{\italic "Lentamente"} |
    <bes ees,>1^( \sustainOff|
    <bes g>2) c^\(|
    \break
    %rigo down 1.2
    c2\) <a ees>2|
    <g bes,>2 <<{f4 ees|ees4 d}\\{ces2|bes2}>>
    <bes' ees,>2^\(|
    \break
    %rigo down 1.3
    <bes g>2\) c^\(|
    c2\) <ces f,>|
    g2 <<{f}\\{c!}>>
    \break
    %rigo down 1.4 
    <<{g'4 f d4 ees|}\\{bes2 s2 }>>|
    \stemDown d2 <<{f}\\{c}>>
    \break
    %rigo down 2.5
    \stemDown bes2 f'|
    \time 2/4
    <f aes,>4 <f a,>|<aes aes,>2^> \stemUp <ees ees,>2^>|
    \break
    %rigo down 2.6
    <bes ees,>2^> <bes ees,>2 ^\markup{\italic "dim:"}|
    <des des,>4^\fermata <ces ces,>2.|
    <bes bes,>4 r4 \stemDown <c' aes f!>^- ^(<c aes f>^-)|
    \break
    %rigo down 2.7
    <ees bes>^-^( <ees bes>^-) \stemUp a,,2|
    bes2 b|
    \stemDown c2 <ees' f,>2|
    \break
    %rigo down 2.8
    <ees bes>2 f,4^\( fis|
    g4 bes \stemUp bes,2\)|
    <<{<bes'^( g>4 <aes f> g^\( g\))}\\{s2 \once \override NoteColumn.force-hshift = #1.5 \stemUp ees2}\\{ees,1}>>
      \bar "|."
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
