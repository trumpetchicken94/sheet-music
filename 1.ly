\version "2.26.0"
\pointAndClickOff

\header {
  title = "Barbie"
  subtitle = "Arranged for Trumpet Choir (4 Parts) - Tpt 4 Octave Up"
  composer = "Alejandro Pereira"
  arranger = "Arr. AI Collaborator"
  "id: encoding-date" = "2026-07-08"
}

#(set-global-staff-size 16)

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  indent = 2.0\cm
  short-indent = 1.0\cm
}

%--- TRUMPET PARTS (Written in F Major for Bb Trumpets) ---

TrumpetI = \relative c'' {
  \clef "treble"
  \time 4/4
  \key f \major
  
  % Measure 1
  a8 [ _\pp f8 a8 _. ] r8 bes8 [ f8 ] bes8 _. r16 c16 |
  % Measure 2
  c4 r8 bes16 [ c16 ] bes4 a4 |
  % Measure 3
  a4 g4 c4 a8 r16 a16 _> |
  % Measure 4
  bes16 _. [ _\< a16 e8 _. ] a8 _. [ d8 _. ] b4 \! a8 [ _\mp c8 ] \bar "|."
}

TrumpetII = \relative c'' {
  \clef "treble"
  \time 4/4
  \key f \major
  
  % Measure 1
  f,8 [ _\pp d8 f8 _. ] r8 d8 [ d8 ] d8 _. r16 g16 |
  % Measure 2
  g4 r8 d16 [ g16 ] d4 f4 |
  % Measure 3
  f4 d4 e4 f8 r16 f16 _> |
  % Measure 4
  g16 _. [ _\< f16 cis8 _. ] f8 _. [ a8 _. ] g4 \! f8 [ _\mp f8 ] \bar "|."
}

TrumpetIII = \relative c' {
  \clef "treble"
  \time 4/4
  \key f \major
  
  % Measure 1
  c8 [ _\pp a8 c8 _. ] r8 a8 [ a8 ] a8 _. r16 d16 |
  % Measure 2
  g,4 r8 f16 [ g16 ] f4 d'4 |
  % Measure 3
  c4 b4 g4 c8 r16 c16 _> |
  % Measure 4
  d16 _. [ _\< c16 a8 _. ] d8 _. [ f8 _. ] d4 \! c8 [ _\mp c8 ] \bar "|."
}

TrumpetIV = \relative c' {
  \clef "treble"
  \time 4/4
  \key f \major
  
  % Measure 1
  f8 ^- r8 r4 d8 _- r8 r4 |
  % Measure 2
  c4 r4 d4 r4 |
  % Measure 3
  a'4 bes4 c4 f8 r8 |
  % Measure 4
  f,4 r4 d'8 [ f8 f8 _- ] r8 \bar "|."
}

%--- SCORE BLOCK ---

\score {
  \new StaffGroup <<
    \new Staff \with { instrumentName = "Bb Trumpet 1" shortInstrumentName = "Tpt. 1" } { \TrumpetI }
    \new Staff \with { instrumentName = "Bb Trumpet 2" shortInstrumentName = "Tpt. 2" } { \TrumpetII }
    \new Staff \with { instrumentName = "Bb Trumpet 3" shortInstrumentName = "Tpt. 3" } { \TrumpetIII }
    \new Staff \with { instrumentName = "Bb Trumpet 4" shortInstrumentName = "Tpt. 4" } { \TrumpetIV }
  >>
  \layout {
    \context {
      \Score
      autoBeaming = ##f
    }
  }
  \midi { \tempo 4 = 100 }
}