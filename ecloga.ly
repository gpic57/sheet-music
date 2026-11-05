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
  \stemUp <gis e gis,>\)[_\f _\> r16 <fis dis gis,>16_. <e cis gis>8_.] <e cis fis,>8_.[ r16 <dis a fis>_.<d a fis>8]^\(|
  <cis gis>8\)  <b fis>_. \! \p <a e>_. <gis dis>_. <fis bis,>_. <dis a>_.|
  <cis gis>8_> r
  \clef bass
  r8 \stemDown <fis, gis bis> _\markup{\italic "dim:..........................................."} r r |
  <cis' gis>^> r r <fis, gis bis> r r|
  \break
  %rigo up 1.4
  \clef bass
  <cis' gis e>8 r r <gis dis b>8 r r|
  <cis gis e>8 r r <a dis, bis> r r|
  <gis e cis>8 r r r e^. gis^.|
  cis8^. r r r
   \clef treble 
   e'8^. gis^.|
  \break
  %rigo up 2.5
  <<{b4^\( gis8 fis gis a| 
    b8 a gis fis4.|
    b4 gis8 fis gis a|
    b8 a gis fis4.\)|
    }
    \\
    {<e b>4. _\markup{\dynamic p \italic "con espress."} <dis cis>4.|
    <e b>4. <dis cis>|
    <e b>4. <dis cis>|
    <e b>4. dis|
    }
    >>
   \break
   %rigo up 2.6 
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
    \break
    %rigo down 1.2
    b16 r e4 ais,16 r e'4|
    b16 r e4 e,16 r e'4|
    a,16 r e'4 e,16 r e'4|
    a,16 r e'4 dis16 r fis4|
    \break
    %rigo down 1.3
    e16 r cis4 fis16 r a4^\(|
    <e' gis,>8\)[ dis^. a^.] bis^. a^. fis^.|
    \stemDown e^>[ r16 dis16^( c8]) \stemUp b_.[ bis_. gis_.]|
    \stemDown e'8^>[ r16 dis^( cis8)] \stemUp dis_. bis_. gis_.|
    \break
    %rigo down 1.4
    \clef bass
    cis,_. gis'_. cis_. a_. gis_. fis_.|
    cis_. e_. gis_. fis_. e_. dis_.|
    cis8_. e_. gis_. cis_. r r |
    r8 \clef treble
    e'_.[ gis_.] \stemDown cis^. r r|
    \break
    %rigo down 2.5
    <<{gis4.^\(^\< \sustainOn a \! ^\> \sustainOff \sustainOn|
    gis4. \sustainOff \sustainOn a8 \! \sustainOff \sustainOn gis \sustainOff fis|
    gis4. ^\< \sustainOn a \! ^\>|
    gis4. \sustainOff \sustainOn b8 \sustainOff a fis \!\)
    }
    \\
    {b,2.~|
    b2.~|
    b2.~|
    b2~}
    >>
    \break
    %rigo down 2.6

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