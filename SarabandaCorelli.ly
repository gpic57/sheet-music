\version "2.26.0"

\header {
  title = "Base Sarabanda"
  composer = "Arcangelo Corelli"
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
  \key ees \major 
  \time 3/4
  \tempo 4=160
  \relative c' {
  %rigo up 1.1
  <g' ees>_( \mf <g c,>4. aes8|
  d,2) g4_(|
  c,4) c4._( d8|
  bes4) bes2|
  c4_( <aes' f>2)
  \break
  %rigo up 1.2

     } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \set Staff.midiInstrument = #"harpsichord"
    \clef bass
    \key ees \major
    \time 3/4
    \relative c{
    %rigo down 1.1
    aes8 [bes] c aes c[ d]|
    g8 [aes] g f ees[ c]|
    f8 [g] f ees d[ bes]|
    ees8 [d] ees f g[ ees]|
    aes8 [g] f ees d[ c]|
    \break
    %rigo down 1.2
    
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