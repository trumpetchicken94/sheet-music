\version "2.26.0"
% automatically converted by musicxml2ly from BARBIE AHHh.xml
\pointAndClickOff

%% additional definitions required by the score:
D = \tweak Stem.direction #DOWN \etc
U = \tweak Stem.direction #UP \etc


\header {
  title = "Barbie"
  subtitle = "Trumpet Choir Arrangement"
  composer = "Alejandro Pereira"

  "id: software" = \markup \column {
    \line { "Audiveris 5.10.2" }
    \line { "ProxyMusic 4.0.3" }
  }
  "id: encoding-date" = "2026-07-08"
  "id: source" = "/Users/frisal/Downloads/processed-img-1783534625620-580.jpg"
}
#(set-global-staff-size 17.3448)
\paper {
  paper-width = 24.03\cm
  paper-height = 30.37\cm
  top-margin = 1.22\cm
  bottom-margin = 1.22\cm
  left-margin = 1.22\cm
  right-margin = 1.22\cm
  indent = 1.85\cm
  short-indent = 1.85\cm
}
\layout {
  \context {
    \Staff
    printKeyCancellation = ##f
  }
  \context {
    \Score
    autoBeaming = ##f
  }
}
PartPOneVoiceOne = \relative es' {
  \clef "treble" \numericTimeSignature \time 4/4 \key es \major \U <es g>8 [ [
  _\pp \U c8 \U <es g>8 _. ] ] b'8\rest \U <f as>8 [ [ \U c8 ] \U <f as>8 _. b16\rest
  \U <d, f bes>16 | % 1
  \U <d f bes>4 b'8\rest \U as16 [ \U bes16 ] \U as4 \U g4 | % 2
  \U <es g>4 \U <d f as>4 \U <d f bes>4 \U <es g>8 b'16\rest \U g16 _> \break | % 3
  \U as16 _. [ _\< \U g16 \U dis8 _. ] \U g8 _. [ \U c8 _. ] \U gis4 \! \U f8 [
  _\mp \U <as, as'>8 ] ] }

PartPOneVoiceFive = \relative c {
  \clef "bass" \numericTimeSignature \time 4/4 \key es \major \oneVoice \D <c es
    g c>8 ^- d8\rest c4\rest \U <f, as c f>8 _- d'8\rest d8\rest c16\rest c16\rest
  | % 1
  \D <bes d f bes>4 d4\rest \D <es as c>4 d4\rest | % 2
  \U <g, c es g>4 \U <f as c f>4 \U <f bes d f>4 \U <g c es g>8 d'8\rest \break
  | % 3
  \U <es, g c>4 e'4\rest \U f,8 [ \U as8 \U <as c f>8 _- ] ] ] _\p d8\rest }




% The score definition
\score {
  <<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Piano"
      \set PianoStaff.shortInstrumentName = "Piano"
      \context Staff = "1" <<
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceOne" {
          \PartPOneVoiceOne
        }
      >>
      \context Staff = "2" <<
        \override Staff.BarLine.allow-span-bar = ##f
        \mergeDifferentlyDottedOn
        \mergeDifferentlyHeadedOn
        \context Voice = "PartPOneVoiceFive" {
          \voiceOne \PartPOneVoiceFive
        }
        \context Voice = "PartPOneVoiceSix" {
          \voiceTwo \PartPOneVoiceSix
        }
        \context Voice = "PartPOneVoiceSeven" {
          \voiceThree \PartPOneVoiceSeven
        }
      >>
    >>
  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
  % \midi { \tempo 4 = 100 }
}