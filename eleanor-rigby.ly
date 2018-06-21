\header {
  title = "Eleanor Rigby"
  composer = "Arr.: asbjoree"
}

global = { \key e \minor \tempo "Vivace" 4 = 144}

right_hand_p = { \global \relative c' { 
  \time 4/4 <e' g,>4. g,16( b d8 fis <g b,> <a c,>~) | <a c,> <g b,>4 <fis a,>8~ <fis a,> <e g,>4. | \appoggiatura {bes16} b8. a16 g2 a,8 b | s1
  <g' d>4 d16 es e8~ e <g d> <a e> <d a>~ | <d a> <b g>4 <a fis>8~ <a fis> <g e>4 <a fis>8~ | <a fis>1 | r8 b'16( a fis8 d b a) e-. fis-. | \bar "||"
  <g d>8-. a-. b-. <g d>->~ <g d> <e b>4. | g8-. a-. b-. <d g,>->~ <d g,> cis-. b-. <cis g>->~ | <cis g> b-. a-. <b fis>->~ <b fis> a-. g-. <a e>->~ | <a e>2 r | \time 6/4 g8( a b <c g d>-^) r4 <b e, a,>2. |
  \time 4/4 g8-. a,-. b'-. g-. a,-. d( e fis | g8 a b d) s  cis b cis | s b a b s a g a~ | a1 | \time 6/4 g8( a b <c g d>-^) r4 <b e, a,>2. | \bar "||"
  \time 4/4 <a e>8 <a e> <g e> <a e>~ <a e>8 <a e> <b fis>8 g~ | g e4. r4 e8 <e' b fis>~ | <e b fis>4 b8 <a fis>~ <a fis> g~ g e~ | e2 r | 
  a4 g8 a~ a4 b8 g~ | g e4. r4 e8 <g' b,>~ | <g b,>4 <fis a,>8 <e b>~ <e b>4 <b d,>8 | <a c,>4 <g b,>4
}}
right_hand_s = { \global \relative c' { 
  s1 | s | d2. s4 | r8 <b a>-. r8 <b a>-. r8 <b a>-. r8 <b a>-. | s1 | s | s | s |
  s | s | s | s | s1. | s1 | s2 e | d cis | c1 | s1. |
}}

dynamics = {
  s1\f | s | s | s | s | s | s | s\mp |
  s | s | s |
}

left_hand_p = { \global \relative c \clef bass {
  <e g, c,>1~ | <e g, c,> | <g b, e,>1~ | <b, e,> | 
  <e g, c,>1~ | <e g, c,>2 <fis a, d,> | <g b, e,>1~ | <g b, e,>2. e8-. b,-. |

  e,8-. b,-. e-. c( fis g4.) | e8-. fis-. g-. <e' b>->~ <e' b> a-. g-. <d' a>->~ | <d' a> g-. fis-. <d' g>->~ <d' g> fis-. e-. c,-> | 
  g,-. c-. d( dis e2) | e8( fis g <a c>-^) r4 <g b, e,>2. |

  e,8-. b,-. g-. b,-. e,-. b,-. g-. b,-. | e8-. fis-. g-. a-. <b fis>2 | <a e> <g d> | c8-.
  e,-. g,-. a,-. d( dis e4) | e8( fis g <d' g>-^) r4 <g b, e,>2. |

  <b fis>2 <c' g> | <d' a> <c' g> | <cis' g> <c' g> | e,8-. b,-. e-. fis~ fis g4. |
  c,8( g, d e~ e g4.) | d,8( a, e fis~ fis a4.) | e,8( b, e fis~ fis g4.)
}}
left_hand_s = { \global \relative c \clef bass {
  s1 | s | s | g4-. fis-. g-. fis-. |
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