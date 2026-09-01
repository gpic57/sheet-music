\version "2.26.0"
\header {
  title = "Non piango più"
  composer = "Giano Bradi"
}

\score {
  <<
    % --- RIGO CANTO ---
    \new Staff \with {
      instrumentName = \markup{\italic "CANTO" }
      
    } {
      \new Voice = "canto" \relative c'' {
        \key f \major
        \time 6/8
        \tempo 4.= 60
        % Inserisci qui le note della melodia
        R1*6/8 |
        r8 ^\markup{\italic "Con calma"} r g g4 g8 |
        g2 r4|
        R1*6/8|
        \break
        %rigo canto 1.2
        R1*6/8 _\markup{\italic "Sensibile il canto."}|
        r4^\markup{\italic "semplice"}  r8  \autoBeamOff ^\< c c c |
        d2.\>|
        d8\! d d e4 d8|
        c4.^( a4) r8|
        \break
        %rigo canto 1.3
        r4 r8 ^\< bes bes a \>|
        c4.^( bes8) r8 \! a|
        c4 bes8 fis4 g8|
        a4._( f4) r8|
        r4 r8 r4 ^\< c'8\!|
        \break
        %rigo canto 2.4
        f4. e|
        d2.|
        d8 cis d e4 d8|
        cis4.^\( a4\)r8|
        r4 r8 des des des|
        \break
        %rigo canto 2.5
        c4.^\> b|
        bes4 bes8 a4 a8\!^\p|
        g2._\(|
        f4\) r8 r4 r8|
        R1*6/8|
        \break
        %rigo canto 2.6
        r8 ^\markup{\italic "Con anima"} r c' des4 ees8|
        des4.^\( c8\) r r|
        r4 r8 beses r16 bes bes bes|
        aes4._\( f8\) r r|
        \break
        %rigo canto 2.7
        r8 r c' des8[ f] ^\markup{\italic "ten."} ees8|
        des4.^\( c8\) r r|
        r4 r8 beses beses16 beses beses beses|
        aes4._\( f8\) r r|
        %rigo canto 3.8
        \autoBeamOff f8 f f f'4 e!8|
        f4.^( f,8) r r|
        f8 ^\markup{\italic "rit."} e f e'4 d8|
        c4 r8 r4 r8|
        r4 r8 d8^\< d  d\!|
        \break
        %rigo canto 3.9
        ees4.^( ^\> d8)\! r r|
        r4 r8 e!^\markup{\italic "incalz."} e ^\< e|
        f4.\> ^(  e8)\! r r|
        g4 ^\markup{\italic "rit: tutta la passione"} f8 g4 f8|
        g4 f8 c4 a8|
       \break
       %rigo canto 3.10
        des2.^^ ^( ^\markup{italic "grande"}|
        c2.^^)|
        f,4 r8 r4 r8|
        r4  g8 ^\p g4 g8|
        g2 r4|
        \break
        %rigo canto 3.11
        r4 c8 ^\markup{\italic "rit..."} c4 c8|
        c2. ^\markup{\italic "a Tempo"} ^\<|
        f8 ^\markup{\italic "espansivo"} f f f4^\> f8\!|
        d4. d|
        \break
        %rigo canto 4.12
        \autoBeamOff d8 cis d e4 d8|
        c4 r8 c^\< c c |
        des4 \! r8 r4 r8|
        r4 r8 b b b|
        \break
        %rigo canto 4.13
        des4. a4 a8|
        g4.^\< ^\markup{\italic "rit."} c4.\>|
        f,4\! r8 r4 r8|
        r8 r f^\< f4 f8\!|
        \break
        %rigo canto 4.14
        aes2.^>|
        r4 r8 r4 f8|
        ^\< f4 f8 f4 f8\!^\ff|
        f'2.^\fermata^\(^\>|
        f,4\)\! r8 r4 r8|
        \break
        %rigo canto 4.15
        r4 g8 g4 g8|
        c2 r4|
        r8 ^\markup{\italic "rit...."} c,8[ cis] d[ dis] e|
        f2.~|
        f2.~|
        f4 r8 r4^\fermata r8  \bar "|."
      }
    }
    
    % --- TESTO VOCALE ---
     \addlyrics{ 
 Non pian -- go più
 Non piango più,... _ sono _ tran -- quil -- la_an -- co__--__ra,
 e go -- do star.... _coll'al -- tre_in com -- pa -- gni -- a... _ma
 pria che_in ciel spun -- ti la bel -- la_au -- ro_ ra mi sve -- glio
 sem -- pre la ma -- lin -- co -- ni -- a
 ep -- pur non pian -- go, ma mi batte il co -- re
 ep -- pur non pen -- so al -- lo per -- du -- to_a -- mo -- re!
 al -- lo per -- du -- to_a -- mo -- re io più non pen -- so non piango _
 più... non pian  -- go più... ma il mio do -- lo -- _ re è_im-
 men -- so. non pian -- go più....
 non pian -- go più..... al -- lo per -- du -- to_a -- mo -- re
 io più non pen -- _ so, non pian -- go più... ma_il mio do-
 lo -- re è im -- men -- so non pian -- go
 più.... ma_il mio do -- lo -- re_è_im -- men -- so
 non pian -- go più... non pian -- go più............................
   }

    % --- SISTEMA PIANOFORTE ---
    \new PianoStaff \with {
      instrumentName = \markup {
      \center-column { \bold "Andante" \bold "con moto" }}
    } <<
      % Mano Destra
      \new Staff = "right" \relative c'' {
        \key f \major
        \time 6/8
        % Inserisci qui le note della mano destra
        <<
        {f,2._\pp}
       \\
        {f8 e ees d des c}
        >>
        <g' f>2._(|
        <g f d>2.)_(^(|
        <c e,>4)) r4 r8 r|
        \break
        %rigo 1.2
        <<{f4. e4.|
        d4. c|
        bes4. bes|
        bes4. c4 bes8|
        a4.^( f4) r16 a|
        \break
        %rigo up 1.3
        c4.^^ bes4 a8|
        c4.^^ bes4 a8|
        c4 bes8 fis4 g8|
        a4.^(f4) r8|
        f'4.^^ e4.^^|
        \break
        %rigo up 2.4
        d4. c|
        bes4. bes|
        bes4. c4 bes8|
        a4.^( f4) r8|
        des'4.^^ des^^|
        \break
        %rigo up 2.5
        c4.^^ b^^|
        bes4.^^ a^^|
        g4.^^ e|
        f2.^(^\pp|
        f8) r ^\< \stemDown f'8 f4 f8 \!|
        }
        \\
        {r8 <a f><a f> r <a f><a f>|
        r8 <a f><a f> r8 <a f><a f>|
        r8 <g d> <g d> r <g d> <g d>|
        r8 <g d> <g d> r <g c,> <g c,>|
        r8 <c, a><c a> r8 <c a><c a>|
        \break
        %rigo up 1.3
        r8 <a' fis c>8 <a fis c> r8 <g e c><g e c>|
        r8 <a fis c>8 <a fis c> r8 <g e c><g e c>|
        r8 <a d, cis>8 <g e cis> r <d cis> <e cis>|
        r8 <c a><c a> r <c a><c a>|
        r8 <a' f>8 <a f> r <a f> <a f>|
        \break
        %rigo up 2.4
        r8 <a f><a f> r <a f><a f>|
        r8 <g d><g d> r <g d><g d>|
        r8 <g d><g d> r <g c,><g c,>|
        r8 <c, a><c a> r <c a><c a>|
        r _\mf <g' fes d><g fes d> r <g fes d><g fes d>
        \break
        %rigo up 2.5
        r8 <a, f c><a f c> r <aes f b,><aes f b,>|
        r8 <g des bes!><g des bes> r <f c a><f c a>|
        r8 _\p <des bes g><des bes g> r <c bes g><c bes g>|
        \stemUp <c a>2.~|
        <c a>8 r \stemDown f8 _\markup{\italic "rit."} f4 f8|
        }
        >>
        \break
        %rigo up 2.6
        <f' f,>4^\markup{\italic "a Tempo"}  <e! e,!>8<f f,>4 <ges ges,>8|
        <f f,>4._(^(<ees ees,>8)) r r|
        <es, c>8[_\pp <es c> <es c>]
        <es c>[ <es c><es c>]|
        r8 des des des des des|
        \break
        %rigo up 2.7
        <f' f,>4^\markup{\italic "a Tempo"}  \stemDown <e! e,!>8<f f,>8 <aes aes,> <ges ges,>8|
        <f f,>4._(^(_ \><ees ees,>8))\! r r|
        \stemUp <es, c>8[_\ppp <es c> <es c>]
        <es c>[ <es c><es c>]|
        r8 des des des des des|
        \break
        %rigo up 3.8
        r4 r8 <f' f,>4 \stemDown <e! e,!>8|
        <f f,>4.~ <f f,>4 r8|
        r4 r8 <e e,>4 \stemUp <d d,>8|
        <c c,>4. <c c,>8 <b b,> <c c,>|
        \stemDown <ees ees,>4. \stemUp <d d,>|
        \break
        %rigo up 3.9
        \stemDown <ees ees,>4. <d d,>8 <d d,><d d,>
        <f f,>4. ^\markup{\italic "sempre più incalz..................riten."} <e! e,!>|
        <f f,>4. <e e,>8 <e e,><e e,>|
        <g g,>4 <f f,>8 <g g,>4 <f f,>8|
        <g g,>4 <f f,>8 \stemUp <c c,>4 <a a,>8|
        \break
        %rigo up 3.10
        <des ges, des>2. _\markup{\dynamic ff \italic "col canto"}
        <c g! e c>2.|
        <<{f,2.^^}\\{f8[ _\pp e ees] d[ des c]}>>|
        <g' f>2.|
        <g^( f d_(>2.
        \break
        %rigo up 3.11
        <c e,>4)) r8 r4 r8|
        <<{f4.^^ e^^|
        d^^ c^^|
        bes^^ bes^^|
        }
        \\
        {r8 _\markup{\dynamic p \italic "a Tempo"} <a f><a f> r <a f><a f>|
        r8 <a f><a f> r <a f><a f>|
        r8 <g d><g d> r <g d><g d>|
        }
        >>
        \break
        %rigo up 4.12
        <<{bes4. c4^^ ^( bes8)|
        a4.^( f4) r8|
        des'4.^^ des^^|
        c4.^^ b^^|
        \break
        %rigo up 4.13
        bes4.^^ a^^|
        g4.^^ e^^|
        f2.~^\markup {\italic "a Tempo"}|
        f2.~|
        \break
        %rigo up 4.14
        f2.~|
        f2.~|
        f2.|
        f2.^\fermata|
        f2.
        \break
        %rigo up 4.15
        f2.^(|
        e8) f g a bes b|
        <c c,>4 b8\rest _\markup{\italic "col canto."} b4\rest b8\rest|
        f4.^^ f^^|
        f4.^^ f^^|
        f4 r8 r4^\fermata r8 \bar "|."
        }
        \\
        {r8 <g d><g d>r8 <g c,><g c,>
        r8 <c, a><c a> r <c a><c a>|
        r8 <g' fes d><g fes d>r8 <g fes d><g fes d>|
        r8  <a f c><a f c> r <aes f b,><aes f b,>
        \break
        %rigo 4.13
        r8 <g des bes!><g des bes> r <f c a><f c a>|
        r8 _\markup{\italic "col canto"}<des bes g><des bes g> r <c bes g><c bes g>|
        r8 _\pp <f c a> <f c a> r <f c a><f c a>|
        r8 <f c a> <f c a> r <f c a><f c a>|
        \break
        %rigo 4.14
        r8_\f <f des aes><f des aes> <f des aes><f des aes><f des aes>|
        r8 _\pp <f c a!><f c a> r <f c a><f c a>|
        r8 ^\< <f c a><f c a> r <f c a><f c a>\!_\ff|
        \stemUp <aes, f>2.|
        \stemDown f'8 _\pp e ees d des c|
        \break
        %rigo 4.15
        \stemUp g'2.|
        \stemDown c,2.~|
        \stemUp c4 s2|
        r8 \stemDown <a f><a f> r <aes f><aes f>|
        r8 <a! f><a f> r8 <aes f><a f>|
        \stemUp <a! f>4 s2 \bar "|."
        }
        >>
      }
      
      % Mano Sinistra
      \new Staff = "left" \relative c {
        \key f \major
        \set Staff.connectArpeggios = ##t
        \time 6/8
        \clef bass
        
        % Inserisci qui le note della mano sinistra
        %rigo down 1.1
        s1*6/8|
        b'2.^(|
        bes!8) a g f e d|
        c4 r4 r8 r|
        \break
        %rigo down 1.2
        r8 <c' f,><c f,> r <c f,><c f,>|
        r8 <c f,><c f,> r <c a f><c a f>|
        r8 <bes g f><bes g f> r <bes g f><bes g f>|
        r8 <bes g e><bes g e> r <bes g e><bes g e>|
        r8 <f c f><f c f> r <f c f><f c f>|
        \break
        %rigo down 1.3
        r8 <a fis c>8 <a fis c> r <bes g c,><bes g c,>|
        r8 <a fis c>8 <a fis c> r <bes g c,><bes g c,>|
        r8 <a fis c> <bes g c,> r8 <a fis c> <bes e, c>|
        r8<f c f,><f c f,> r <f c f,> <f c f,>|
        r8 <c' f,><c f,> r <c f,> <c f,>
        \break
        %rigo down 2.4
        r8 <c f,><c f,> r <c a f><c a f>|
        r8 <bes g f><bes g f> r <bes g f><bes g f>|
        r8 <bes g e><bes g e> r <bes g e><bes g e>|
        r8 <f' c f,><f c f,> r <f c f,><f c f,>|
        <bes, bes,>4.^^ <b b,>^^|
        \break
        %rigo down 2.5
        <c, c,>4.^^ <d d,>^^|
        <e e,>4._^ <f f,>_^|
        <bes, bes,>_^ <c c,>_^
        <<{f8\arpeggio e f e f e}\\{<c f,>8\arpeggio r r r4 r8}>>
        f8 e f e ees d|
        \break
        %rigo down 2.6
        \stemDown <bes bes,>8 <des' aes f><des aes f><des aes f><des aes f><des aes f>|
        <ees, ees,>8 <des' beses ges> <d bes ges><c bes ges><c bes ges><c bes ges>|
       
        <<
      % VOCE 1: Le note dell'accordo che si collegano al rigo sopra
      \new Voice {
        \voiceOne % Forza i gambi verso l'alto
        % \crossStaff unisce i gambi di queste note alla travatura del rigo superiore
        \crossStaff { 
          g8 g g g g g|
         s8 <aes f><aes f><aes f><aes f><aes f>
        }
      }
      
      % VOCE 2: Il basso profondo indipendente (con abbellimenti e frecce)
      \new Voice {
        \voiceTwo % Forza i gambi e le pause verso il basso
        \relative c {
         \stemUp \acciaccatura { ges16[ aes] } \stemDown beses4._^ <c c,>4._^|
          <des des,>2.|
        }
      }
    >>
    %rigo down 2.7
       \stemDown <bes, bes,>8 <des' aes f><des aes f><des aes f><des aes f><des aes f>|
        <ees, ees,>8 <des' beses ges> <d bes ges><c bes ges><c bes ges><c bes ges>| 
