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
    R1*4/4*6
    \break
    
  }%Chiude relative Canto
 \addlyrics {
 L'ar -- mo --nia del  vo -- stro vi -- so mi ri -- pe -- te_u -- na can -- zon che non
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