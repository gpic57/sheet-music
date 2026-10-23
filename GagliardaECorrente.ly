\version "2.26.0"

\header {
  title = "Gagliarda e Corrente"
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
  \tempo 4=130
  \relative c' {
  %rigo up 1.1
  <<{\set fingeringOrientations = #'(left)
  <d'-5>2^\( d c|
  d4.^5 b8^4 a4 g^1 fis2\)|
  ees'2^5^\( d c|
  \break
  %rigo up a1.2
  bes1.\)|
  \stemDown bes4^3^\( a bes c d \stemUp g,|
  a4^3\) \stemDown d^\( e! fis g\) s4|

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
  fis,4_2 _\< s2 s2 \stemUp d4 \!|
  }
  >>
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \set Staff.midiInstrument = #"harpsichord"
    \clef bass
    \key f \major
    \time 3/2
    \relative c{
    %rigo down 1.1
    <<{\set fingeringOrientations = #'(left)
    <d'-1>1.|
    <d a>1.|
    \set fingeringOrientations = #'(left)
    <g,-1>1 fis2|
    \break
    %rigo down a1.2
    <g d>1. |

    }
    \\
    {\set fingeringOrientations = #'(left)
    <bes-2 g-3>2_\( f_4 <g ees>_5|
    d1.\)|
    \set fingeringOrientations = #'(left)
    <c-2>2 _\(bes a|
    \break
    %rigo down b1.2
    g1.\)|

    }
    >>
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