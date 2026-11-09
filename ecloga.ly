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
   <e' gis, e>4^(_\f dis8) cis16^( b a gis fis) r|
   b4^( _\> gis8) fis16( e dis cis b) r\!|
   <e' gis, e>4^( _\p dis8) \omit TupletBracket \tupletUp \tuplet 3/2{cis32[^\( dis cis} b16 a gis fis] \)r|
   b4 gis8 \tupletUp \tuplet 3/2{fis32[^\( gis fis} e16 dis cis b] r \)|
   \break
   %rigo up 2.7
   <<{\stemUp fis'4\arpeggio^\( _\<d!8 \tuplet 3/2{cis16[ d cis]} b4|
   d4._~ <fis d>\)|
   <a d,>4~\arpeggio^\( <fis d>8 \tuplet 3/2{cis16[ d cis]} b4|
   fis'4._~<a fis>\)\!|
   }
   \\
   {<a, fis>2.\arpeggio _\p|
    a2.|
    a2.|
    d2.
   }
   >>
  \break
   %rigo up 2.8
   <<{<d' a>4~^\(<cis a>8 \tupletUp \tuplet 3/2{b16 cis b} a8 gis|
   \stemDown fis4. d\)^\(|
   d2.\)|
   \stemUp fis,4.^\( e|
   dis8\) ^\sf r d8 _\>\tupletUp \tuplet3/2{b16[_\( cis b]} gis8\) fis_.\!|
   }
   \\
   {<fis'' d>2. _\f|
   a,4. s4.|
   <b gis>2.|
   gis,2. _\(_\p|
   gis8\) r r s4.|
   }
   >>|
  \break
  %rigo up 3.9
  R1*6/8|
  r4 \stemUp <e' cis>8_. _\pp|
  <fis e cis>8_.[ r <a fis e>]_.|
  <cis a e>8_. [r <e cis a>_.] <fis cis a>8_.[ r16 <e a, fis>_. <cis a fis>8_.]
  <e gis, e>8_. r <b gis d>_([<e cis fisis,>]) _\< r \stemDown <cis fisis, e>8[^\(|
  \break
  %rigo up 3.10
  <e d gis,>8 \)] r \stemUp <b gis e>8_([ <e bis gis>)] r <b gis d>[_( \!|
  <e cis a>8]) _\markup{\italic "più sensibile"} r <e cis a e> \stemDown <fis cis a fis>\arpeggio [ r <a fis cis a>]|
  <cis fis, e cis>\arpeggio [r <e cis a e>] _\markup{\italic "cres."}<fis cis a fis>\arpeggio [ r16 <e fis, e> <cis fis, cis>8]|
  <e b gis d>8\arpeggio _\f r <e, e,>[ <e' bes g cis,>\arpeggio ] r8 <e, e,>8 [^\(|
  \break
  %rigo up 3.11
  <d' a fis d>8]\)\arpeggio _\<  r <e, e,>^( <b'! e, d b!>) r <e, e,>\! ^\([|
  <a e cis a>8\)] r _\ff <e e,> <fis cis a fis>4^^ <a fis cis a>8|
  <fis cis a fis>8^^ \autoBeamOff <e e,> <fis cis a fis>4^^<a fis cis a>|
  <fis d a fis>4^^ <e e,>8 <g e c g>4^^ <e e,>8|
  \break
  %rigo up 3.12
  <gis! e b gis!>4^^ <e e,>8 <e' e,>4.^^|
  <<{<e e,>4 e,,8 fis4 a8|
  fis4^\( e8 fis4 a8|
  fis4 e8 f4 e8|
  \break
  %rigo up 3.13a
  fis!4 e8 gis4 e8_~[
  <a e>8]^>\) c8\rest c8\rest gis  c8\rest c8\rest
  }
  \\
  {cis8_^\arpeggio a e_^_~ <e cis>4._\(_\p|
  <e cis>4.\) <e cis>~|
  <e d>4. gis,|
  %rigo up 3.13b
  a4. d4.|
  s4. \stemUp<e d>8_\markup{\italic "rall."} s4|
  }
  >>
  \stemUp<a e>8_> r r <gis e d>8 r r|
  <a e cis>8 _\pp r r <gis d b> r r|
  \break
  %rigo up 4.14
  <a e cis>8 r r <f b, gis> r r|
  <e cis a>8 r r r cis^.[ e]|
  a8_. r r r 
  <<{\stemDown cis'8[^. e^~]^>^\(|
  e4 cis8 \stemUp b cis d|
  e[ d cis] b4.|
  \break
  %rigo up 4.15a
  e4 cis8 b cis d|
  e8 d cis b4.\)|
  }
  \\
  {s4| <a, e>4._\markup {\dynamic p \italic "con espress."} <gis' fis>4.|
  <a e>4. <gis fis>|
  %rigo up 4.15b
  <a e>4._\< <gis f>\! \>|
  <a e>4. gis\!|
  }
  >>
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
    <<{b'4. <dis a>|
    <e gis,>4. <a, fis>|
    gis2.|
    gis2.|
    }
    \\
    {e2.~|
    e2.~|
    e2.~|
    e2. \clef bass|
    }
    >>
    \break
    %rigo down 2.7
    e,,8[_\sustainOn ^\( a d! e a d! \sustainOff]|
    fis4 \sustainOn d8 \tupletUp \tuplet 3/2{cis16[ d cis]} b4\sustainOff \)|
    e,,8 [\sustainOn ^\( a d fis a d] \sustainOff|
    a'4 \sustainOn fis8 \tupletUp \tuplet 3/2{e16[ fis e]} d4 \sustainOff \)|
    \break
    %rigo down 2.8
    e,,8[^\( \sustainOn a d e a d]\sustainOff 
    \clef treble|
    <<{\stemUp d'4 cis8 \tupletUp \tuplet 3/2{b16[ cis b} a8 gis]}
    \\
    {e2.}
    >>|
    \stemUp ^\>fis4. e\)\!
    \clef bass|
    \stemDown <b e,>2.~<b e,>8 r r r4 r8|
    \break
    %rigo down 3.9
    e,8^. ^\p r d^.^\( \omit TupletBracket \tupletUp \tuplet 3/2 {d16 ees d} cis8 \) b^.|
    a16^( cis e4)^> e,16^( cis' e4)^>|
    a,16^\( e' fis4^>\) e,16^( e' a4)^>|
    b,16^([ e] b'4^>) ais,16^( e' cis'4^>)
    \break
    %rigo down 3.10
    b,16[ ^\(e] b'4^>\) e,,16[^\( e'] e'4^>\)
    a,,16[^\( \sustainOn e'] <cis' a>4\) e,,16[^\( e'] <cis' a>4\)|
    a,16[^\( e'] <cis' a>4\) e,,16[^\( e'] <cis' a>4\) \sustainOff|
    b,16[^\(\sustainOn e] <d' gis,>4\)\sustainOff e,,16[^\( \sustainOn e'] <bes' cis>4\)\sustainOff|
    \break
    %rigo down 3.11
    b,16[^( \sustainOn e] <d' a>4)|
    e,,16[^( \sustainOff \sustainOn e'] <d' gis,>4)|
    <cis e, a,>8\arpeggio \sustainOff \sustainOn r r <cis a fis>\sustainOff \stemUp <e, e,>4_^ \sustainOn|
    \stemDown<cis' a fis>8 \stemUp<e, e,>4_^\sustainOff \sustainOn \stemDown<cis' a fis>8 \stemUp<e, e,>4_^\sustainOff \sustainOn|
    \stemDown<d' a fis>8 \sustainOff \stemUp <e, e,>4_^ \sustainOn \stemDown <e' c g>8\sustainOff \stemUp <e, e,>4_^ \sustainOn
    \break
    %rigo down 3.12
    \stemDown <e' b gis!>8 \sustainOff \stemUp<e, e,>4_^ \sustainOn \stemDown<gis' b, e,>8\arpeggio^^ \sustainOff fis e
    <e a,>4\arpeggio \sustainOn \stemUp e,,8 \sustainOff
    \clef treble
    \stemDown e'''4^> s8 \sustainOn
    \clef bass
    \stemUp a,,,8
    \clef treble
    \stemDown e'''4
    \clef bass
    \stemUp e,,,8
    \clef treble
    \stemDown e'''4 
    \clef bass|
    \sustainOff \sustainOn b,,8
    \clef treble
    e''4^>
    \clef bass
    \sustainOff \sustainOn  \stemUp e,,,8
    \clef treble
    \stemDown d'''4^>\sustainOff
    \clef bass |
    \break
    %rigo down 3.13
    \stemUp b,,8 \sustainOn \clef treble
    \stemDown f'''4^> \clef bass
    \sustainOff \sustainOn \stemUp e,,,8
    \clef treble  \stemDown b'''4^> \clef bass \sustainOff|
    cis,8^> [r16 b16^( a8)] b^. gis^. e^.|
    cis'8^> [r16 b16^( a8)] b^. gis^. e^.|
    a,8^. e'^. a^. f^. e^. d^.|
    \break
    %rigo down 4.14
    a8^. cis^. e^. d^. cis^. e^.|
    a,8^. cis^. e^. a^. r r
    \clef treble |
    r8 cis'^. e^. a^. r r |
    <<{cis,4.^\< \sustainOn d\!\sustainOff \sustainOn \>|
    cis4.\!\sustainOff  \sustainOn d8 cis\sustainOff b}
    \\
    {e,2.~ e}
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