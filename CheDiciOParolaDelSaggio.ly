\version "2.26.0"

\header {
  title = "Che dici, o parola del saggio?"
  composer = "F. Paolo Tosti"
}

\score {
<< % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = "Tenore "
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble_8
    \key g \major 
    \time 4/4
    \tempo 4 = 88
    %rigo canto 1.1
    R1*4/4*3
    \break
    %rigo canto 1.2
    r2  r4   fis4 ^\p ^\<
    a4 a \! \autoBeamOff \tuplet 3/2{r8 a a} \tuplet 3/2{r8 a a}|
    c4^\> c \! r4^\fermata  b4 ^\p|
    \break
    %rigo canto 1.3
    b4^\markup{\italic "Poco più"} a8 g fis4 g8 dis|
    fis4 ^\<e4_~e8 r b'4|
    b4 a8 g\! fis4 g8 dis8|
    \break
    %rigo canto 2.1
    fis4 e~e8 r e4|
    g4^\> fis8 e e4 dis8 e\!|
    fis4 b,4~b8 r r4|
    \break
    %rigo canto 2.2
    

  }%Chiude relative Canto
 \addlyrics {
 Che di -- ci, o pa -- ro_la del Sag -- gio? "“Con-„"
 vie -- ne che l'a -- ni -- ma lie -- ve,..... so -- rel -- la del ven -- to sel-
 vag -- gio,............ tra -- scor -- ra le fon -- ti_o -- ve be -- ve!,.......
   }%Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "LENTO" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key g \major 
  \time 4/4
  \relative c' {
  %rigo up 1.1a
  <<{b''2^\( a4.^\< c8|
  b2 a4~a16 b c8\! ^\>|
  b2 a4~a16 b c8\!|
  \break
  %rigo up 1.2a
  \stemDown<fis b,>2^~<fis b,>8\) r r4|
  a,1^(\stemUp|
  c2.)  b4 ^\fermata ^\p|
  \break
  %rigo up 1.3a
  b4\arpeggio ^\( ^\markup{\italic "Poco più"} a8 g fis4 g8 d|
  fis4\arpeggio  e2\) ^\< b'4^\(|
  b4\arpeggio a8\! g fis4 g8 dis s16\)|
  }
  \\
  %rigo up 1.1b
  {<e b>2 _\pp<e c>|
  <e b>2 <e c>|
  <e b>2 <e c>|
  \break
  %rigo up 1.2b
  <d b>2 <d b>8 r r4|
  <e c>1_\<|
  <fis dis>1\!|
\break
  %rigo up 1.3b
  <dis, b>1\arpeggio|
  b1\arpeggio|
  <dis b>1\arpeggio
  }
  >> 
   } %Chiude relative Up
}%Chiude New Staff Down
    \new Staff = "down" { 
    \clef bass
    \key g \major
    \time 4/4
    \relative c{
    <g'' e>2 <fis e>|
    <g e>2 <fis e>|
    <g e>2 <fis e>|
     \break
  %rigo down 1.2
  <fis dis>2~<fis dis>8 r r4|
  fis,1^(|
  a)^\markup{\italic "col canto"\dynamic ^\fermata}
   \break
   %rigo down 1.3
  <a^( b,>1\arpeggio|
  <g) b,>1\arpeggio|
  <a b,>1 ^\(\arpeggio s16\)
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