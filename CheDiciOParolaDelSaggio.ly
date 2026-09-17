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
    %rigo canto 2.4
    fis4 e~e8 r e4|
    g4^\> fis8 e e4 dis8 e\!|
    fis4 b,4~b8 r r4|
    \break
    %rigo canto 2.5
    \tempo 4 = 92
    r2 r4 b'^\p^\markup{\italic "Moderato"}|
    b4 a8 g a4 b8 c|
    b4 a8 g \stemDown a4^( c)|
    \break
    %rigo canto 2.6
    \stemDown b4 \breathe ^\markup{\italic "poco rit:...................... a tempo"}b b \stemUp a8 g|
    fis4^\< e r4 \stemDown b'\!|
    d2 b4 \breathe c8 d|
    \break
    %rigo canto 2.7
    c4 b8 a c4 b8 a|
    \stemUp g4 ^\>fis8 e8 e4 dis8 e|
    g4 fis4_~fis8\! r b4|
    \break 
    %rigo canto 3.8
    \stemDown b4^\markup{\italic "poco affrett."} \stemUp a8 g a4 \stemDown b8^\< c|
    b8 b4 \breathe b8 cis4\! bis8 cis|
    cis2 e4 ^\< d!|
    \break
    %rigo canto 3.9
    c4 b~b8 r b4\!|
    f'2^\markup{\italic "con anima"} e4 d|
    d4 c8 \breathe c8 c4 d8 c|
    \break
    %rigo canto 3.10
    b4 ^\markup{\italic "poco rit."} \stemUp a8 ^\> \breathe g a4 g8 fis|
    e4\!  e4~e8 r8 r4|
    R1*4/4|
    \break
    %rigo canto 3.11
    R1*4/4*2|
    r2 r4 ^\markup{\italic "I° Tempo"} fis4
    \break
    %rigo canto 4.12
    \autoBeamOff a4^\< a4~a8 r a a\!|
    c2 c4 r8^\markup{\italic "Poco più"} b|
    b4 a8 g fis4 g8 dis8|
    \break
    %rigo canto 4.13
    fis4 e8 dis e e r8 \stemDown b'|
    b4 \stemUp a8 g fis4 g8 dis|
    fis4 ^\markup{\italic "cres. e affrett."} \< e8 e a4 \! a8 a|
    \break
    %rigo canto 4.14
    fis4 fis8 fis \stemDown b4 b|
    r4 \stemUp g4 \stemDown c4 c8 c| 
    \stemUp a4 gis8 a \stemDown d4 cis8 d|
    \break
    %rigo canto 4.15
    b4 b8 b r4 e4^\markup{\italic "ritenuto.............................................................................."}|
    e4 d8 c d4 b|
    r4 a c b8 a|
    \break
    %rigo canto 5.16
    c2^\markup{"............................................."} \stemUp g4 r4|
    r4 g8 g g4 fis8 ^\markup{\italic "dim:........."} e \bar "||"
    \once \override Staff.TimeSignature.style = #'single-number 
    \time 2/4
    \tuplet 3/2 {g4 fis e} \tuplet 3/2 {g4 fis e} \bar "||"\time 4/4
    \break
    %rigo canto 5.17
    g4 fis4~fis8 r8 r4|
    R1*4/4 ^\markup{\italic "Moderato"}|
    r2 r4 r8 \stemDown b ^\p|
    b4 b r8 a c4|
    \break
    %rigo canto 5.18
    r4 b8^\< b a4 b8 c\!|
    b4 b8 b b4^\> \stemUp a8 g\!|
    fis4 e4~e8 r^\markup{\italic "cres:.........."} r \stemDown b'|
    \break
    %rigo canto 5.19
    d4 c8 b d4 c8 b|
    d4 d2 \breathe \stemUp e,4|
    g4 ^\< fis8 e e4\! dis8 e|
    \break
    %rigo canto 6.20
    g4^\> fis~fis8\! r \stemDown b4 ^\markup{\italic "poco affrett:................................."}|
    b4 \stemUp a8 g a4 \stemDown b8^\< c|
    b4 b8 b  cis4 \breathe bis8 cis\!|
    \break
    %rigo canto 6.21
    dis2 e4 d4|
    c4 b4~b8 r^\markup{\italic "cres."} b4|
    f'2^\markup{\italic "rit:......"} e8 r ^\markup{\italic "a tempo"} d d|
    \break
    %rigo canto 6.22

  }%Chiude relative Canto
 \addlyrics {
 Che di -- ci, o pa -- ro_la del Sag -- gio? "“Con-„"
 vie -- ne che l'a -- ni -- ma lie -- ve,..... so -- rel -- la del ven -- to sel-
 vag -- gio,............ tra -- scor -- ra le fon -- ti_o -- ve be -- ve!,.......
 Io so  che_il van pian -- to mi gua -- sta le ci --
 glia dal -- l'om -- bra sì lun -- ga... O vi -- ta, e_u_ -- na
 la __  cri -- ma ba -- sta a spe -- gner la fa -- ce con -- sun -- ta!....... Ben
 so che nel -- l'an -- sia mor -- ta -- le si sfa la mia boc -- ca ri-
 ar -- sa E_un a -- li -- to, o Vi -- ta, va -- le a
 sper -- der la ce -- ne -- re scar -- sa!........ 
 Tu
 di -- ci:....... “Alza il ca -- po; rac -- co -- gli con gra -- zia_i ca-
 -pel -- li_in un no -- do; e so -- pra le ro -- se che sfo -- gli ri -- den -- do va_-in-
 -con -- tro all'i -- gno -- to. L'a -- man -- te da -- gli_oc -- chi di sfin -- ge mu-
 -te -- vo -- le, a cui sei pro -- mes -- sa, ha no -- me Do-
 -ma -- ni; e ti cin -- ge con u -- na ghir -- lan -- da più
 fre -- sca.„.... M'at -- ten -- de: lo so.
 Ma il_da -- to -- re di gio -- ia non ha più ghir -- lan -- de:............... ha
 da -- to_il ci -- pres -- so all'A -- mo -- re e_il mir -- to_a Co -- lei ch'è più
  gran -- de,....... il mir -- to alla Mor -- te che o -- do rom -- bar sul mio
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
  %rigo up 2.4a
  fis,4 e2\) e4|
  g4 fis8 e e4 dis8 e|
  fis2~fis8 a8\rest a4\rest|
  \break
  %rigo up 2.5a
  \tempo 4 = 92
  s1|
  b'8\rest ^\( <g e>4 <g e>8 b8\rest <fis e>4 <fis e>8\)|
  b8\rest <g e>4 <g e>8 b8\rest <fis e>4 <fis e>8
   \break
  %rigo up 2.6a
  r8^\( <g e>4 <g e>8 r <fis dis b>4 <fis dis b>8|
  r8\) ^\<\( \stemUp <e b>4 <e b g> <e b g> <e b g>8\)\!|
  r8 ^\(<b' e,>4 <b e,>8 r <b gis e>4 <b gis e>8|
  \break
  %rigo up 2.7a
  r8 <a, e>4 <a e c> <a e c> <a e c>8\)|
  b1^\( ^\>|
  g4 fis~fis8\)\! r8 r4|
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
  %rigo up 2.4b
  c1|
  ais1|
  <dis b>2~<dis b>8 s8 s4|
