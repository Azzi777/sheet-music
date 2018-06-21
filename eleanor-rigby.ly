\header {
  title = "Eleanor rigby"
  composer = "Arr.: asbjoree"
}

global = { \key e \dorian \tempo "Vivace" 4 = 144  }

right_hand_p = { \global \relative c' { 
  \time 4/4 <e' b e,>2~ <e b e,>8 <fis cis fis,> <g d g,> <a e a,>~ | <a e a,> <g d g,>4 <fis cis fis,>8~ <fis cis fis,> <e b e,>4. | \appoggiatura {bes16} b8. a16 g2. | r1
  e'2~ e8 fis g a~ | a g4 fis8~ fis e4 b8~ | b16 a g8~ g2 r4 | r1 | \bar "||"
  <g d>8-. a-. b-. <g d>->~ <g d> <e b>4. | g8-. a-. b-. d->~ d cis-. b-. cis->~ | cis b-. a-. b->~ b a-. g-. <a e>->~ | <a e>2 r | \time 6/4 g8( a b <c g d>-^) r4 <b e, a,>2. |
  \time 4/4 g8 a b g~ g e4. | g8 a b d~ d cis b cis~ | cis b a b~ b a g a~ | a2 r | g8 a b c~ c4 b |
  a4 g8 a~ a4 b8 g~ | g e4. r4 e8 e'~ | e4 b8 a~ a g g e~ | e2 r | 
  a4 g8 a~ a4 b8 g~ | g e4. r4 e8 g'~ | g4 e8 b~ b a a g |  
}}
right_hand_s = { \global \relative c' { 
  s1 | s | d | s |
}}

dynamics = {
  s1\f | s | s | s | s | s | s | s |
  s\mp | s | s |
}

left_hand = { \global \relative c \clef bass {
  \time 4/4 <e g, c,>1~ | <e g, c,> | <g b, e,>2 e,8-. <g b,>-. fis,-. <g b,>-. | g,-. <g b,>-. fis,-. <g b,>-. e,-. <g b,>-. <fis a, d,>4 | <e g, c,>1~ | <e g, c,> | <g b, e,>~ | <g b, e,> |
  e,8-. b,-. e-. f( fis g4.) | e8-. fis-. g-. b->~ b a-. g-. a->~ | a g-. fis-. g->~ g fis-. e-. c,-> | g,-. c-. d( dis e2) | \time 6/4 e8( fis g <a c>-^) r4 <g b, e,>2. |
  \time 4/4 e,8-. b,-. e-. f( fis g4.) | e8-. fis-. g-. b->~ b a-. g-. a->~ | a g-. fis-. g->~ g fis-. e-. c,-> | g,-. c-. d( dis e2) | \time 6/4 e8( fis g <d' g>-^) r4 <g b, e,>2. |
}}

\score {
  \new PianoStaff  <<
    \new Staff <<
      \new Voice \right_hand_p
      \new Voice \right_hand_s
    >>
    \new Dynamics \dynamics
    \new Staff \left_hand
  >>
  \layout {}
  \midi {}
}