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
%rigo 
  }
\addlyrics{
Pro -- stra -- ta _ nel -- la pol -- ve -- re schia -- va ai _ tiranni
}
  \layout {
  ragged-last = ##t
  }
  \midi {}
}