<<
      % VOCE 1: Le note dell'accordo che si collegano al rigo sopra
      \new Voice {
        \voiceOne % Forza i gambi verso l'alto
        % \crossStaff unisce i gambi di queste note alla travatura del rigo superiore
        \crossStaff { 
          g8 g g g g g|
         s8 <aes f><aes f><aes f><aes f><aes f>
        }
      }
      
      % VOCE 2: Il basso profondo indipendente (con abbellimenti e frecce)
      \new Voice {
        \voiceTwo % Forza i gambi e le pause verso il basso
        \relative c {
         \stemUp \acciaccatura { ges16[ aes] } \stemDown beses4._^ <c c,>4._^|
          <des des,>4. r4 r8|
        }
      }
    >>
    \break
    %rigo down 3.8
    <<
    { 
      \voiceOne 
       \override NoteColumn.force-hshift = #0
      
      % Rende trasparente solo la testa della prima croma
      \once \override NoteHead.transparent = ##t
      d,8 <aes' f> <aes f> <aes f><aes f><aes f>| 
      e8 <aes f> <aes f> <aes f><aes f><aes f>|
      \once \override NoteHead.transparent = ##t
      b,8 <fis' g><fis g><fis g><fis g><fis g>|
      c8 <a' f> <a f> <a f><a f><a f>|
      \once \override NoteHead.transparent = ##t
      c,8 <a' fis> <a fis> <a fis><a fis><a fis>|
      \break
      %rigo down 3.9
      \voiceOne 
       \override NoteColumn.force-hshift = #0
      % Rende trasparente solo la testa della prima croma
      \once \override NoteHead.transparent = ##t
      c,8 <bes' g> <bes g> <bes g><bes g><bes g>|
      \once \override NoteHead.transparent = ##t 
      c,8 <b' gis> <b gis> <b gis><b gis><b gis>|
      \once \override NoteHead.transparent = ##t
      c,8 <c' a><c a><c a><c a><c a>|
      c,8 <des' b g f> <des b g f> a,8 <d' b g f><d b g f>|
      \once \override NoteHead.transparent = ##t
      c,8 <c' a f> <c a f> <a f><a f><f>|
      \break
    }
    \\
    { 
      \voiceTwo 
       \override NoteColumn.force-hshift = #0
      d2.|
      e4 r8 r4 r8|
      b2.|
      \override NoteColumn.force-hshift = #0
      c4. r4 r8|
      c2.|
      \break
      %rigo down 3.9
      \voiceTwo 
       \override NoteColumn.force-hshift = #0
      c2.|
      c2.|
      c2.|
      \override NoteColumn.force-hshift = #0
      c4. a4.|
      <c c,>2.|
    }
  >>
  \break
  %rigo down 3.10
  \stemUp <bes bes,>2.|
  <c c,>2.|
  R1*6/8|
  \stemDown b'2.^(|
  bes!8) a g f e d
  \break
  %rigo down 3.11
  c4 r8 r4 r8|
  r8 <c' f,><c f,> r <c f,><c f,>|
  r8 <c f,> <c f,>  r <c a f><c a f>|
  r8 <bes g f><bes g f> r <bes g f><bes g f>|
  \break
  %rigo down 4.12
  r8 <bes g e><bes g e> r <bes g e><bes g e>|
  r8 \stemUp <f c f,><f c f,> r <f c f,><f c f,>|
  <bes, bes,>4._^ <b b,>_^|
  <c c,>4._^ <d d,>_^|
  \break
  %rigo down 4.13
  <e e,>4._^ <f f,>_^|
  <bes, bes,>4._^ <c c,>_^|
  <f f,>4._^_( <e e,>_^|
  <d d,>4.^\markup {\italic "cres."} <c c,>)|
  \break
  %rigo down 4.14
  <b b,>2._^|
  <f' f,>4._( <e e,>|
  <d d,>4.^\markup{\italic "cres."} <c c,>)|
  <des des,>2.^\fermata|
  s1*6/8
  \break
  %rigo down 4.15
  \stemDown b'!2.^(|
  bes!8 a g^\markup{\italic "rit...."} f e d|
  c4 r8 r4 r8|
  r8 \stemUp <c f,><c f,> r8 <des des,> <des des,>|
  r8 \stemUp <c f,><c f,> r8 <des des,> <des des,>|
  <c f,>4 r8 r4^\fermata r8 \bar "|."
        }
    >>
  >>
  \layout { 
  indent = 2.5\cm 
  \context {
    \PianoStaff
    % Questo comando dice a LilyPond di permettere ai gambi di unire i due righi
    \consists "Span_stem_engraver" 
  }
  }
  \midi { }
}
