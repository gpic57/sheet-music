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
    \tempo 4 = 92
    r2 r4 b'^\p^\markup{\italic "Moderato"}|
    b4 a8 g a4 b8 c|
    b4 a8 g \stemDown a4^( c)|
    \break
    %rigo canto 2.3
    \stemDown b4 \breathe ^\markup{\italic "poco rit:...................... a tempo"}b b \stemUp a8 g|
    fis4^\< e r4 \stemDown b'\!|
    d2 b4 \breathe c8 d|
    \break
    %rigo canto 2.4
    c4 b8 a c4 b8 a|
    \stemUp g4 ^\>fis8 e8 e4 dis8 e|
    g4 fis4_~fis8\! r b4|
    \break 
    %rigo canto 3.5

  }%Chiude relative Canto
 \addlyrics {
 Che di -- ci, o pa -- ro_la del Sag -- gio? "“Con-„"
 vie -- ne che l'a -- ni -- ma lie -- ve,..... so -- rel -- la del ven -- to sel-
 vag -- gio,............ tra -- scor -- ra le fon -- ti_o -- ve be -- ve!,.......
 Io so  che_il van pian -- to mi gua -- sta le ci --
 glia dal -- l'om -- bra sì lun -- ga... O vi -- ta, e_u_ -- na
  la __  cri -- ma ba -- sta a spe -- gner la fa -- ce con -- sun -- ta!....... Ben

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
  b4\arpeggio a8\! g fis4 g8 dis|
  \break
  %rigo up 2.1a
  fis,4 e2\) e4|
  g4 fis8 e e4 dis8 e|
  fis2~fis8 a8\rest a4\rest|
  \break
  %rigo up 2.2a
  \tempo 4 = 92
  s1|
  b'8\rest^( <g e>4 <g e>8 b8\rest <fis e>4 <fis e>8)|
  b8\rest <g e>4 <g e>8 b8\rest <fis e>4 <fis e>8
   \break
  %rigo up 2.3a
  r8^\( <g e>4 <g e>8 r <fis dis b>4 <fis dis b>8|
  r8\) ^\<\( \stemUp <e b>4 <e b g> <e b g> <e b g>8\)\!|
  r8 ^\(<b' e,>4 <b e,>8 r <b gis e>4 <b gis e>8|
  \break
  %rigo up 2.4a
  r8 <a, e>4 <a e c> <a e c> <a e c>8\)|
  b1^\(|
  g4 fis~fis8\) r8 r4|
  %rigo up 3.5a

  }
  \\
  {
  %rigo up 1.1b
  <e b>2 _\pp<e c>|
  <e b>2 <e c>|
  <e b>2 <e c>|
  \break
  %rigo up 1.2b
  <d b>2 <d b>8 r r4|
  <e c>1_\<|
  <fis dis>1\!|
\break
  %rigo up 1.3b
  <dis b>1\arpeggio|
  b1\arpeggio|
  <dis b>1^\arpeggio|
\break
  %rigo up 2.1b
  c1|
  ais1|
  <dis b>2~<dis b>8 s8 s4|
\break
  %rigo up 2.2b
  \tempo 4 = 92
  b'1 ^\markup{\dynamic p \italic "Moderato"}^> ^\(|
  b,2\) c2|
  b2 c2|
  \break
  %rigo up 2.3b
  b2 a2|
  g4 s2.|
  d'2 d|
  \break
  %rigo up 2.4b
  c4 s8 s2 s8|
  r8 <e c g>4 <e c g> <e c g> <e c g>8|
  r8 <dis b a>4 <dis b a><dis b a><dis b a>8

  }
  >> 
   } %Chiude relative Up
}%Chiude New Staff Up
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
  <a b,>1 ^\(\arpeggio
  \break
   %rigo down 2.1
   <g c,>1|
   c,2 _(fis,2|
   b2)~b8 r8 r4|
   \break
   %rigo down 2.2
   R1*4/4*3
   \break
   %rigo down 2.3
   <<{d2\rest b2^>^~|
   b4^~b8 r8 r2|
   }
   \\
   {s2 b2_\(|
   e,4~e8 s8 s2
   }
   >>
   gis'2^( e2|
   \break
   
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