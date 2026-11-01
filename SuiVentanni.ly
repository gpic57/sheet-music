\version "2.26.0"

\header {
  title = "Sui vent'anni"
  composer = "Barbapedana"
}

\score {
<< % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = "CANTO"
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble
    \key bes \minor 
    \time 2/4
    \tempo 4 = 66
    %rigo canto 1.1
    r4 ^\markup{\bold "LA FIGLIA"} ^\markup{\italic "ALL."\super"tto" "MOSSO"} r8 aes'_.|
    \autoBeamOff \stemUp g!8_. aes_. bes_. aes_.|
    e16 f f8 r f|
    e8_. f_. ges_. f_.|
    \break
    %rigo canto 1.2
    ees8 bes r ^\f bes'|
    a8 bes c bes|
    aes!16_\( bes\) aes8 r ^\p aes|
    g8 aes ges ees|
    des4 r8 aes'|
    \break
    %rigo canto 1.3
    g8 aes bes aes|
    e16 f  f8 r f|
    e8 f ges f|
    ees8 bes r4|
    bes'8 ^\f a16 bes c8 bes|
    \break
    %rigo canto 2.4

  }%Chiude relative Canto
 \addlyrics {
 Io son mo -- de -- sta_e _ sa -- via, Non so di dar af-
 -fan -- ni, Ma so -- no sui ven -- t'an -- ni,... Pes -- sa -- te -- ci, pa -- pà! Ho i
  gior -- ni ma -- lin -- co -- ni -- ci, E nien -- te mi con -- so -- la... L'i -- dea di re -- star

   }%Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\italic "ALL."\super"tto""MOSSO" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key bes \minor 
  \time 2/4
  \relative c' {
  %rigo up 1.1
  r8 _\markup{\dynamic p \italic "e staccato"}<f des aes>_.[ <f des aes>_. <f des aes>_.]|
  r8 <f des aes>[ <f des aes> <f des aes>]|
  r8 <f des aes>[ <f des aes> <f des aes>]|
  r8 <f des aes>[ <f des aes> <f des aes>]|
  \break
  %rigo up 1.2
  r8 <ges ees bes>[<ges ees bes><ges ees bes>]|
  r8 _\mf <ges ees bes>[<ges ees bes><ges ees bes>]|
  r8 <ges ees aes,>[<ges ees aes,><ges ees aes,>]|
  r8 _\markup{\dynamic p \italic "subito"}<aes c, aes>_.[ <ges c, aes>_. <ees c aes>_.]|
  r8 <f des aes>[<f des aes><f des aes>]|
  \break
  %rigo up 1.3
  r8 <f des aes>[ <f des aes> <f des aes>]|
  r8 <f des aes>[ <f des aes> <f des aes>]|
  r8 <f des aes>[ <f des aes> <f des aes>]|
  r8 <ges ees bes>[ <ges ees bes> <ges ees bes>]|
  r8 _\mf <ges ees bes>[ <ges ees bes> <ges ees bes>]|
   \break
  %rigo up 2.4
   } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key bes \minor
    \time 2/4
    \relative c{
    %rigo down 1.1
    <des des,>8_. r r4|
    <des des,>8_. r r4|
    <des des,>8_. r r4|
    <des des,>8_. r r4|
    \break
    %rigo down 1.2
    <ges ges,>8_. r r4|
    <ees ees,>8_. r r4|
    <c c,>8_. r r4|
    f8_. r r4|
    <des des,>8_. r8 r4|
    \break
    %rigo down 1.3
    <des des,>8_. r r4|
    <des des,>8_. r r4|
    <des des,>8_. r r4|
    <ges ges,>8_. r r4|
    <ees ees,>8_. r r4|
    \break
    %rigo down 2.4
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