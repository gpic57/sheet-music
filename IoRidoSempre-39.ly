\version "2.26.0"

\header {
  title = "Io rido sempre"
  composer = "Giano Brida"
}

\score {
<< %Apre Aggancio Canto a Pianoforte
\new Staff 
<< %Apre aggancio lyrics al Canto
\relative c'{ 
\override Staff.Rest.style = #'classical
  \clef treble
  \key d \major
  \time 6/8
  \set Staff.midiInstrument = #"voice oohs"
  %rigo Canto 1.1 
 R1*6/8*4|
 \break
 %rigo canto 1.2
 R1*6/8|
 r4 r8 \autoBeamOff ^\markup{\italic "Disinvolto"}cis' cis cis|
 cis4.~ cis8[ b ^\< cis]|
 d4\! r8 ^\> r4 r8|
 r4\! r8 r r ^\p  a
 \break
%rigo canto 1.3
 b4.^\< cis|
 d4 \!fis,8 b4 \stemDown a8|
 \stemUp g4.~g4 a8|
 fis4._\(a8 \!r r|
 \stemDown b4.^\< cis\!
 \break
 %rigo canto 2.4
d4 \stemUp fis,8 \stemDown b4 a8|
\stemUp g4 a8 g4 a8|
\stemUp fis4. fis8 r r|
 \stemDown d'4. cis4 cis8
\break
 %rigo canto 2.5
b4. \stemUp g4 g8|
fis4 \stemDown cis'8 \acciaccatura e8 d4^> b8|
ais4. ais4 r8|
d4. cis|
\break
%rigo Canto 2.6
b4.^\(fis'\)|
e4^\< e8\! f4^\> f8\!|
e4. f^^|
e2.^\(|
\stemUp a,2.\)
 \break
 %rigo Canto 2.7
\stemDown g'4^(^\markup{\italic "Smorfioso"} fis8) g4 fis8|
g4^\(fis8\) g4^\(fis8\)|
f4 e8 f4 e8|
f4^\( e8\) f4^\( e8\)|
ees4^( d8) ees 4 d8|
\break
%rigo Canto 3.8
ees4^\(d8\) ees4^\(d8\)|
des4^\( ^\markup{\italic "poco rit."} c8\) des4 ^\(c8\)|
b2.^\( f'2\) r8 f8|
e4.~e4 dis16[ e]|
\break
%rigo canto 3.9
f4.~f4 e8|
a,4 r8 r4 r8|
r4 r8 \stemUp a ^\markup{\italic "rit. a piacere"} a ais
\stemDown b2.^\(|
b8) r r b^\markup{\italic "rit:....."} b bis|
   }%Chiude relative Canto
 \addlyrics {
 Io ri -- do sem -- pre! io
 ri -- do sempre e co -- me pe -- sce_o -- gno -- ra son fe-
 -li -- ce e mi go -- do_in_com -- pa -- gni -- a, m'al -- zo al tra-
 -mon -- to e_al sor -- ger del -- l'au -- ro -- ra va -- do_in 
 let -- to e non ho ma -- lin -- co -- ni -- a
 pian -- ga chi vuo -- _ le e si mar -- tel -- li_il cuo -- _ re _ col -- le pas-
 -sio -- _ni _ e con il mal d'a -- mo -- re e con il
 mal d'a -- mor! al mal d'a -- mo -- re? al mal d'a-

   }%Chiude new staff canto
>> %Chiude aggancio a lyrics 

%Inizia basePiano

\new PianoStaff 

<<
  \new Staff = "Up" { 
\set PianoStaff.connectArpeggios = ##t
  \clef treble  
  \key d \major 
  \time 6/8
  %\tempo = mosso_non_troppo
  \tempo 4.= 90
  \relative c' { 
  \override Staff.Rest.style = #'classical
    %rigo up 1.1
    <<{a'4.^^ ^\markup{\italic "Brillante"} a4.^^|
    a4.^^ r8  a8^\< ais\!|
    g4.^^ g^^|
    g4.^^ ^\markup{\italic "cres."} g8\rest \stemDown g8^\< gis\!|
    \break
    %rigo up 1.2
    \stemUp cis4.^^ cis^^|
    cis4.^^ r4 r8|

    }
    \\
    {r8_\p g-. e-. r fis-. d-.|
    s2.|
    r8 a'8-. f-. r g-. e-.|
    s1*6/8|
    r8 b'!8-. gis-.r a-. fis-.|
    r8 gis-. cis,-. s4.|
    }
    >>
    <cis' a gis e>2._\f|
    r8 r <d a fis> r r <d a fis>|
    r8 r <d a fis> r r <d a fis>|
    \break
    %rigo Up 1.3
    r8_\p r <b g e> r r <cis g e>|
    r r <b fis d> r r <b g d>|
    r8 r <a g cis,> r8 r <a g cis,>|
    r8 r <a fis d> r r <a fis>|
    r8 r <b g e> r r <cis g e>
    \break
    %rigo 2.4
    r8 r \stemUp <d fis, d> r r <b g d>|
    r8 r <a g cis> r8 r <a g cis>|
    r8 r <a fis d> r8 r <a fis d>|
    <<{d4.^^ cis^^
    \break
    %rigo Up 2.5
    b4. g^^|
    fis4. g^^ ^(|
    fis4.) fis^^|
    fis' 4.^^ e^^|
    \break
    %rigo Up 2.6
    d4. fis|
    \dynamicUp e4.\< f4.\>  |
    e4.\! ^\< f4. \>|
    e4.\! gis,|
    }
    \\
    {r8 r <fis d> r8 r <ais fis e>
    \break
    %rigo Up 2.5
    r8 r <fis d b> r r <d b>|
    r8 r <e cis ais> r r <d b>|
    r8 r <e cis ais> r r <e cis ais>|
    r8 r <d' b fis> r r <ais fis e>|
    \break
    %rigo Up 2.6
    r8 r <b fis d> r r <cis a fis>|
    r8 r <cis a e> r r <c a f>|
    r8 r <cis a e> r r <c a f>|
    r8 r <cis a e> r r <e, d b>|
    }
    >>
    <a e cis a>2\arpeggio r4|
    \break
    %rigo Up 2.7
    <g e c>4^(_\mf <fis e c>8) <g e c>4^( <fis e c>8)
    <g d>4^( <fis d>8) <g d>4^( <fis d>8)|
    <fis d b>4^( <e d b>8) <fis d b>4^( <e d b>8)|
    <f c>4^( <e c>8)<f c>4^( <e c>8)|
    <ees c a>4^( <d c a>8) <ees c a>4^( <d cis a>8)
    \break
    %rigo Up 3.8
    <ees bes>4^(<d bes>8) <ees bes>4^(<d bes>8)|
    <<{s1*6/8*4|}
    \\
    {}
    >>
    \break
    %rigo Up 3.9
    s1*6/8|
    <<{a'4.^^ a^^}\\{r8 _\markup{\italic "a Tempo."}g!8 e r f! d}>>

   } %Chiude relative Up
     
}%Chiude New Staff Up
    \new Staff="Down" { 
    \clef bass
    \key d \major
    \time 6/8
    \relative c{
     \override Staff.Rest.style = #'classical
   %rigo Down 1.1
    s1*6/8|
    \change Staff = "Up" r8 \stemDown e'8_. \change Staff = "Down" a,8_. r4 r8|
    s1*6/8|
    \change Staff = "Up" r8 \stemDown fis'8_. \change Staff = "Down" b,8_. r4 r8|
    \break
    %rigo Down 1.2
    s1*6/8|
    s4. r4 r8|
    \stemUp <a, a,>2.|
    \acciaccatura d,8 \stemDown d'8 r r fis8 r r|
    a8 r r d r r|
    \break
    %rigo Down 1.3
    cis4. a|
    b4. e,|
    a4. \stemUp a,|
    \stemDown d4.^( d'8 r r)|
    cis4. a
    \break
    %rigo Down 2.4
    b4. e,|
    a4. \stemUp a,4.|
    b4. d4.|
    b4. cis|
     \break
    %rigo Down 2.5
    \stemDown d4. e^^|
    fis4. eis^^ ^(|
    fis)^(fis8) r r|
    b4. cis|
    \break
    %rigo Down 2.6
    d,4. dis^^|
    e4. dis_^|
    e4. dis_^|
    e4. \stemUp <e e,>|
    <e a>2\arpeggio r4
    \break
    %rigo Down 2.7
    \stemDown b'4^(^\> ais8)\! b4^(^\> ais8)\!|
    \stemDown b4^(^\> ais8)\! b4 ais8|
    \stemDown b4^( ais8) b4^( ais8)|
    \stemDown b4^(^\> ais8)_\! \stemDown b4^( ais8)|
    g4^( fis!8) g4^( fis8)
    \break
    %rigo Down 3.8
    g4^( fis!8) g4^( fis!8)|
    <<{<des' bes g!>4^( ^\markup {\italic "col canto."} <c bes g>8) <des bes g>4^( <c bes g>8)|
    <b! a fis! dis>2.^(
    <<{\change Staff= "Up" f' 2.)}\\{\change Staff ="Down"  \override Stem.length = #14.0 
    \stemUp <b, a> }\\{\stemDown <f! d!>}>>
    <<{\change Staff= "Up" e'2.^(|
    %\break
    %rigo Down 3.9a
    \change Staff="Down" <d b>4.)^(<d b>8) r r}
    \\{
      \change Staff="Down" \override Stem.length = #14.0 
    \stemUp  <c a>2.^(
    %\break
    %rigo Down 3.9b
    \stemDown a4.)_(gis8)
    }
    \\{
     \change Staff="Down" \stemDown e,2._(
    %\break
    %rigo 3.9c
    e4.)_(e8) e8\rest e8\rest
    }>>
    }
    \\
    {f'4_(e8) f4_(e8)|
    }
    >>
    s1*6/8
      } %Chiude relative low
             
}%Chiude Staff low
>>%Fine Base Piano
  
>>%Fine Piano e Canto

\midi { }
\layout {
    
    %ragged-right = ##t
    %indent = 3\cm
    %short-indent = 2\cm
  }
}