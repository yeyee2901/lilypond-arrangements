\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Aku Indonesia"
  poet = "Naura Ayu"
  composer = "Arr. by Yeyee (2024)"
  tagline = \markup {
    \typewriter \fontsize #-1 {   
        "Yeyee (2024) - Written Using GNU Lilypond & solmisasi-lily"
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  bottom-margin = 1\cm
  top-margin = 1\cm
  print-page-number = false

  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 20)))
}

% ----------------------------------




%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \tempo 4 = 100
  \time 4/4
  \key bes \major
}
% ----------------------------------


% VOICES ---------------------------
% naik oktaf = pakai ' (kutip 1)
% turun oktaf = pakai , (koma)
sopran = {
  \relative c' {
    %intro
    r1*6

    c'1
    d1
    c1
    d2. r4
    r1 \pageBreak
    
    % bait 1
    r1*8
    
    % musik antar bait
    c2\mf b8 c8 b8 g8
    f4 f8 g8 b8 c8 b8 c8 \break
    e4 f8 e8 c4 e16 f16 e16 c16 b2. r4
    
    % bait 2
    r1 * 7
    
    % bridge
    r4 r4 r8[ c,8] d8 e8(\break
    e2) r8[ c8 ] d8 e8(
    e2) r8[ c8 ] d8 e8(
    e4) a8 b8~b8 c8~c8 b8( b8)
    a8~a8 e8~e8 c8~c8 f8(\break
    f1)\< (f2)  e8 f8 g8 \! a8 a8. \f g8. g4. r4
    
    g4\ff a4 c4 d4 \pageBreak

    % reff
    e8. e8. g,8 e'8 e8 d8 c8
    c8. a8. g8 g8 a8 c8 a8
    e'8. d8. g,8 g8 a8 c8 a8
    e'8. d8. g,8 g8 a8 c8(d8)
    e8. e8. g,8 e'8 e8 d8 c8
    c8. a8. g8 g8 a8 c8 a8
    e'8. d8. g,8 g8 a8 c8 a8
    e'8. d8. g,8 d'8 d8 c8 b8
    c4 r4 r4 r4
    
    % musik 2
    r1
    r8[ g16 g8.]\mp g4 g16 g8. g4
    a16 a8. a4 a16 a8. a4
    f16 f8. f4 f16 f8. f4
    g16 g8. g4 g16 g8. g4
    
    g16\mp g8. g4 g16 g8. g4
    a16 a8. a4 a16 a8. g8 \break
    a4 a4 b4 c4
    b2.\<  g8 g8
    a4 c4 d4 e4
    d1 \break
    g,4\!\f a4 c4 d4
    
    \key d \major
    r8[ a8] r8[ b8] r8[d8] r8[e8] \pageBreak
    
    fis8. fis8.\ff a,8 fis'8 fis8 e8 d8
    d8. b8. a8 a8 b8 d8 b8
    fis'8. e8. a,8 a8 b8 d8 b8 \break
    fis'8. e8. a,8 a8 b8 d8( e8)
    fis8. fis8. a,8 fis'8 fis8 e8 d8
    d8. b8. a8 a8 b8 d8 b8
    fis'8. e8. a,8 a8 b8 d8 b8
    fis'8. e8. a,8 e'8 e8 d8 cis8
    d4 r4 r4 r4
    
    r4 g8. fis16 d8 fis8 g8 fis8
    e2. r4
    a4 e4 d4 fis8( g8) \break
    
    fis8. fis8. a,8 fis'8 fis8 e8 d8
    d8. b8. a8 a8 b8 d8 b8
    fis'8. e8. a,8 a8 b8 d8 b8\break
    fis'8. e8. a,8 a8 b8 d16 e16 (e8)
    
    d8.\mp d8. d8 d8 d16 d16 r4 \break
    d8 d16 d16~d8 d8 d8 d16 d16 r4
    d8.\mf d8. d8 d8 d16 d16 r4 \break
    d8 d16 d16~d8 d8 d8 d16 d16 r4
    r2.
    d4\ff eis2^\markup{\bold \italic "rit."} eis2\break
    g2 g2
    a1(
    a2.) r4
    
    %fis8\mf fis16 fis16 fis8 fis8 fis4 r4
    %e8 e16 e16 e8 e8 e4 e4\ff
    %eis2 ^\markup { \italic \bold "rit."} eis4 eis4 \break
    %g2. g4
    %a1^\markup{\bold \italic "a tempo"}(
    %a2.) r4 \bar "|."
  }
}

