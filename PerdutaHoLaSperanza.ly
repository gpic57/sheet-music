\version "2.26.0"
\header {
  title = "Perduta ho la speranza"
  composer = "S. Donaudy"
}

\score {
 << % Apre Canto e Piano
  \new Staff = "Canto" \with {     
    instrumentName = ""
    midiInstrument = "voice oohs"  % Suono vocale più dolce
  % Imposta il volume massimo del Tenore molto alto
      midiMaximumVolume = #0.9
      midiMinimumVolume = #0.8
  } 
  
  \relative c' {
    \clef treble
    \key bes \major 
    \time 3/4
    \tempo 4 = 110
    %rigo canto 1.1
    \partial 4 d4 ^\(^\markup{\italic "ANDANTINO"}^\pp|
    g2 a4 ^\markup{\italic "con sentimento"}|
    bes2 fis4|
    g2_\( ^\markup{\italic "cres."} ^\<a4|
    bes2 c4|
    d2 ees4\)\!|
    \break
    \
  }%Chiude relative Canto
 \addlyrics {
  Per -- du -- ta_ho la spe -- ran -- _ za in voi mi-

  } %Chiude new staff canto
   
 \new PianoStaff  
      \with { instrumentName = \markup{\bold "" }
 }
<<
  \new Staff="up" { 
    \set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key bes \major 
  \time 43/4
  \relative c' {
  %rigo up 1.1
  \partial 4 d4_\pp|
  <<{g2 a4|
  bes2 fis4|
  g2 a4|
  bes2 c4|
  d2 ees4
  }
  \\
  {r4 _\markup{\italic "doce e sentito"}d,2_-~|
  d4 d2_-~|
  d4 _\< _\markup{\italic "cres."} d2_-~|
  d4 d2_-~|
  d4 g2_-~\!|
  \break
  %rigo up 1.2
  }
  >>
   } %Chiude relative Up
}%Chiude New Staff Down
    \new Staff = "down" { 
    \clef bass
    \key bes \major
    \time 3/4
    \relative c{
    %rigo down 1.1
    \partial 4 r4|
    r4 r d^(|
    g2 a4|
    bes2 fis4|
    bes2 a4|
    bes2 c4|
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
    %indent = 3\cm
    %short-indent = 2\cm
    %ragged-right = ##f
    %ragged-last = ##f
  }
  \midi { }
}