\break
  %rigo up 2.5b
  \tempo 4 = 92
  b'1 ^\markup{\dynamic p \italic "Moderato"}^> ^\(|
  b,2\) c2|
  b2 c2|
  \break
  %rigo up 2.6b
  b2 a2|
  g4 s2.|
  d'2 d|
  \break
  %rigo up 2.7b
  c4 s8 s2 s8|
  r8 <e c g>4 <e c g> <e c g> <e c g>8|
  r8 <dis b a>4 <dis b a><dis b a><dis b a>8|
  }
  >>
  \break
  %rigo up 3.8
  r8 ^\markup{\italic "poco affrett."}^\(<e b g>4 <e b g>8 r <a d, c>4 <a d, c>8\)| 
  r8^( ^\< <b d, b>4 <b d, b>8 r <cis fis,e>4 <cis fis, e>8)\!|
  r8 <dis fis, dis>4 <dis fis, dis>8
  <<{e4^\( d| 
  \break
  %rigo up 3.9a
  c4 b2\) b4^\(|
  f'2 e4 d?|
  d4 c2.\)|
  \break
 %rigo up 3.10a
 g2^\( a4 g8 fis|
 e8\)^\( b4 b b b8\)|
 b'2 a4~a8 c|
 \break
  %rigo up 3.11a
  b2^\< ^\(a4~a16 b c8\!|
  b2^\> ^\markup{\italic "ritenuto"} a4~a16 b c8\!|
  fis,2~fis8\) r r4|
  \break
  %rigo up 4.12a
  a1^\(|
  c2.~c8\) b^\(|
  b4\arpeggio a8 g fis4 g8 dis|
  \break
  %rigo up 4.13a
  fis4 e2\) b'4^\(
  b4\arpeggio a8 g fis4 g8 dis|
  fis4 e\)
  }
  \\
  %rigo up 3.8a
  {r8 <g e>4 <g e>8|
  \break
  %rigo up 3.9b
  r8 <fis' dis>4 <fis dis> <fis dis> <fis dis>8|
  r8 <b f!>4 <b f>8 r8 <gis e>4<gis d>8|
  r8 <e d>4 <e cis>4 <e cis> <e cis>8|
  \break
  %rigo up 3.10b
  r8 <g, e>4 <g e >8 \stemUp<d cis>4 \autoBeamOff <d b>8 <d a>|
  <b g> <b g>4 <b g> <b g><b g>8|
  r8 _\p \stemDown <e b>4 <e b>8 r <e c>4.
  \break
  %rigo up 3.11b
  r8 <e b>4 <e b>8 r <e c>4.|
  r8 <e b>4 <e b>8 r <e c>4.|
  b2_~b8 s4.
  \break
  %rigo up 4.12b
  <e c>1 _\p _\<|\!
  <fis dis>1|
  <dis b>1\arpeggio|
  \break
  %rigo up 4.13b
  b1|
  <dis b>1\arpeggio|
  c2
  }
  >>
  <a' e a,>2^>^\( ^\markup{\italic "cres. e affrett."}|
  \break
  %rigo up 4.14
  <fis d a>2\) <b fis b,>^\(|
  <g e b>2\)_\< <c g c,>^\(|
  <a f c>2\) <d a d,>^\(\!|
  \break
  %rigo up 4.15
   <d b fis>2\)<<{<e b>2^\(|
   <e c>4 <d b>8 <c a> d4 b|
   a1\)|
   \break
   %rigo up 5.16a
   g1~|
   g4 a4\rest a2\rest \bar "||"
 }
   \\
   {\stemUp e2|
   e2 <gis d>2|
   c,1|
    \break
   %rigo up 5.16b
   c1~|
   c4 s2.\bar "||"
   }
   >>
   \once \override Staff.TimeSignature.style = #'single-number 
    \time 2/4
    <<{<g' e ais,>1^>_\> ^\( \bar "||"\!
    \break
    %rigo up 5.17a
    g4 fis~fis8\) b8\rest b4\rest|
    ^\markup{\italic "Moderato"} b1^^~ ^\>|
    b^\(|\!
    \stemDown b,2\)_> c2_>|
     \break
   %rigo up 5.18a
    c'8\rest^\( ^\< \stemUp<g e>4 <g e>8 \! c8\rest <fis, e>4 <fis e>8
    c'8\rest <g e>4<g e>8 c8\rest ^\> <fis, dis b>4 <fis dis b>8 \!|
    c'8\rest \)<e, b>4 <e b g>4 <e b g> <e b g>8|
    \break
    %rigo up 5.19a
    r8 <g e>4 <g e>8 r <b gis e>4 <b gis e>8|
    r8 <a e>4 <a e> <a e c>4 <a e c>8
    g1^\<^\(|\!
    \break
    %rigo up 6.20a
    g4^\> fis~fis8\) \!r8 r4 ^\markup{\italic "poco affrett."}|
    }
    \\
    {s1|
     \break
   %rigo up 5.17b
    <dis b>2~<dis b>8 s4.|
    s1*4/4|
    s1*4/4|
    c'8\rest ^\( ^\< \stemUp <g e>4<g e>8 \! c8\rest <fis, e>4 <fis e>8\)|
    \break
   %rigo up 5.18b
   b,2_> c_>|
   \stemDown b2_> _\(a
   g4\) s2 s4|
   \break
   %rigo 5.19b
   d'2 d|
   d4 c~ c8 r8 r4|
   r8 <e c g>4 <e c g> <e c g> <e c g>8|
  \break
  %rigo up 6.20b
  r8 <dis b a>4 <dis b a> <dis b a> <dis b a>8|
   }
    >>
   r8^\( <e b g>4 <e b g>8 r <a d,! c>4_\< <a d, c>8\)|
   r8^\( <b d, b>4 <b d, b>8 r <cis fis, e>4 <cis fis, e>8\)\!|
   \break
    %rigo up 6.21
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
  <a b,>1\arpeggio
  \break
   %rigo down 2.4
   <g c,>1|
   c,2 _(fis,2|
   b2)~b8 r8 r4|
   \break
   %rigo down 2.5
   R1*4/4*3
   \break
   %rigo down 2.6
   <<{d2\rest b2^>^~|
   b4^~b8 r8 r2|
   }
   \\
   {s2 b2_\(|
   e,4~e8 s8 s2
   }
   >>
   gis'2^\( e2|
   \break
   %rigo down 2.7
   a,1\)|
    ais1_\(|
    b\)
    \break
    %rigo down 3.8a
    e2^( f|
    g2) a!^>^(|
    b2 b|
    \break
    %rigo down 3.9
    a1)|
    gis2^(^\markup{\italic "col canto"} e|
    a2) fis|
    \break
    %rigo down 3.10
    b2 b,|
    e2~e8 r r4|
    <<{r8 g4 g8 r fis4.
    \break
    %rigo down 3.11a
    r8_\< g4 g8 r fis4.\!|
    r8_\> g4 g8 r fis4.\!|
    fis2~fis8 r r4|
    \break
    }
    \\
    { %rigo down 3.8b
    e2 e_\< \override Hairpin.to-barline = ##t | \!
    \break
    %rigo down 3.11b
    e2 e|
    e2 e|
    d2~d8 s4.
    }
    >>
    %rigo down 4.12
    fis1^\(|
    a1\) |
    <a b,>1^\(\arpeggio ^\(|
    \break
    %rigo down 4.13
    <g b,>1\)|
    <a b,>1^\(|
    <g c,>2\) \stemDown cis,2_\(|
    \break
    %rigo down 4.14
    d2\) dis^\(|
    e2\) e2^\(|
    f2\) fis^\(|
    \break
    %rigo down 4.15
    g2\) gis^\(^\markup{\italic "ritenuto............................................................................................"}|
    a2 e|
    f1\)|
    \break
    %rigo down 5.16
    e1^\(^\markup{"............................................."}|
    e4\) r4 r2 \bar "||"
    \once \override Staff.TimeSignature.style = #'single-number 
    \time 2/4
    c1_>_\(|
    \break
    %rigo down 5.17
    \stemUp b2\)~b8 r r4|
    R1*4/4*3|
    \break
    %rigo down 5.18
    R1*4/4|
    r2 <b b,>2^>^\(|
    <e, e,>4\)~ <e e,>8 r r2
    \break
    %rigo down 5.19
    \stemDown gis'2^>^\( e|
    a,1\)|
    <ais ais,>1^\(
    \break
    %rigo down 6.20
    <b b,>2\)~<b b,>8 r8 r4|
    e2^\( fis|
    g2\) ais2^>|
    \break
    %rigo down 6.21
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