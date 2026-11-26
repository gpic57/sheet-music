\version "2.26.0"

\header {
  title = "Pianto antico"
  composer = "Alberto Gentili"
}

\score {
<< % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = \markup{\bold "CANTO"}
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble
    \key d \major 
    \time 4/4
    \tempo 4 = 58
    %rigo canto 1.1
    R1 ^\markup{\bold "Adagio."}|
    r2 \tupletUp \tuplet 3/2{fis8.\noBeam fis16 fis8\noBeam} fis\noBeam fis|
    \break
    %rigo canto 1.2
    e8 e r16 e\noBeam e e \noBeam b'4. b8|
    \tuplet 3/2 {a4 a8} r8 a \tuplet 3/2{d4 d d8 d\noBeam}|
    b4 b8\noBeam b b\noBeam b \tuplet 3/2{b4 cis?8}
    \break
    %rigo canto 1.3
    cis4 r8 cis8 \tuplet 3/2{d4 d8} \tuplet 3/2{d8 d8.\noBeam d16}|
    d4 cis4 \breathe \tuplet 3/2 {cis8 cis\noBeam cis} \tuplet 3/2{a4 cis8}
    cis4 b8 \breathe b b b \tuplet 3/2 {g4 fis8} 
  }%Chiude relative Canto
  \addlyrics {
  _ L'albero a cui ten-
  de -- vi la par -- go -- let -- ta ma -- no, il ver -- de me -- lo gra -- no da' bei ver -- mi -- gli
  fior, nel mu -- to or --to so -- lin -- go rin -- ver -- dì tut -- to_or o -- ra e giu -- gno lo ri-
   
   }%Chiude lyrics
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "PIANO" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key d \major 
  \time 4/4
  \relative c' {
  %rigo up 1.1
  <fis d fis,>4^( _\mf <a fis a,>4. <cis a cis,>4 <d bes d,>8
  <<{a2)\breathe <a d,>8[^( d,] e fis|
  \break
  %rigo up 1.2a
  s2 b2|
  a2 s2|
  <b dis,>8_\< <cis e,> <dis fis,> <e g,> e8\! b4 g8|
  \break
  %rigo up 1.2b
  <b g e b>4^- <ais fis e ais,>4) \breathe b4._\< e,8\!|
  <e g,>4 <fis a,>8 <g b,> a8^(_\< a4 d,8\!|
  <d fis,>4 <e g,>8 <fis a,>)<d b g>4. <fis b,>8
  }
  \\
  {<cis a>8  <d bes>4 <e cis>8 \stemDown a,2|
  %rigo up 1.3a
  \stemUp <g' b,>8^- b, d4) \stemDown dis8[^( e] fis g|
  \stemDown fis a,8 d4) \stemUp <d' d,>8[^( <fis, d>] <g e> <a fis>|
  s2 \stemDown g2|
  \break
  %rigo up 1.3b
  s2 <b g d b>2^(|
  \stemDown d,4 cis <a' fis cis a>2)|
  cis,4 b g2|
  }
  >>
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key d \major
    \time 4/4
    \relative c{
  %rigo down 1.1
  <a f>2 a4 \stemUp d|
  <<{\stemDown f!4 s4\breathe \stemUp fis2| 
  e2 bis8[ cis] d! e  
  }
  \\
  {s4 a,4_~ a4 a4_\(
  a4\) a2.|
  }
  \\
  {\stemDown s2 d,_\markup{\dynamic p \italic "rall."}
  d2 d
  }
  >>
  <<{fis'2 d4 b'|
  fis4 e b' dis,8 e~|
  e8[ e] cis4 \breathe e2|
  e2 d|
  d2 e4. d8|
  }
  \\
  {d8 cis c4 b2|
  a2 g|
  fis2 e4 fis8 g|
  a2 d,4 e8 fis|
  g4. fis8 e4 fis8 g|
  }
  >>
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
  \Voice 
  \remove "Slur_engraver"
    } 
    indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}