alto = {
  \relative c' {
    %intro
    r1*6

    e1
    f1
    e1
    f2. r4
    r1
    
    % bait 1
    r1*8
    
    % musik antar bait
    e8 d16 e16 f8 d8 e8 d16 e16 f8 d8
    e8 d16 e16 f8 d8 e8 d16 e16 f8 d8
    e8 d16 e16 f8 d8 e8 d16 e16 f8 d8 g2. r4 \break
    
    % bait 2
    r1*7
    
    % bridge
    r4 r4 r8[ c,8] d8 e8(\break
    e2) r8[ c8 ] d8 e8(
    e2) r8[ c8 ] d8 e8(
    e4) a8 b8~b8 c8~c8 b8( b8)
    a8~a8 e8~e8 c8~c8 d8( d1)(
    d2) c8 d8 e8 f8 f8. e8. d4. r4
    
    d4 e4 f4 g4
    
    % reff
    g8. g8. e8 g8 g8 f8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. f8 d8 e8 f8(g8)
    g8. g8. e8 g8 g8 f8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. e8 e8 f8 g8 e8
    g8. f8. f8 d8 e8 f8 g8
    e4 r4 r4 r4
    
    % musik 2
    r1
    e8. e8. e8 e8. e8. e8
    f8. f8. f8 f8. f8. f8
    d8. d8. d8 d8. d8. d8
    e8. e8. e8 e8. e8. e8
    e8. e8. e8 e8. e8. e8
    f8. f8. f8 f8. f8. f8
    f4 f4 f4 f4
    g2. g8 g8
    d4 e4 fis4 fis4
    g1
    d4 e4 f4 g4
    
    \key d \major
    r8[ e8] r8[ fis8] r8[g8] r8[a8]
    a8. a8. fis8 a8 a8 g8 fis8
    a8. g8. fis8 fis8 g8 a8 fis8
    a8. g8. fis8 fis8 g8 a8 fis8
    a8. g8. g8 e8 fis8 g8( a8)
    a8. a8. fis8 a8 a8 g8 fis8
    a8. g8. fis8 fis8 g8 a8 fis8
    a8. g8. fis8 fis8 g8 a8 fis8
    a8. g8. g8 e8 fis8 g8 a8
    fis4 r4 r4 r4
    
    % ending
    b2 a2
    g2 fis8 e16 fis16 g8 e8
    cis4. d8 e4 a8( b8)
    
    a8. a8. fis8 a8 a8 g8 fis8
    a8. g8. fis8 fis8 g8 a8 fis8
    a8. g8. fis8 fis8 g8 a8 fis8
    a8. g8. g8 e8 fis8 g16 a16( a8)
    fis8 e16 fis16 g8 e8 fis8 e16 fis16 g8 e8
    fis8 e16 fis16 g8 e8 fis8 e16 fis16 g8 e8
    a8. a8. a8 a8 a16 a16 r4
    a8 a16 a16~a8 a8 a8 a16 a16 r4
    r2. d,4
    g2 g2
    g2 g2
    a1(
    a2.) r4
    
    
    %a8 a16 a16 a8 a8 a4 r4
    %g8 g16 g16 g8 g8 g4 g4
    %g2 g4 g4
    %g2. g4
    %a1(
    %a2.) r4
  }
}

