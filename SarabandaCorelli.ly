\version "2.26.0"

\header {
  title = "Base Sarabanda"
  composer = "Arcangelo Corelli"
}

\score {
<< % Apre Piano
 \new PianoStaff  
      \with { instrumentName = \markup{\italic "Clavio"  }
      
 }
<<
  \new Staff="up" { 
  \set Staff.midiInstrument = #"harpsichord"
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key ees \major 
  \time 3/4
  \tempo 4=55
  \relative c' {
  %rigo up 1.1
  \repeat volta 2{%Apre volta
  <g' ees>_( \mf <g c,>4. aes8|
  d,2) g4_(|
  c,4) c4._( d8|
  bes4) bes2|
  c4_( <aes' f>2)
  \break
  %rigo up 1.2
  <aes f>4_( <g ees>) <g d>|
  <f c>4 c8[_( ees] d c|
   b2.)|
}%Chiude volta
\repeat volta 2{%Apre volta2
  b'8 [a] b g a[ b]|
  c8 [b] c d c[ bes]|
  \break
  %rigo up 1.3
  a8 [g] a f g[ a]|
  bes8 a bes2|
  ees,8 _\< [d] c d ees[ c]\!|
  <a' fis>2 <g d>4|
  <g ees>4 _\> <fis d>8 c d4|
  \break
  %rigo up 1.4
  g8  [fis]\! g aes g[ f]|
  ees8 [d] ees c d[ ees]|
  f8 [e] f g f[ ees]|
  d8 [c] d bes c[ d]|
  ees8 [d] ees f g[ ees]|
  \break
  %rigo up 1.5
  c4 _\< c2\!|
  d8 [f] ees d c[ ees]|
  aes8 [c,] c4 b4|
  c2.
  }%Chiude volta2
     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \set Staff.midiInstrument = #"harpsichord"
    \clef bass
    \key ees \major
    \time 3/4
    \relative c{
    %rigo down 1.1
    \repeat volta 2{ %Apre volta
    aes8 [bes] c aes c[ d]|
    g8 [aes] g f ees[ c]|
    f8 [g] f ees d[ bes]|
    ees8 [d] ees f g[ ees]|
    aes8 [g] f ees d[ c]|
    \break
    %rigo down 1.2
    b8 [g] c ees bes[ c]|
    aes8 g f2|
    g8^( d' g2)|
    }% Chiude volta
    \repeat volta 2{%Apre volta2b
    g,4 ees' g|
    c,4 g' c|
    \break
    %rigo down 1.3
    f,,4 c' f|
    bes4 f8[ bes, ] d bes|
    c4 ees g|
    d8 [ees] d c bes[ g]|
    c4 d~ d8 d,|
    \break
    %rigo down 1.4
    g4. f'!8 ees[ d]|
    c4 g c,|
    f4 c' f|
    bes, f' bes,|
    ees, c' ees|
    \break
    %rigo down 1.5
    aes8 [b] aes g f[ aes]|
    g8 [aes] g f ees[ c]|
    f4 ^\>g^( g,)|
    <g' ees c>2^( c,,4)\!
    }%Chiude volta2
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
    indent = 2\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}