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
  \partial 16 a'16|
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
  }
\addlyrics{
Pro -- stra -- ta _ nel -- la pol -- ve -- re schia -- va ai _ tiranni
tuo -- i ma -- dre d'in -- vit -- ti E -- ro -- _ i vi -- ve -- vi in _ pian -- to?
di vi -- ve -- vi in pian -- to i di ma su nel ciel più
}
  \layout {
  ragged-last = ##t
  }
  \midi {}
}
