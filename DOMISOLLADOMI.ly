\version "2.26.0"

\header {
  title = "DO, MI, SOL... LA, DO, MI..."
  composer = "Arrigo Boito"
}

\score {
<< % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = "Tenore "
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  % Imposta il volume massimo del Tenore molto alto
      midiMaximumVolume = #0.9
      midiMinimumVolume = #0.8
      } 
  \relative c' {
  
    \clef treble
    \key c \major 
    \time 6/8
    \tempo 4 = 66
    %rigo canto 1.1
    R1*6/8*6
    \break
    %rigo canto 1.2
    R1*6/8*6
    \break
    %rigo canto 1.3
    R1*6/8|
    r4 r8 r \autoBeamOff c8 ^\p e|
    g4 g8 g4 g8|
    g4 g8 g4 g8^\<|
    g8_\([ a\)] b\! \acciaccatura d8^\> c4 b8|
    g4 \! r8 r g8 bes|
    \break
    %rigo canto 2.4
    d4 d8 d4 d8|
    d4 d8 d4 d8|
    d8^\(^\<[ e\)] fis\! g4^\> f8\!|
    d4 r8 r d d|
    d4 d8 c4 c8|
    e4.^> f8 a,8 a|
    \break
    %rigo canto 2.5
    a4 a8 g4 g8|
    b4.^> c8 e, e|
    e4 e8 d4 d8|
    fis4.^> g8^\< g g|
    a4 a8\! \acciaccatura c8 \stemUp b8_\([a\)] \stemDown b8|
    c4. c4 c8|
    \break
    %rigo canto 2.6
    c4^\p \stemUp a8 f8_\([ d\)] f8|
    \stemDown  c'4 \stemUp g8 e_\([ c]\) e|
    g4 g8 g4 g8|
    c,8 r r r4 r8|
    R1*6/8*2|
    \break
    %rigo canto 3.7
    R1*6/8*3|R1*6/8 ^\markup{\italic "Un po' più lento"}|
    \stemDown c'16^. d^. e^. r f^. r c^. bes^. \stemUp a^. r g^. r|
  }%Chiude relative Canto
 \addlyrics {
 L'ar -- mo --nia del  vo -- stro vi -- so mi ri -- pe -- te_u -- na can -- zon che non
 so tra -- scri -- ver fi -- so nè col ver -- so nè col suon o -- ra_è bian -- ca ed_o -- ra_è bru -- na o -- ra
 so -- le ed_o -- ra_è lu -- na o -- ra_è car -- me_ed o -- ra_è ru -- na la me -- lo -- di -- ca..... vi -- sion o -- ra_è
 bian -- ca_ed o -- ra_è bru -- na la...... me -- lo -- di -- ca vi -- sion.
 Quan -- do sboc -- cia_il vo -- stro la -- bro
co -- me un fio -- re di ci -- na -- bro
   }%Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "Allegretto" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key c \major 
  \time 6/8
  \relative c' {
  %rigo up 1.1
  <<{r4 \sustainOn r8 _\f e4._>|
  \stemUp g''2.^>^\fermata|
  b,,4\rest b8\rest _\pp \stemUp c,4.|
  \once \override Staff.SustainPedal.X-offset = #3.0  
  e''2.^\fermata \sustainOff
  }
  \\
  {s1*6/8|
  e,,2.|
  s1*6/8|
  c2. 
  }
  >>
  r4 r8 _\f g'''16^. e^. c^. e^. c^. a^.|
  c16^. a^. f^. a^. f^. d^. f^. d^. b^. d^. b^. g^.|
  \break
  %rigo up 1.2
  \stemUp  r8 r<c e,>8 d,16_( e f g a b)|
  \stemDown c8^. r8 c^~ \stemUp c16 b_\( a g f e\)|
  a16_\(g f e d c d e f g a b\)|
  \stemDown c8^. r8 c^~ \stemUp c16 b_\( a g f e\)|
  d2._~_>|
  d8 _\markup{\italic "dim."} \acciaccatura f8 e8_\( d e d e\)
  \break
  %rigo up 1.3
  d8_\( e d e c e\)|
  c8 e c e c e|
  c8 e c b d b|
  c e c d f d_\<|
  e g e\! d _\>fis d|
  <g b,>8 d\! b d <g bes> <bes d,>|
  \break
  %rigo up 2.4
  g8 bes g fis a fis|
  g8 bes g a c a|
  bes8 d bes a cis a|
  <d f,>8 a f d r r|
  \stemDown d' f, d' c f, c'|
  <<{e4. \stemDown f8 c\rest c\rest}\\{bes8 c bes a s4|}>>
  \break
  %rigo up 2.5
  \stemUp a8 d, a' g c, g'|
  <<{b4. c8 s4}\\{f,8_> g f \stemUp e r r}>>|
  e8 a, e' d a d|
  <<{fis4.<g b>8 d_\< b|e8 c e\! d f! d|}\\{c8_> d c s4.|s1*6/8}>>|
  c2.|
  \break
  %rigo up 2.6
  \stemDown c'4_\p \stemUp a8 f[ d f]|
  \stemDown c'4 \stemUp g8 e8[ c e]|
  g4 f8 d[ b d]|
  c8 r r d16_\( e f g a b\)|
  \stemDown c8 r c^>~c16_\( b a g f e\)|
  a16_\( g f e d c d e f g a b\)|
  \break
  %rigo up 3.7
  c8^. r c8^>~\stemUp c16_\( b a g f e\)|
  d2.~|
  d8  \acciaccatura f8 e8_\( d e d e|
  c8^\markup{\italic "rall."} e c e c e\)|
  <c' a f>16[_. <d a f>_.<e a, f>_. r <f a, f>_.] r <c e, c>_.[<bes e, c>_.<a e c>_. r <g e c>]_. r|
  \break
  %rigo up 3.8
    } %Chiude relative Up
}%Chiude New Staff Up
    \new Staff = "down" { 
    \clef bass
    \key c \major
    \time 6/8
    \relative c{
    %rigo down 1.1
    c,2._>~|
    c2.^\fermata|
    a2.~|
    a2.^\fermata|
    r4 r8 <g''' e c a>8^>\arpeggio r8 r|
    <c, a f d>8^>\arpeggio r8 r|
    <f d b g>8^>\arpeggio r8 r|
    \break
    %rigo down 1.2
    c,_. r <g' e>8^. g,8_. r <g' f>^.|
    c,_. r <g' e>8^. g,8_. r <g' f>^.|
    c,_. r <g' e>8^. g,8_. r <g' f>^.|
    c,_. r <g' e>8^. g,8_. r <g' f>^.|
    <<{\stemDown g2.^>~|
    \stemUp g4 f8^\( g f g\)|
    }
    \\
    {c,2.|
    c2.}
    >>
    \break
    %rigo down 1.3
    f8^\(^\< g f g\! e^\> g\)|
    e8 g\! e g^\markup{\dynamic p \italic "legato"} e g|
    c,4. d|
    d4. b|
    c4. d|
    g4. g,|
    \break
    %rigo down 2.4
    g'4. a|
    g4. fis|
    g4. a|
    d4.~d8 r r|
    bes4. a|
    g4. f8 r r|
    \break
    %rigo down 2.5
    f4. e|
    d4. c8 r r|
    c4. b|
    a4. g|
    c4. g'|
    <a e a,>2.|
    \break
    %rigo  down 2.6
    <c a f d>4. r4 r8|
    <e c g>4. r4 r8|
    \stemDown <g, d g,>4. r4 r8|
    \stemUp c,8 r \stemDown <g' e>^. \stemUp g,_. r \stemDown <g' f>^.|
    \stemUp c,8 r \stemDown <g' e>^. \stemUp g,_. r \stemDown <g' f>^.|
    \stemUp c,8 r \stemDown <g' e>^. \stemUp g,_. r \stemDown <g' f>^.|
    \break
    %rigo down 3.7
    a8 r <g e> d r <g f>|
    <<{g2.~|
    f4 f8 g f g|
    bes2.|
    }
    \\
    {\stemUp c,2.|
    \stemDown c2.
    e8 g e g e g|
    }
    >>
    <c f,>8^. r8 <c a>16^. r <g c,>8^. r <g e>16 r|
    \break
    %rigo down 3.8
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