\version "2.26.0"

\header {
  title = "Gagliarda"
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
  \key f \major 
  \time 3/2
  \tempo 4=160
  \relative c' {
  %rigo up 1.1
  \repeat unfold 2 { %apre volta
  <<{\set fingeringOrientations = #'(left)
  <d'-5>2^\( ^\markup{\bold "GAGLIARDA"} d c|
  d4.^5 b8^4 a4 g^1 fis2\)|
  ees'2^5^\( d c|
  \break
  %rigo up a1.2
  bes1.\)|
  \stemDown bes4^3^\( a bes c d \stemUp g,|
  a4^3\) \stemDown d^\( e! fis g\) s4|
  \stemUp c,2.^5 bes4 a2 ^\markup { \overtie \concat { "3" \hspace #0.2 "5" } }|
  g1.
  }
  \\
  {\set fingeringOrientations = #'(left)
  <bes-3>2 _\markup{\dynamic pp \italic"espressivo"} a g|
  fis2_2 s1|
  g1. _\p|
  \break
  %rigo up b1.2
  g1.|
  s1.|
  fis4_2 _\< s2 s2 \stemUp d4 \!|
  \stemDown e4_2 fis g2_1_\> \stemDown fis2_2|
  <d b>1. _\p
  }
  >>
  }%chiude volta
  \break
  %rigo up 1.3
  \repeat unfold 2 { %apre volta
  d'2^3_\< ^\(d^2 e^3\!|
  f2. _\> e4 d2\)\!|
  ees2.^\( d4 c2|
  d2. ees4 d2\)|
  c2.^\( _\< bes4 \stemDown a2\)|
  \break
  %rigo up 1.4
  bes2.^\(  \stemUp \! a4  g f^2|
  e2. bes'4^5 a g|
  fis2.\) _\> d4 ^\( e fis|
  g4^1 a bes c^5 \!<a fis_2>2  ^\markup { \overtie \concat { "3" \hspace #0.2 "5" } }|
  <g d bes>1.^4 \)
  } %chiude volta 
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \set Staff.midiInstrument = #"harpsichord"
    \clef bass
    \key f \major
    \time 3/2
    \relative c{
    %rigo down 1.1
    \repeat unfold 2 {%apre volta
    <<{\set fingeringOrientations = #'(left)
    <d'-1>1.|
    <d a>1.|
    \set fingeringOrientations = #'(left)
    <g,-1>1 fis2|
    \break
    %rigo down a1.2
    <g d>1. |
    d'1.|
    d1 g,2|
    g1 s2|
    g1.|
    }
    \\
    {\set fingeringOrientations = #'(left)
    <bes-2 g-3>2_\( f_4 <g ees>_5|
    d1.\)|
    \set fingeringOrientations = #'(left)
    <c-2>2 _\(bes a|
    g1.\)|
    <bes' g>2_3 _\( <a f>_4 <g ees>_5|
    d2\) c_4 _\( b|
    c4 d ees \stemUp g,\) d' _\markup { \overtie \concat { "2" \hspace #0.2 "1" } } _\( d,\)|
    g1.
    }
    >>
    }%chiude volta
    \break
    %rigo down 1.3
    \repeat unfold 2 { %apre volta
    <<{d''1^\( cis2|
    d2 a^3 b\)
    c1^\( a2^2|
    b,2\rest bes2  \stemDown bes'2\)|
    bes,2\rest f'2_3 _\( fis\)
    \break
    %rigo down a1.4
    g1._1|
    \stemUp g2 e1|
    a2^1 s1|
    <g d>1^\markup{\italic "rall............"} s2|
    <g d>1.
    }
    \\
    {<bes! g>2 <a f> <g e!>|
    d1 g2|
    f2\rest c f-3|
    bes1.|
    a1.-1|
    \break
    %rigo down b1.4
    r2 bes,_4_\( b_5\)|
    c1_\(_4 cis2|
    d2\) _3 b_5 _\( a_4|
    g1 d'2|
    g,1.^\p \)
    }
    >>
    }%chiude volta
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