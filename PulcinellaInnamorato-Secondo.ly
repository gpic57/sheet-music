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
  <<{d'2^5 d c}
  \\
  {bes2_3 a g}
  >>
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key f \major
    \time 3/2
    \relative c{
    %rigo down 1.1
    <<{d'1.^1}
    \\
    {<bes^2 g_3>2 f_4 <g ees>_5}
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