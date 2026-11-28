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
    \break
    %rigo canto 2.4
    fis4 \tuplet 3/2{e8 r e}  \tuplet 3/2{d4 d8} e8. e16\noBeam|
    fis4_\( fis8\) r8 r2|
    r8 a4 r8 a4 \tuplet3/2{a8 a\noBeam a}|
    \break
    %rigo canto 2.5
    g4 \tuplet 3/2{g8 r d} \tuplet 3/2{a'4 a8} r16 a a\noBeam a|
    g4 g8 r bes8 bes16\noBeam bes \tuplet 3/2{bes4 bes8|}
    \break
    %rigo canto 2.6
    a4 a8\noBeam g16_( a) bes8 bes\noBeam \tuplet 3/2{e8 e8.\noBeam e16}
  d4^\( cis?4) \breathe d8 d16\noBeam d16 \tuplet 3/2{d4 a8}
  }%Chiude relative Canto
  \addlyrics {
  _ L'albero a cui ten-
  de -- vi la par -- go -- let -- ta ma -- no, il ver -- de me -- lo gra -- no da' bei ver -- mi -- gli
  fior, nel mu -- to or --to so -- lin -- go rin -- ver -- dì tut -- to_or o -- ra e giu -- gno lo ri-
  -sto -- ra di lu -- ce e di ca -- lor..... Tu fior de la mia
  pian -- ta per -- cos -- sa i -- na -- ri -- di -- ta, tu de l'i -- nu -- til
  vi -- ta es -- tre -- mo ul -- ti -- mo fior...... _ sei ne la ter -- ra

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
  \break
  %rigo up 2.4a
  <<{<fis' b,>4^-^( <e cis>4 _\< d4.^- e8)\!|
  <fis d>4^( <a fis>4. <cis a>4 <d bes>8|
  a2 \breathe <a a,>2)^(|
  \break
  %rigo 2.5a
  \stemDown bes,8[ bes]~ _\><des bes>8\!) f8 d d_~ \tupletUp \tuplet 3/2{d[ e f]}
  bes,8 bes4~ <d bes>8 e8[ e] f g|
  \break
  %rigo 2.6a
  }
  \\
  {
  %rigo up 2.4b
  g,2 <cis a>4 b8 cis
  \stemUp fis,4 a4. cis4 d8|
  \stemDown cis8^~ <cis a>4 _\> cis8 \! f8[_\< d] e f\!|
  %rigo 2.5b
  \stemUp g2 <a a,>^(|
  g2 <bes bes,!>)|
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
  <<{
  %rigo down 2.4a
  fis'2 d4 b'|
  fis4 e b' dis,8 e~|
  e8[ e] cis4 \breathe e2|
  e2 d|
  d2 e4. d8|
  \break
  %rigo down 2.5a
  d4 e fis g|
  a,2 a4 d|
  s2<f d,>2
  \break
  %rigo down 2.6a
  <g d,>2 <d d,>|
  <g d,>2 ges4._\< fis8\!|
   \break
  %rigo down 2.7a
  }
  \\
  {
  %rigo down 2.4b
  d8 cis c4 b2|
  a2 g|
  %rigo down 2.5b
  fis2 e4 fis8 g|
  a2 d,4 e8 fis|
  g4. fis8 e4 fis8 g|
  \break
  %rigo down 2.5b
  fis4
  a1|
  d,2 s2|
  f'4~ _\sfz <f a,> a,4^~|
  %rigo down 2.6b
  a4 a2 a4~|
  a4 a4 g2|
   \break
  %rigo down 2.7b
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