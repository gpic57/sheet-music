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
  % Imposta il volume massimo del Tenore molto alto
      midiMaximumVolume = #0.9
      midiMinimumVolume = #0.8
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
    aes16_\( bes\) aes8 r^\p aes8|
    g8 aes ges ees|
    des4 r8 _\mf ees8^\(|
    \stemDown des'8. c16 ees8 des|
    b16 b c8\) r8 c^.^\(|
    \break
    %rigo canto 2.5
    c8 bes! des8. c16|
    \stemUp aes8 ees\) r ees|
    \stemDown des'8.^\( c16 ees8. d16|
    b8 c\) r c^\(|
    \break
    %rigo canto 2.6
    c8 bes des8.^\fermata g,16|
    \stemUp aes4\) r8 aes|
    a8 \stemDown bes f' ees|
    c16^([des)] des8 r c16^([ bes)]
    \break
    %rigo canto 2.7
    \stemUp f8 ges \stemDown c bes|
    \stemUp g8  aes r aes^\<|
    \stemDown c8 bes f'8. \! ^\markup{\italic "ten."} ees16|
    ees8 des r \stemDown c16^([ bes)]|
    \stemUp g8 aes ges c,|
    \break
    %rigo canto 2.8

  }%Chiude relative Canto
 \addlyrics {
 Io son mo -- de -- sta_e _ sa -- via, Non so di dar af-
 -fan -- ni, Ma so -- no sui ven -- t'an -- ni,... Pes -- sa -- te -- ci, pa -- pà! Ho i
  gior -- ni ma -- lin -- co -- ni -- ci, E nien -- te mi con -- so -- la... L'i -- dea di re -- star
 so -- la Più tri -- ste an -- cor mi fa! Con -- so -- la -- ti, con -- so -- la -- ti! E'_a-
 mor che ti con -- si -- glia, Per far u -- na fa -- mi -- glia Ti
 re -- sta tem -- po_an -- cor! Ma_il dì del -- le tue gio -- ie Per
 me sa -- rà di lut -- to; O ca -- ra,_io per -- do tut -- to, Se man -- chi_a que -- sto
   }%Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\italic "ALL."\super"tto""MOSSO" }
 }
<<
  \new Staff="up" \with{
  midiInstrument = #"acoustic grand"
        midiMinimumVolume = #0.1  % Abbassa il limite minimo
        midiMaximumVolume = #0.3  % Abbassa il limite massimo
        }
  {

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
  r8 <ges c, aes>[<ges c, aes><ges c, aes>]|
  r8 _\p <aes c, aes>_.[<ges c, aes>_.<ees c aes>_.]|
  r8 <f des aes><f des aes>ees8_.|
  \stemUp <des' f,>8.[_\( <c ees,>16 <ees g,>8_.\) <des f,>8_.]|
  <b d,>8_. <c ees,>4_> <c ees,>8_.|
   \break
  %rigo up 2.5
  <c ees,>8^\( [<bes! des,!><des f,>8._> <c ees,>16]
  <aes c,>8 <ees c>_.\) r8 ees_.^\(|
  <des' f,>8.[ <c ees,>16 <ees g,>8._> <des f,>16]|
  <b d,>8_. <c ees,>4_>\) <c ees,>8_.^\(|
  \break
  %rigo up 2.6
  <c ees,>8 [<bes! des,!><des f,>8._\markup{\italic "col canto"} <g, des>16]|
  <aes c,>4\) r4|
  r8 <bes ees, bes> r <ees, c aes>|
  r8 <aes des, aes> r8|
  <<{c16^\( bes
  \break
  %rigo up 2.7
  <f d>8_.[\) <ges ees>_. <c ges ees>_. <bes ges ees>_.]}\\{<f des>8|
  \break
  s2}>>
  <g e>8_. <aes f>4_> _\markup{\italic "cres."} <aes f>8_. _\<|
  r8 <bes ges! ees!>_. \! \stemDown <f' bes, ges>^.\arpeggio _\markup{\italic "col canto"} r8
  r8 _\p \stemUp <f, des aes> r8 <f des aes>|
  r8 <aes c, aes>_. <ges c, aes>_. <c, aes>_.|
  \break 
  %rigo up 2.8
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" \with{
  midiInstrument = #"acoustic grand"
        midiMinimumVolume = #0.1  % Abbassa il limite minimo
        midiMaximumVolume = #0.3  % Abbassa il limite massimo
        }
    { 
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
    aes,8 r r4|
    aes8 r r4|
    <des des,>8 r r4|
    <ees ees,>8_. ees8[^(  <des'g,>8 ees,)]|
    aes,8_. \stemDown ees'[^\( <c' aes> ees,\)]
    \break
    %rigo down 2.5
    \stemUp <ees ees,>8 \stemDown ees[^\( <des' g,> ees,\)]|
    \stemUp aes,8 \stemDown ees'[^\( <c' aes> ees,\)]|
    \stemUp <ees ees,>8_. \stemDown ees[^\( <des' g,> ees,\)]|
    \stemUp aes,8_. \stemDown ees'[^\( <c' aes> ees,\)]|
    \break
    %rigo down 2.6
    \stemUp <ees ees,>8_. \stemDown ees[^\( <des' g,> ees,\)]|
    a,8_.[ ees'^\( <c' aes>^.\)] r8|
    \stemUp ges,4^( \stemDown ges')|
    f,4^\( f'\)|
    \break
    %rigo down 2.7
    \stemUp aes,8_. r \stemDown aes'^. r|
    des,8^. r <des! aes f> r|
    g8 r <bes g>\arpeggio r|
    \stemUp aes,,8 r aes' r|
    aes,8 r aes' r|
    \break
    %rigo down 2.8
    

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