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
  } 
  \relative c' {
  
    \clef treble_8
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

  }%Chiude relative Canto
 \addlyrics {
 L'ar -- mo --nia del  vo -- stro vi -- so mi ri -- pe -- te_u -- na can -- zon che non
 so tra -- scri -- ver fi -- so nè col ver -- so nè col suon o -- ra_è bian -- ca ed_o -- ra_è bru -- na o -- ra
 so -- le ed_o -- ra_è lu -- na o -- ra_è car -- me_ed o -- ra_è ru -- na la me -- lo -- di -- ca..... vi -- sion o -- ra_è
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
  r4 \sustainOn r8 _\f e4._>|
  <<{\stemUp g''2.^>^\fermata}\\{e,,2.}>>|
  r4 r8 _\pp c4.|
  <<{e''2.^\fermata}\\{c,,2. \sustainOff}>>|
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