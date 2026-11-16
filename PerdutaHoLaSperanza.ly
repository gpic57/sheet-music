\version "2.26.0"
\header {
  title = "Perduta ho la speranza"
  composer = "S. Donaudy"
}

\score {
 << % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = "CANTO"
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  % Imposta il volume massimo del Tenore molto alto
      midiMaximumVolume = #0.9
      midiMinimumVolume = #0.8
  } 
  
  \relative c' {
    \clef treble
    \key bes \major 
    \time 3/4
    \tempo 4 = 110
    %rigo canto 1.1
    \partial 4 d4 ^\(^\markup{\italic "ANDANTINO"}^\pp|
    g2 a4 ^\markup{\italic "con sentimento"}|
    bes2 fis4|
    g2_\( ^\markup{\italic "cres."} ^\<a4|
    bes2 c4|
    d2 ees4\!|
    \break
    %rigo canto 1.2
    f2^(^\mf ^\markup{\column {\italic "dim. subito" \italic "smorzando"}} ^\>\acciaccatura {ees16 f} ees4)|
    d2.~|
    d2.\)\!|
    c4^\(^\f ^\markup{\column {\italic "largamente" \italic "con anima"}}d f|
    ees2 d4|
    d2.^\>|
    c2.\)|
    \break
    %rigo canto 1.3
    c4^-\!^\p ^\markup{ \italic "rall:.................."} bes^- a_-|
    g4_- a_- \tupletUp \tuplet 3/2{fis8_- ^(g_- a_-)}|
    g2._~|
    g4 r g^\(^\markup{\dynamic pp \italic "dolce"}^\markup{\italic "POCO PIU' DOLCE"}|
    f'2\) d4^\(|
    ees2\) c4|
    d4 c b|
  }%Chiude relative Canto
 \addlyrics {
  Per -- du -- ta_ho la spe -- ran -- _ za in voi mi-
  ra -- re................. e di spe -- ran -- za so -- la
  nu -- trivo il co -- _ _ re!......... Ahi -- mè! Ahi -- mè! Ah! co -- me fa- 
  } %Chiude new staff canto
   
 \new PianoStaff  
      \with { 
      instrumentName = \markup{\italic  "ANDANTINO" }
      connectArpeggios = ##t
   }

<<
  \new Staff="up" \with {
    % 1. Permette di collegare gli arpeggi tra voci diverse dello STESSO rigo
    \consists "Span_arpeggio_engraver"
  }{ 
  \clef treble  
  \key bes \major 
  \time 3/4
  \relative c' {
  %rigo up 1.1
  \partial 4 d4^(_\pp|
  <<{g2)^\( a4|
  bes2 fis4|
  g2 a4|
  bes2 c4|
  d2 ees4|
  \break
  %rigo up 1.2a
  f2 _\>ees4|
  d2 c4|
  bes2 a4\)_\f\!|
   
  g2.\arpeggio^~|
  g2.|
  g2.^~|
  g2.|
  }
  \\
  {r4 _\markup{\italic "doce e sentito"}d2_-~|
  d4 d2_-~|
  d4 _\< _\markup{\italic "cres."} d2_-~|
  d4 d2_-~|
  d4 g2_-~\!|
  g4) _\markup{\dynamic mf \italic "dim. subito"}g2_~|
  g4 d2_-_~|
  d4 d2_- |
  c2\arpeggio _\( _\markup{\italic "espress."} d4
  %rigo up 1.2b
  ees2 d4\)|
  c2_\( _\> d4|
  ees2 d4\)\!|
  }
  >>
 <<{<fis c>4^- _\markup{\dynamic p \italic "dim e rall:......"} <g d>^-<a ees>^-|
 <g d>4^. <g ees>^- <fis c>^-|
 g2.^~|
 g4 r r|
 }
  \\
  {\change Staff = "down" \stemUp \crossStaff{a,4 bes c|
  \parenthesize d4 a a|
  bes2.^~|
  bes4 s2|}
  }
  >>
   } %Chiude relative Up
}%Chiude New Staff Down
    \new Staff = "down" {
    \clef bass
    \key bes \major
    \time 3/4
    \relative c{
    %rigo down 1.1
    \partial 4 r4|
    r4 r d^(|
    g2 a4|
    bes2 fis4|
    bes2 a4|
    bes2 c4|
    \break
    %rigo down 1.2
    d2 c4|
    bes2 a4|
    g2 f4)|
    <<{r4\arpeggio g2^-^~|
    g4 g2^-^~|
    g4 g2^-~|
    g4 g2^-
    }
    \\
    {ees2\arpeggio _\( d4|
    c2 d4\)|
    ees2_\( d4|
    c2 d4\)|
    }
    >>
    ees4_- d_- \stemDown c_-|
    bes_- c_- d_-|
    <d g,>2._~|
    <d g,>4 r r|
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
    indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}