tenor = {
  \relative c' {
    %intro
    r1
    r1

    g'8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
   
    g8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
    
    g8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
    g8 g16 g16 g16 g16 g8 g4 g16 g16 g16 g16
    g8 g16 g16 g16 g16 g8 g4 r4
    r1
    
    % unisono SA & TB
    r1*8
    
    % musik antar bait    
    g8 g4 g8 g8 g4 g8
    a8 a4 a8 a8 a4 a8
    g8 g4 g8 g8 g4 a8
    b8 b8 b8 b8 b4 r4


    % bait 2
    r1 * 8
    
    % bridge
    c1(
    c1)(
    c1)(
    a1)(
    f2)( g2 a2 c2 
    c2.) r4
    
    g4 g4 a4 b4
    
    % reff
    c8. c8. g8 c8 c8 b8 a8
    g8. a8. g8 g8 a8 b8 c8
    c8. a8. g8 g8 a8 b8 c8
    c8. b8. e8 d8 c8 a8(g8)
    c8. c8. g8 c8 c8 b8 a8
    g8. a8. g8 g8 a8 b8 c8
    c8. a8. g8 g8 a8 b8 c8
    c8. b8. e8 d8 c8 a8 g8
    c4 r4 r4 r4
    
    % musik 2
    r1
    c2\mf g4 c4
    a2. r4
    c4. a8 c8 c8 \tuplet 3/2 { d e d }
    c2. r4
    g8 g16\mp g16 g8 g16 g16 g8 g8 r4
    g8 g16 g16 g8 g16 g16 g8 g8 r8[ g8]
    a4 a4 b4 c4
    b2. b8 b8
    c4 c4 b4 a4
    c1
    g4 g4 a4 b4
    
    \key d \major
    r8[ a8] r8[ a8] r8[ b8] r8[ cis8]
    r1
    d8 cis16 d16 e8 cis8 d4( d8) cis8
    b4 b4 cis4 d4
    e8 e16 e16 e4 cis8 cis16 cis16 cis4
    d8 d8(d8) d8 e4 e4
    d2 d8 cis16 d16 e8 cis8
    b4 b4 cis4 d4
    cis2. r4
    
    % ending
    fis8.\f fis8. a,8 fis'8 fis8 e8 d8
    d2 a8 b8 d8 fis8
    e2. r4
    e4 cis8 d8 e8 cis8 d8( e8)
    
    d8. d8. a8 d8 d8 cis8 b8
    a8. b8. a8 a8 b8 cis8 d8
    d8. b8. a8 a8 b8 cis8 d8
    d8. cis8. fis8 e8 d8 b16 a16( a8)
    
    a8 a8(a8) a8 a8 a8(a8) a8
    a8 a8(a8) a8 a8 a8(a8) a8
    d8. d8. a8 d8 d16 d16 r4
    d8 d16 d16~d8 a8 d8 d16 d16 r4
    r2. a4
    d2 d2
    e2 e2
    fis1(
    fis2.) r4
    
    
    
    %d8 d16 d16 d8 d8 d4 r4
    %d8 d16 d16 d8 d8 d4 e4
    
    %d2 d4 d4
    %e2. e4
    %fis1 (fis2.) r4
    
  }
}

