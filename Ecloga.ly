\version "2.26.0"

\header {
  title = "Ecloga"
  composer = "Niccolò van Westerhout"
}

\score {
<< % Apre Piano
  
   
 \new PianoStaff  
      \with { instrumentName = \markup{\italic "AMOROSAMENTE" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key a \major 
  \time 6/8
  \tempo 4.=54
  \relative c' {
  %rigo up 1.1
  R1*6/8|
  r4 r8 r4 e8_. _\pp \bar "||"
  \time 9/8
  <fis e a,>8_.[ r <a fis cis>_.] <cis fis, e>_.[ r <e cis fis,>]_. <fis cis a>8^.[ r16 <e cis fis,>^. <cis fis, e>8^.]|
  \bar "||"
  \time 6/8
  \break
  %rigo up 1.2
  \stemDown <e g, e>8^. r8 \stemUp <b gis d>_\([<e cis fisis,>\)] r8 \stemDown <cis fisis, e>^\([|
  <e d gis,>8\)] r8 \stemUp <b gis d>[_\(<e bis gis>]\) r <bis gis d>8_\(|
  <e cis a cis,>\arpeggio\) r8 <fis, e cis>_. <a fis e>_.[ r <cis a fis>_.]|
  \stemDown <e cis a>8^.[ r <fis e cis>^.]\stemUp <a cis, a>8.^>[^\( <gis e>16 <fis dis>8]|
  \break
  %rigo up 1.3
  \stemUp <gis e gis,>\)[_\f r16 <fis dis gis,>16_. <e cis gis>8_.] <e cis fis,>8_.[ r16 <dis a fis>_.<d a fis>8]
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key a \major
    \time 6/8
    \relative c{
    %rigo down 1.1
    a16 ^\pp r e'4 fis,!16 r16 e'4|
    b16 r e4 bis16 r e4 \bar "||"
    \time 9/8
    cis16 r e4 a,16 r e'4 e,16 r e'4 \bar "||"
    \time 6/8
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