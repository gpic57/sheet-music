\header {
  title = "32. Bacchica"
  subtitle = "Le canzonete dei nostri veci"
  composer = "Canzone popolare"
  arranger = "Luigi Bauch. Trascritto da: pic57"
}

\score {
  \relative c' {
  \time 6/8
  \tempo 4=120
  \key g \major
  %rigo canto 1.1
\partial 8 d8 ^\markup{"I"\super"a" "voce"} \bar ".|:"
g8 a b a r fis^\markup{"II"\super"a" "voce"}|
g4.~g8 r d^\markup{"I"\super"a" "voce"}|
\break
%rigo canto 1.2
g8 a b a r fis^\markup{"II"\super"a"}|
g4.~g8 r d^\markup{"I"\super"a"}|
b'8 c d c r8 b^\markup{"II"\super"a"}|
\break
%rigo canto 1.3
a4. d4^\markup{"Coro"} d8|
d4 d8 d4 b8|
d4.~ d8 r8 d,^\markup{"I"\super"a"}|
\break
%rigo canto 1.4
g8 a b a r fis^\markup{"II"\super"a"}|
g4.~g8 r d^\markup{"I"\super"a"}|
g8 a b a r fis^\markup{"II"\super"a"}|
\break
%rigo canto 1.5
g4.~g8 r d^\markup{"I"\super"a"}|
b'8 c d c r b^\markup{"II"\super"a"}|
a4. d4^\markup{"Coro"} d8|
\break
%rigo canto 1.6
d4 d8 d4 d8|
g,4~g8 r r4 \bar ":|."
  }
\addlyrics{
E co -- me la va? Mai mal!... E
co -- me la va? Mai mal!... E co me la va? Mai
mal! Ca -- ma -- rier portè un bu -- cal... E
co -- me la va? Mai ben! E co -- me la va? Mai
ben!... E co -- me la va? Mai ben! Ca ma- 
rier por te -- lo pien
}
  \layout {
  ragged-last = ##t
  }
  \midi {}
}