bass = {
  \relative c' {
    %intro
    c8. c8. c4. r4 
    c8. c8. c4. g'8 g8 \break
        
    c,8. c8. c4. r4 
    c8. c8. c4. g'8 g8
    
    c,8. c8. c4. r4 
    c8. c8. c4. g'8 g8
    
    c,8. c8. c4. r4 
    c8. c8. c4. g'8 g8
    c,8. c8. c4. r4 
    d8. d8. d4. r4 
    r1
    
    % unisono SA & TB
    r1*8
    
    % musik antar bait
    c8. c8. c4. d8 e8
    f8. f8. f4. e8 d8
    c8. c8. c4. d8 e8
    g8 g8 g8 g8 g4 r4

    
    % bait 2
    r1*8
    
    % bridge
    a1(
    gis1)(
    g1)(
    fis1)(
    d2)( e2 f2 d2 
    g2.) r4
    
    g4 g4 g4 g4
    
    % reff
    c,8. c8. c8 c8 c8 d8 e8
    f8. f8. f8 e8 d8 c8 e8
    d8. d8. d8 d8 d8 e8 f8
    g8. g8. g8 g8 g8 f8(d8)
    c8. c8. c8 c8 c8 d8 e8
    f8. f8. f8 e8 d8 c8 e8
    d8. d8. d8 d8 d8 e8 f8
    g8. g8. g8 g8 g8 f8 d8
    c4 r4 r4 r4 \break
    
    % musik 2
    r1
    c'2 g4 c4
    a2. r4
    a4. e8 g8 g8 \tuplet 3/2 { a g a }
    c2. r4
    c,8 c16 c16 c8 c16 c16 c8 c8 r4
    c8 c16 c16 c8 c16 c16 c8 c8 r8[c8]
    d4 d4 d4 d4
    e2. e8 e8
    f4 f4 d4 d4
    g1
    g4 g4 g4 g4
    
    \key d \major
    r8[ a8] r8[ a8] r8[ a8] r8[ a8]
    r1
    g2 g4 fis4
    e4 e8 e8( e8)d8 e8 fis8
    a2 r8[ a8] fis8 e8
    d2 a'16 a16(a16) a16 a8 a8
    g4 r8[ b8] a8 g8 fis8 d8
    e1
    a8 a8 a8 a8 a4 a4
    
    %ending
    d,8. d8. d8 d8 d8 e8   fis8
    g4( a4 b2
    b2) g8 fis8 e8 d8
    a'2. fis8( e8)
    
    d8. d8. d8 d8 d8 e8 fis8
    g8. g8. g8 fis8 e8 d8 fis8
    e8. e8. e8 e8 e8 fis8 g8
    a8. a8. a8 a8 a8 g16 e16(e8)
    
    d8. d8. d4. a'8 a8
    d,8. d8. d4. a'8 a8
    d,8. d8. d8 d8 d16 d16 r4
    d8 d16 d16~d8 d8 d8 d16 d16 r4
    
    r2. c4
    ais2 ais2
    c2 c2
    d1(
    d2.) r4
    
    %d8 d16 d16 d8 d8 d4 r4
    %d8 d16 d16 d8 d8 d4 c4
    %ais2 ais4 ais4
    %c2. c4
    %d1(
    %d2.) r4
    
  }
}

