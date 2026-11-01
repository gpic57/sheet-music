\version "2.26.0"

\header {
  title = "Sui vent'anni"
  composer = "Barbapedana"
}

\score {
<< % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = "Tenore "
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  } 
  \relative c' {
  
    \clef treble
    \key aes \major 
    \time 2/4
    \tempo 4 = 66
    %rigo canto 1.1
    r4 r8 aes'_.|
    \autoBeamOff \stemUp g!8_. aes_. bes_. aes_.|
    e16 f f8 r f
    \break
    
  }%Chiude relative Canto
 \addlyrics {
 Io son mo -- de -- sta_e _ sa -- via, Non
   }%Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "LENTO" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key aes \major 
  \time 2/4
  \relative c' {
  %rigo up 1.1a
  c4
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key aes \major
    \time 2/4
    \relative c{
    c4
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