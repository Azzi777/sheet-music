\header {
  title = "Eleanor Rigby"
  composer = "Arr.: asbjoree"
}

global = { \key e \minor \tempo "Vivace" 4 = 144}

right_hand_p = { \global \relative c' { 
  \time 4/4 <e' g,>4. \stemDown g,16( b d8 fis <g b,> <a c,>~) \stemNeutral | q <g b,>4 <fis a,>8~ q <e g,>4. | \appoggiatura {bes16} b8. a16 g2 s4 | s1 \break
  <g d>4 d16 es e8~ e <g d> <a e> <d a>~ | q <b g>4 <a fis>8~ q <g e>4 <a fis>8~ | <a fis>1 | r8 b'16( a fis8 d b a) e-. fis-. | \bar "||"
  <g d>8-. a-. b-. <g d>->~ q <e b>4. | \stemUp g8-. a-. b-. <d g,>->~ q cis-. b-. <cis g>->~ | q b-. a-. <b fis>->~ q a-. g-. <a e>->~ | q2 \stemNeutral r | \time 6/4 g8^( a b <c g d>-^) r4 <b e, a,>2.-> |
  \time 4/4 g8-. a,-. b'-. g-. a,-. d( e fis | g8 a b d) s  \stemUp cis b cis | s b a b s a g a^~ | a1 \stemNeutral | \time 6/4 g8^( a b <c g d>-^) r4 <b e, a,>2.-> | \bar "||"
  \time 4/4 <a e>8 q <g e> <a e>~ q8 q <b fis>8 g~ | g e4. r4 \stemDown e8 <e' b fis>~ | q4 \stemNeutral b8 <a fis>~ q g~ g e~ | e2 r | 
  a4 g8 a~ q4 b8 g~ | g e4. r4 e8 <g' b,>~ | q4 <fis a,>8 <e b>~ q4 <b d,>8 <a c,>8~ | q4 <g b,>4 r2 | \bar "||"
}}
right_hand_s = { \global \relative c' { 
  s1 | s | \stemDown d2. \stemNeutral \tiny a8 b | \repeat unfold 4 {r <b a>-.} \normalsize | s1 | s | s | s |
  s | s | s | s | s1. | s1 | s2 \stemDown e | d cis | c1 \stemNeutral | s1. |
}}

dynamics = {
  s1\f | s | s | s | s | s | s | s8 s4.\mp s2 |
  s1 | s | s | s | s4.\< s8\f s1 |
  s\mp | s | s | s | s4.\< s8\f s1 |
  s\mp | s | s | s | s\mf |
}

left_hand_p = { \global \relative c \clef bass {
  <e g, c,>1~ | q | <g b, e,>1~ | <b, e,> | 
  <e g, c,>1~ | q2 <fis a, d,> | <g b, e,>1~ | q2. e8-. b,-. |

  e,8-. b,-. e-. c( fis g4.) | e8-. fis-. g-. <e' b>->~ <e' b> a-. g-. <d' a>->~ | <d' a> g-. fis-. <d' g>->~ q fis-. e-. c,-> | 
  g,-. c-. d( dis e2) | \stemDown e8( fis g <a c>-^) r4 <g b, e,>2.-> \stemNeutral |

  e,8-. b,-. g-. b,-. e,-. b,-. g-. b,-. | e8-. fis-. g-. a-. <b fis>2 | <a e> <g d> | c8-.
  e,-. g,-. a,-. d( dis e4) | \stemDown e8( fis g <a c>-^) r4 <g b, e,>2.-> \stemNeutral |

  <b fis>2( <c' g> | <d' a> <c' g>) | <cis' g> <c' g> | e,8-. b,-. e-. fis~ fis g4. |
  c,8( g, d e~ e g4.) | d,8( a, e fis~ fis a4.) | e,8( b, e fis~ fis g4.) | r1
}}
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