unisonoSA = {
   \relative c' {
     % intro
     r1*11
     
     % bait bagian unisono SA
     r8\mp [ e16 g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 b4. r4 \break
     r8[ e,16 g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 b4. r4 \break
     
     % bridge 
     %r4 r4 r8[ do,8] \break re8 mi8~
     %mi2 r8[do8] re8 mi8~
     %mi2 r8[do8] re8 mi8~
     %mi4 la8 si8~si8 do8~do8 si8~si8
     %la8~la8 mi8~mi8 do8~do8 fa8 ~fa1
   }
}

unisonoTB = {
  \relative c' {
     % intro
     r1*11
     
     % unisono SA
     r1*8
     
     % musik 1
     r1*4
     
     % bait 2
     r8[ e16\mp g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \pageBreak
     f8 c'4 c4. f,8 e8
     f8 c'4 b4. r4 \break
     r8[ e,16 g8.] e16 g8. e8 g8 a8
     g8 f4 c4. f8 e8 \break
     f8 c'4 c4. f,8 e8
     f8 c'4 d4. r4 \break
     
     % bridge
     r1*8
     
     % reff
     r1*8
  }
}

% LIRIK ----------------------------

reffLyric = \lyricmode {
  A -- ku a -- da lah In -- do -- ne -- sia!
  ber -- a -- ne -- ka ra -- gam -- nya war -- na war -- ni i -- ra -- ma Oh In -- dah -- nya!
  A -- ku a -- da -- lah In -- do -- ne -- sia
  ru -- kun -- lah se -- la -- ma -- nya ber -- dam -- ping -- an ber -- sa -- ma
  Ki -- ta In -- do -- ne -- sia!
}

sopranLyric = \lyricmode {
  % intro
  In do ne sia
  
  % musik antar bait
  Haa.. _ _ _ _ aaa.. _ _ _ _ _ _
  Haa.. _ _ _ _ _ _ _ aa..
  
  % bridge
  Tak a -- da yang sa ma
  i tu lah yang mem bu -- at ki -- ta ‘ka -- ya‘
  ha -- rus se -- la -- lu ing -- at
  Oh! oh! oh! oh!
  
  % reff cukup di bass aja
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding ding
  ding ding ding ding ding,
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
  
  \reffLyric
  
  Bu -- da -- ya dan ba -- ha -- sa
  In -- dah -- nya Oh!
  Ki -- ta ber -- a -- ne -- ka ra -- gam -- nya,
  ber -- a -- ne -- ka bu -- da -- ya,
  ber -- a -- ne -- ka ba -- ha -- sa,
  ser -- ta tra -- di -- si
  A -- ku In -- do -- ne -- sia!
  Bhin -- ne -- ka Tung -- gal I -- ka!
  A -- ku In -- do -- ne -- sia!
  Bhin -- ne -- ka Tung -- gal I -- ka!
  A -- ku In -- do -- ne -- sia!
}

altoLyric = \lyricmode {
  % intro
  In do ne sia
  
  % musik antar bait
  ding din din pa ding _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  ding din din pa ding _ _ _ _ _ _ 
  
  % bridge
  Tak a -- da yang sa ma
  i tu lah yang mem bu -- at ki -- ta ‘ka -- ya‘
  ha -- rus se -- la -- lu ing -- at
  Oh! oh! oh! oh!
  
  % reff cukup di bass aja
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung dung
  dung dung dung dung dung,
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
  
  \reffLyric
  
  Ba -- ha -- sa
  dan su -- ku bang -- sa
  In -- dah -- nya Oh!
  Ki -- ta ber -- a -- ne -- ka ra -- gam -- nya,
  ber -- a -- ne -- ka bu -- da -- ya,
  ber -- a -- ne -- ka ba -- ha -- sa,
  ser -- ta tra -- di -- si
  ding din din pa ding x x x... _ _ ding din din pa ding x x x... _ _
  A -- ku In -- do -- ne -- sia!
  Bhin -- ne -- ka Tung -- gal I -- ka!
  A -- ku In -- do -- ne -- sia!
}

tenorLyric = \lyricmode {
  % intro
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  Cak cak a cak a cak cak cak a cak a
  cak cak a cak a cak cak
  
  % musik antar bait
  dung x.. _ _ _ _
  dung x.. _ _ _ _
  dung x.. _ _ _ _
  dung dung dung dung dung
  
  % bridge
  Huu..
  Oh! oh! oh! oh!
  
  % reff cukup di bass aja
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  
  % musik 2
  Hei hei hei hei
  to -- rang sa -- mua ba su da ra
  to -- rang sa -- mua ba -- su -- da -- ra
  to -- rang sa -- mua ba -- su -- da -- ra
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
  
  % reff modulasi
  A -- ku In do ne sia
  A -- ne -- ka war -- na
  Oh in dah nya! Oh in dah nya!
  A -- ku In -- do -- ne -- sia!
  ru -- kun -- lah ber -- dam -- ping -- an s'la -- ma -- nya
  Ki -- ta ber -- a -- ne -- ka ra -- gam
  In -- dah ne -- g'ri -- ku
  In -- dah ne -- g'ri -- ku
  Oh!
  Ki -- ta ber -- a -- ne -- ka ra -- gam -- nya,
  ber -- a -- ne -- ka bu -- da -- ya,
  ber -- a -- ne -- ka ba -- ha -- sa,
  ser -- ta tra -- di -- si
  
  dung dung, dung dung dung, dung
  dung dung, dung dung dung, dung
  A -- ku In -- do -- ne -- sia!
  Bhin -- ne -- ka Tung -- gal I -- ka!
  A -- ku In -- do -- ne -- sia!
}

bassLyric = \lyricmode {
  % intro
  Dung dung dung... 
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung dam dam
  Dung dung dung...
  dung dung dung
  
  % musik antar bait
  dung x.. _ _ _ dung x.. _ _ _
  dung x.. _ _ _ dung dung dung dung dung
  
  % bridge
  Huu..
  Oh! oh! oh! oh!
  
  \reffLyric
  
  % musik 2
  Hei hei hei hei
  to -- rang sa -- mua ba su da ra
  to -- rang sa -- mua ba -- su -- da -- ra
  to -- rang sa -- mua ba -- su -- da -- ra
  A -- ku In -- do -- ne -- sia
  Bhin -- ne -- ka Tung -- gal I -- ka
  Oh! Oh! Oh! Oh!
  Oh! Oh! Oh! Oh!
  
  % reff modulasi
  In -- do -- ne -- sia a -- ne -- ka war -- na -- nya
  Oh in -- dah -- nya!
  A -- ku In -- do -- ne -- sia!
  ru -- kun -- lah s'la -- ma -- nya
  A -- ku In -- do -- ne -- sia!
  
  % ending
  Ki -- ta ber -- a -- ne -- ka ra -- gam
  In -- dah ne -- g'ri -- ku
  Oh!
  Ki -- ta ber -- a -- ne -- ka ra -- gam -- nya,
  ber -- a -- ne -- ka bu -- da -- ya,
  ber -- a -- ne -- ka ba -- ha -- sa,
  ser -- ta tra -- di -- si
  Dung dung dung, dam dam
  Dung dung dung, dam dam
  A -- ku In -- do -- ne -- sia!
  Bhin -- ne -- ka Tung -- gal I -- ka!
  A -- ku In -- do -- ne -- sia!
}


unisonoSALyric = \lyricmode {
  % bait 1
  Tak pe -- du li -- kan war -- na
  ku -- lit -- nya, ben tuk ru -- pa -- nya
  ra -- gam war -- na -- nya..
  Tak pe -- du li -- kan ta -- nah
  a -- sal -- nya
  tu -- tur bi -- ca -- ra ke -- ya kin -- an -- nya
}

unisonoTBLyric = \lyricmode {
  % bait 2
  Tak pe -- du -- li -- kan a -- da di -- ma -- na
  ha -- ti ter ta -- nam 'tuk ne -- g'ri i -- ni
  Wa -- lau du ni -- a ri -- uh men -- de -- ra
  da mai se -- la -- lu bu mi per ti -- wi
}

% ---------------------------------


% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  
  \new ChoirStaff {
  << 
    % UNISONO SA
    \new SolmisasiStaff \with {
      vocalName = "SA"
      shortVocalName = "SA"
    } {
      \new SolmisasiVoice = "voiceUnisonoSA" { \solmisasiMusic \unisonoSA } 
    }
    \new Lyrics \with {
    } \lyricsto "voiceUnisonoSA" {
      \unisonoSALyric
    }
    
    
    % UNISONO TB
    \new SolmisasiStaff \with {
      vocalName = "TB"
      shortVocalName = "TB"
    } {
      \new SolmisasiVoice = "voiceUnisonoTB" { \solmisasiMusic \unisonoTB } 
    }
    \new Lyrics \with {
    } \lyricsto "voiceUnisonoTB" {
      \unisonoTBLyric
    }
    
    % SOPRAN
    \new SolmisasiStaff \with {
      vocalName = "S"
      shortVocalName = "S"
    } {
    <<
      \new SolmisasiVoice = "voiceSopran" { \solmisasiMusic \sopran }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSopran" 
    {
        \sopranLyric
    }
    
    % ALTO
    \new SolmisasiStaff \with {
      vocalName = "A"
      shortVocalName = "A"
    } {
    <<
      \new SolmisasiVoice = "voiceAlto" { \solmisasiMusic \alto }
      \new NullVoice = "nullAlto" { \solmisasiMusic \alto }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullAlto" {
        \altoLyric
    }
    
    
    % TENOR
    \new SolmisasiStaff \with {
      vocalName = "T"
      shortVocalName = "T"
    } {
    <<
      \new SolmisasiVoice = "voiceTenor" { \solmisasiMusic \tenor }
      \new NullVoice = "nullTenor" { \solmisasiMusic \tenor }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullTenor" {
        \tenorLyric
    }
    
    
    
    % BASS
    \new SolmisasiStaff \with { 
      vocalName = "B"
      shortVocalName = "B"
    } {
    <<
      \new SolmisasiVoice = "voiceBass" { \solmisasiMusic \bass }
      \new NullVoice = "nullBass" { \solmisasiMusic \bass }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullBass" {
        \bassLyric
    }
  >> 
  }
>>
}