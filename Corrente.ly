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
  \key f \major 
  \time 3/2
  \tempo 4=160
  \relative c' {
  %rigo up 2.5
  \time 3/4
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
  bes2^3\) cis4^\(|
  d2.|
  d4 c bes|
  a2.^2|
  bes!2.\)|
  a2.^5 ^\(|
  g2^4 \) \bar "||" \stemDown d'4
  }
  \\
  {bes2._2|
  a2._1 _\<|
  bes4_3 ^\( a \! g\)|
  c2._2 _\p|
  r4 d2_2|
  c4_1 s2|
  \break
  %rigo up b2.6
  g2. _2 _\<|
  bes4 \! a g
  fis2.
  _\markup { \overtie \concat { "2" \hspace #0.2 "1" } }|
  fis2._1 _\>|
  g2.\!|
  g4_4 fis4~ _\markup{\italic "rit:............."} fis8 e16 fis|
  <d bes>2 \bar "||" s4
  }
  >>
  } %chiude volta
  \break
  %rigo up 2.7
  \repeat volta 2 { %apre volta
  <<{\override PianoStaff.Arpeggio.stencil = #ly:chord-bracket::print 
  d'2.\arpeggio ^5 ^\(|
  bes2^3\arpeggio \)\stemDown e4^5 _\< \bar "|"
  c4.^2 d8 \! e c|
  \stemUp f2.|
  }
    \\
   {
    a,4.\arpeggio _2 _\p bes8_\markup{\italic "grazioso"} c d|
    s2.|
    s2.|
    r4 c d|

    }
    >>
  }
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \set Staff.midiInstrument = #"harpsichord"
    \clef bass
    \key f \major
    \time 3/2
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
    <d g>2 \bar "||" s4
    }
    >>
    }%chiude volta
    \break
    %rigo down 2.7
    \repeat volta 2 { %apre volta
    <<{
     fis''2.\arpeggio^1|
     g2.\arpeggio|
     a,2.|
     a2.|

     }
    \\
    { r4 d,2_5|
    r4 g2_2|
    r4 a,2|
    d4. e8[ f d]|
    }
    >>
    }

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