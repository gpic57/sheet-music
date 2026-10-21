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
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key f \major 
  \time 3/2
  \tempo 4=100
  \relative c' {
  %rigo up 1.1
  <<{\set fingeringOrientations = #'(left)
  <d'-5>2 d c}
  \\
  {\set fingeringOrientations = #'(left)
  <bes-3>2 _\markup{\dynamic pp \italic"espressivo"} a g}
  >>
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key f \major
    \time 3/2
    \relative c{
    %rigo down 1.1
    <<{\set fingeringOrientations = #'(left)
    <d'-1>1.}
    \\
    {\set fingeringOrientations = #'(left)
    <bes-2 g-3>2 f_4 <g ees>_5}
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