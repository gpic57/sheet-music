\header {
  title = "All'Italia"
  subtitle = "Inno popolarissimo"
  composer = "Pompilio Casotti"
  arranger = "Trascritto da: pic57"
}

\score {
  \relative c' {
  \time 4/4
  \tempo 4=120
  \key d \major
  %rigo canto 1.1
  \partial 16 a'16 ^\markup{\bold "Tempo di marcia"}|
  a4 b8. a16 fis4 g|
  a4. \stemUp b8 a4 r|
  e4 e8. fis16\noBeam g4 \stemUp b|
  \break
  %rigo canto 1.2
  b4. a8 fis4 r|
  a4 b8. a16 fis4 g|
  a4. b8 a4 r8. a16|
  \stemDown cis4 ^\f b8.^\> a16\noBeam gis4 \! \stemUp b8._\> a16\!|
  \break
  %rigo canto 1.3
  fis2...^\> fis16\!|
  a4 ^\p g8. g16\noBeam e4 fis8. e16\noBeam|
  d2 r|
  \stemDown b'4 ^\f b8. b16\noBeam c4. b8|
  \break
  %rigo canto 1.4
  b4. g8 b4 r|
  \stemUp a4 a8. a16\noBeam a4 gis4|
  \stemDown b4. \stemUp a8 fis4 r8. a16|
  \stemUp a4 \stemDown b8. a16\noBeam \stemUp fis4 g|
  \break
  %rigo canto 1.5
  a4. b8 a4 r|
  e4 e8. fis16\noBeam g4 \stemDown cis8. b16\noBeam|
  \stemUp a2...^\< a16\!|
  b8[^\ff a] gis a fis4 \stemDown d'|
  \break
  %rigo canto 1.6
  cis4. b8 e2|
  d4 \stemUp fis,8. b16\noBeam a4 e8. fis16\noBeam|
  d2 r2|
  R1*4/4^\fermata \bar "|."
  }
\addlyrics{
Pro -- stra -- ta _ nel -- la pol -- ve -- re schia -- va ai _ tiranni
tuo -- i ma -- dre d'in -- vit -- ti E -- ro -- _ i vi -- ve -- vi in _ pian -- to?
di vi -- ve -- vi in pian -- to i di ma su nel ciel più
vi -- vi -- da tor -- na a bril -- lar tua stel -- la ri -- sor -- gi I -- ta -- lia
bel -- _ la il do -- lor tu -- o fi -- nì ri -- _ sor -- gi I -- ta -- lia
}
  \layout {
  ragged-last = ##t
  }
  \midi {}
}
