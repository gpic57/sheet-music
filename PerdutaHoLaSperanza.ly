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
    g2 ^\markup{\italic "cres."} ^\<a4|
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
    ees2\) c4^\(|
    d4 c b|
    %rigo canto 2.4
    c2\)^\markup{\italic "cres."}^\< c4|
    aes'2\mf f4|
    ees4^( ^\markup{\column{ \italic "allarg. un poco...." \italic "con espansione"}} f g)|
    f2.~ ^\markup{\italic "a tempo"}| 
    f4^\>r4 f^\( \!^\markup{\dynamic p \italic "dolce calando"}|
    f2 g4 |
    ees2 d4|
    \break
    %rigo canto 2.5
    d4.^( ees8 f ees)|
    c2\) d4 ^\markup{\italic "più" \dynamic p} |
    d2^\( ^\markup{\italic "calando sempre e rall:......................."} ees4|
    c2 bes4|
    bes2.|
    a2\)  d,4 ^\pp|
    g2 ^\markup{\column{\italic "I.° TEMPO" \italic "con sentimento"}}a4|
    \break
    %rigo canto 2.6
  }%Chiude relative Canto
 \addlyrics {
  Per -- du -- ta_ho la spe -- ran -- _ za in voi mi-
  ra -- re................. e di spe -- ran -- za so -- la
  nu -- trivo il co -- _ _ re!......... Ahi -- mè! Ahi -- mè! Ah! co -- me fa- 
  -rò, se per a -- ma -- re,........... la fe -- de_ho già smar-
  -ri -- ta, la fe -- de nel -- l'a -- mo -- re? Per -- du -- ta_ho
  } %Chiude new staff canto
   
 \new PianoStaff  
      \with { 
      instrumentName = \markup{\italic  "ANDANTINO" }
      connectArpeggios = ##t
      connectChordBrackets = ##t
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
  \arpeggioBracket
  g2.\nonArpeggiato^~|
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
  g4 _\markup{\dynamic mf \italic "dim. subito"}g2_~|
  g4 d2_-_~|
  d4 d2_- |
  \arpeggioBracket c2\nonArpeggiato _\( _\markup{\italic "espress."} d4
  %rigo up 1.2b
  ees2 d4\)|
  c2_\( _\> d4|
  ees2 d4\)\!|
  }
  >>
 <<{<fis c>4^-^\( _\markup{\dynamic p \italic "dim e rall:......"} <g d>^-<a ees>^-|
 <g d>4^. <g ees>^- <fis c>^-\glissando
 % Sposta temporaneamente la voce sul rigo basso per far arrivare la linea
    <<{\change Staff = "down"
     \crossStaff{bes,2.^~ |bes4 s2|}}
     \\
     {
  \stemUp g'2.^~ _\markup{\dynamic pp \italic "a tempo"}|g4 \)r r|}
  >>
 }
  \\
  {\change Staff = "down" \stemUp \crossStaff{a,4 bes c|
  \parenthesize d4 a a|
  }
  }
  >>
  r4 _\markup{\dynamic pp \italic "dolce"}r <fis''^- b, g>|
  r4 r <ees c g>^-|
  r4 r <d b f>_-|
  \break
  %rigo up 2.4
  <<{r4 <c ees,>4^( ^\( <bes! e,>)\)|
  }
  \\
   {s4_\markup{\italic "cres."} c,2|
   }
  >>
  r4 _\< <aes' c,>4_\( _\markup{\italic "cres:.............."}<c f,>\) \!)|
  r4 \stemUp <bes e,>_\<_\( <des g,>\)\!|
  r4  <c f,>_(_\< \stemDown <f aes,>\!)|
  <<{aes4^( _\>g) f^~\! _\markup{\dynamic p \italic "dolce  calando"} |
  f2 g4|
  ees2 d4|}
  \\
  {c2 aes4~|
  aes4 aes2~|
  aes4 g2_-|
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
    <<{r4 g2^-^~|
    g4 g2^-^~|
    g4 g2^-~|
    g4 g2^-
    }
    \\
    {ees2\nonArpeggiato _\( d4|
    c2 d4\)|
    ees2_\( d4|
    c2 d4\)|
    }
    >>
    ees4_-_\( d_- \stemDown c_-|
    bes_- c_- d_-|
    <d g,>2._~|
    <d g,>4 \)r r|
    \stemUp g,4^( \stemDown g'2)|
    \stemUp g,4^( \stemDown g'2)|
    \stemUp g,4^( \stemDown g'2)|
    \break
    %rigo down 2.4
    aes,4^( aes'^\< g)|
    f2^( ^\mf aes4)|
    g2^( bes!4)|
    aes2^( c4|
    f2) ees4^(|
    d2 c4|
    b2 g4|
    \break
    %rigo down 2.5

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
