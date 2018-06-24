\header {
  title = "Eleanor Rigby"
  composer = "Arr.: asbjoree"
}

global = { \key e \minor \tempo "Vivace" 4 = 144}

right_hand_p = { \global \relative c' { 
  \time 4/4 <e' g,>4. \stemDown g,16( b d8 fis <g b,> <a c,>~) \stemNeutral | q <g b,>4 <fis a,>8~ q <e g,>4. | \appoggiatura {bes16} b8. a16 g2 s4 | s1 \break
  <g d>4 d16 es e8~ e <g d> <a e> <d a>~ | q <b g>4 <a fis>8~ q <g e>4 <a fis>8~ | <a fis>1 | r8 b'16( a fis8 d b a) e-. fis-. | \bar "||"
  <g d>8-. a-. b-. <g d>->~ q <e b>4. | \stemUp g8-. a-. b-. <d a>->~ q cis-. b-. <cis e,>->~ | q b-. a-. <b fis>->~ q a-. g-. <a e>->~ | q2 \stemNeutral r | 
  \time 6/4 g8^( a b <c g d>-^) r4 <b e, a,>2.-> | \time 4/4 r1 |
  <a e>8 q <b fis> <g d> r4 <e b>8 fis | g a b d~ d cis b cis~ | cis b a b~ b a g a^~ | a1 | 
  \time 6/4 g8^( a b <c g d>-^) r4 <b e, a,>2.-> | \time 4/4 r1 | r \bar "||" |

  <a e>8 q <g d> <a e>~ q q <b fis> <g d>~ | q <e b>4. r4 \stemDown e8 <e' b fis>~ | q4 \stemNeutral <b fis>8 <a e>~ q q \acciaccatura{fis} g e~ | e2 r | 
  <a e>8 q <g d> <a e>~ q q <b fis> <g d>~ | q <e b>4. r4 \stemDown e8 <g' b,>~ | q4 <fis a,>8 <e b>~ q4 <b d,>8 <a c,>8~ | q4 <g b,>4 r2 | \bar "||"
}}
right_hand_s = { \global \relative c' { 
  s1 | s | \stemDown d2. \stemNeutral \tiny a8 b | \repeat unfold 4 {r <b a>-.} \normalsize | s1 | s | s | s |
  s | s | s | s | s1. | s1 | s | s | s | s | s1. | s1 |
}}

dynamics = {
  s1\f | s | s | s | s | s | s | s8 s4.\mp s2 |
  s1 | s | s | s | s4.\< s8\f s1 | s1\mp
  s | s | s | s | s4.\< s8\f s1 | s1\mp | s
  s | s | s | s | s\mf |
}

left_hand_p = \relative c { \global \clef bass
  <e g, c,>1~ | q | <g b, e,>1~ | <b, e,> | 
  <e g, c,>1~ | q2 <fis a, d,> | <g b, e,>1~ | q2. e8-. b-. |

  e,8-. b'-. e-. c( fis g4.) | e8-. fis-. g-. b->~ b a-. g-. a->~ | a g-. fis-. g->~ g fis-. e-. c,-> | 
  g'-. c-. d( dis e2) | \stemDown e8( fis g <a c,>-^) r4 <g b, e,>2.-> \stemNeutral | e,8 b' d e fis e d b

  e,8-. a-. b-. d-. e-. fis-. g-. a-. | \clef treble b8-. cis-. d-. fis->~ fis e-. d-. e->~ | e d-. cis-. d->~ d cis-. b-. c \clef bass | 
  c,,8-^ e-. g-. a-. d( dis e4) | \stemDown e8( fis g <a c,>-^) r4 <g b, e,>2.-> \stemNeutral | 
  
  \repeat unfold 6 {e,8-. b'-. d-. e-. fis-. e-. d-. b-.}
  c,8 g' c d e d c g | d8 a' d e fis e d a | e8 b' d e fis e d b | e,8 b' d e fis e d b |
}

left_hand_s = { \global \relative c \clef bass {
  s1 | s | s | \tiny g4-. fis-. g-. fis-. \normalsize |
  }}


\score {
  \new PianoStaff <<
    
    \new Staff <<
      \new Voice \right_hand_p
      \new Voice \right_hand_s
    >>
    \new Dynamics \dynamics
    \new Staff <<
      \new Voice \left_hand_p
      \new Voice \left_hand_s
    >>
  >>
  \layout {}
  \midi {}
}