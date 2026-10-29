\version "2.26.0"

\header {
  title = "Corrente"
  composer = "Girolamo Frescobaldi"
}

\score {
<< % Apre Piano
 \new PianoStaff  
      \with { instrumentName = \markup{\italic "MOLTO SOSTENUTO"  }
      
 }
<<
  \new Staff="up" { 
  \set Staff.midiInstrument = #"harpsichord"
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key c \major 
  \time 3/4
  \tempo 4=160
  \relative c' {
  %rigo up 2.5
  \partial 4
  \stemDown d'4 _\p ^\markup{\bold "CORRENTE"}
  \repeat volta 2 { %apre volta
  <<{d2^4^\( e4|
  c2^3 d4|
  e2.\)|
  e2^3 ^\( f4|
  g2 f4|
  e4 d c|
  \break
  %rigo up a2.6
  b2^3\) cis4^\(|
  d2.|
  d4 c b|
  a2.^2|
  bes!2.\)|
  a2.^5 ^\(|
  g2^4 \) \bar "||" \stemDown d'4
  }
  \\
  {b2._2|
  a2._1 _\<|
  b4_3 ^\( a \! g\)|
  c2._2 _\p|
  r4 d2_2|
  c4_1 s2|
  \break
  %rigo up b2.6
  g2. _2 _\<|
  b4 \! a g
  fis2.
  _\markup { \overtie \concat { "2" \hspace #0.2 "1" } }|
  fis2._1 _\>|
  g2.\!|
  g4_4 fis4~ _\markup{\italic "rit:............."} fis8 e16 fis|
  <d b>2 \bar "||" s4
  }
  >>
  } %chiude volta
  \break
  %rigo up 2.7
  <<{\override PianoStaff.Arpeggio.stencil = #ly:chord-bracket::print 
  d'2.\arpeggio \finger \markup \column { "5""2""1"} ^\(|
  bes2^3\arpeggio \)\stemDown e4^5 ^\( _\< \bar "|"
  c4.^2 d8 \! e c|
  \stemUp f2.\)|
  s2.|
  r4 c2^5|
  \break
  %rigo up a2.8
  c2.|
  d2.|
  d4.^3^\( e8^4 f^5 g^4|
  f4^3\) e2^\(|
  d2^4\) \bar "||"
  a4
  \break
  %rigo up a2.9
  }
    \\
   {
  a4.\arpeggio _\p bes8_\markup{\italic "grazioso"} c d|
  s2.|
  s2.|
  r4 _\>a^\( d\!|
  bes4^2\)^~ bes8 bes^3^\( a bes|
  g4\)_~g8[ a_2 g e]|
  \break
  %rigo up b2.8
  a4_2~a8 bes!^\( c a\)|
  r4 f2 \bar "|"|
  bes2_2 _\markup{\italic "rit:................."} d4_1
  d4_1 cis4~cis8[ b!16 cis ]\bar "|"|
  <a fis>2 _\p \bar "||" s4|
    }
    >>
  \break
  %rigo up 2.9
  \repeat volta 2 { %apre volta
  <<{
  a2^\finger \markup \column { "3""2" }^\(g4^1\)
  r4 \stemDown d'4^5^\( c|
  \stemUp b2.\)|
  cis2.^4|
  r4 d4^5^\( _\markup{\italic "cres."} a^3|
  \stemDown b2.\)|
  \break
  %rigo up a2.10
  f4\rest c'4_2^\(g4_1|
  \stemDown a2.\)
  e4\rest f4_1 _\(bes_3|
  e,4_1 fis_2 g_1\)|
  \stemUp a2.
  }
  \\
  {fis2 _\p r4|
  s2.|
  gis2._2|
  r4 a_2 e|
  fis2._2
  g4\rest g^5^\( d^3|
  \break
  %rigo up b2.10
  \stemUp e'2.\)|
  f4 \rest f^5^\( c^3|
  d2.^5\)|
  c2^4^\( bes4^3\)|
  \stemDown g4 fis~fis8 e16 f
  }
  >>
  \alternative {
    { << {\stemUp g2 \bar "||" \stemDown d'4|
    }
    \\{ <d, b!>2 s4|
    }
    >>
    } % 1. Prima volta (Primo finale)
    { <<{\stemUp g2.^\fermata| }
    \\
    {<d, b!>2.}
    >>
    
    } % 2. Seconda volta (Secondo finale)
  }%chiude alternative
  } %Chiude volta 
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \set Staff.midiInstrument = #"harpsichord"
    \clef bass
    \key c \major
    \time 3/4
    \relative c{
    %rigo down 2.5
    \partial 4
    r4|
    \repeat volta 2 { %apre volta
    <<{g''2.|
    s2.|
    g,2.|
    g2.|
    e2.|
    e2.
    \break
    %rigo down a2.6
    g4^1_\( f^1 e^2|
    d2.^1\)
    d2.|
    s2.|
    s2.|
    d2.|
    g2 \bar "||" r4
    }
    \\
    {r4 g,2|
    \stemDown a'4_2 ^\( g f|
    e2.\)|
    e4_2^\( d c|
    bes2.\)|
    c4_2 ^\( bes a|
    \break
    %rigo down b2.6
    g2.\)|
    g4_5 ^\(f_3 e_4|
    d2.\)|
    r4 d'_1^\( c|
    \stemUp bes4 a g\)|
    r4 \stemDown d2|
    <d' g,>2 \bar "||" s4
    }
    >>
    }%chiude volta
    \break
    %rigo down 2.7
    <<{
     fis'2.\arpeggio|
     g2.\arpeggio|
     a,2.|
     a2.|
     \bar "|"
     ^\markup { \overtie \concat { "2" \hspace #0.2 "1" } }
     g2.|
     g2 e4^2|
    \bar "|"
    \break
    %rigo down a2.8
    f2.|
    f4.^\( a8[ b g8]|
    g2.\)
     }
    \\
    { r4 d2_5|
    r4 g2_2|
    r4 a,2|
    d4._4 ^\( e8[ f d]\)|
    r4 g,2|
    c2.
    \bar "|"
    \break
    %rigo down b2.8
    r4 f,2|
    bes!2._4|
    r4^\< g d'\!|
    bes4 f2|
    <d' d,>2
    \bar "||"
    r4
    }
    >>  
 \break
 %rigo down 2.9
 \repeat volta 2 { %apre volta
 r4 d'_2 e_1|
 <<{fis2.^2}\\{d2._4}>>
 r4 c^\( e,\)|
 <<{a2.|
 a2^\( fis4|
 g2.\)|
 \break
 %rigo down a2.10
g4^2^\( c2\)|
c4^\( a2|
bes2.\)|
g2.^1 ^\markup{\italic "dim. e rit."}
\set fingeringOrientations = #'(left)
<a -1>2.
 }
 \\
 {r4 a,2|
 d2._4|
 r4 g,2|
\break
 %rigo down b2.10
 c2.|
 f2.|
 r4 bes,!2|
c2_3_\( g4\)|
\set fingeringOrientations = #'(left)
<d' -2>2.
 }
 >>
 \alternative {
    { c2. | } % 1. Prima volta (Primo finale)
    { c2.| } % 2. Seconda volta (Secondo finale)
  }%Chiude alternative
  }%Chiude volta
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