\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MISSA PACEM"
  subtitle = "GLORIA"
  composer = "Randolph Babin, Arr. Philip L. Roberts"
  poet = "M.M. 3/2 = 92 BPM"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line { \bold "MISSA PACEM - Gloria" }
        \line {
          Transcribed by Yeyee          
        }
        \line { gabriel777sh@gmail.com } 
        \line {
          Typeset using 
          \with-url "http://www.lilyPond.org"
          \concat { \bold { \tiny www. LilyPond \tiny .org } } 
          and 
          \with-url "https://henriyulianto.github.io/solmisasi-lily"
          \italic \bold solmisasi-lily
        }
        \line { rev 1.0 }
      }
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  left-margin = 1.8\cm
  top-margin = 1\cm
  bottom-margin = 2\cm
  print-page-number = true
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 22)))
}

% ----------------------------------
% musical / articulation marks
fermataMark = -\tweak X-offset #-0.8 -\tweak Y-offset #-0.5 ^\markup{ \magnify #2.3 \char ##x1D110 }
accentMark = -\tweak X-offset #-0.3 -\tweak Y-offset #-1.2 ^\markup{ \magnify #1.3 \bold ">" }
singleBar = { r4. r4. }



% ----------------------------------
headerMusicGlobal = {
  \time 6/8
  \key d \major
}

% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""
  s4 * 3
  
  % reff unisono
  d4. a4./d
  g4./d d4.
  a4.:m r4.
  d4. r4.
  d4. a4./cis
  g4./b d4./a
  g4. a4.:7
  d4. r4.
  
  % reff 1
  d4. a4./d
  g4./d d4.
  a4.:m r4.
  d4. r4.
  d4. a4./cis
  g4./b d4./a
  g4. a4.:7
  d4. r4.
  
  % verse 1
  fis4.:m7 b4.:m
  fis4.:m7 b4.:m
  g4. a4.:7
  d4. r4.
  fis4.:m7 b4.:m
  fis4.:m7 b4.:m
  g4. a4.:7
  b4.:m b4.
  e4.:m d4./fis
  g4. fis4.
  b4.:m e4.:m
  a4.:sus4 a4.
  
  % reff 2
  d4. a4./d
  g4./d d4.
  a4.:m r4.
  d4. r4.
  d4. a4./cis
  g4./b d4./a
  g4. a4.:7
  d4. r4.
  
  % verse 2
  d4. r4.
  d4./fis r4.
  g4. r4.
  d4. r4.
  g4. d4.
  g4. d4.
  f4. r4.
  g4./f f8 r8 f8/e
  d4.:m7 r4.
  g4./d d4:m7 d8:m7/c
  bes4. r4.
  f4. f4./e
  d4.:m7 r4.
  g4./d d4:m7 d8:m7/c
  bes4. r4.
  a4. r4.
  bes4. a4.
  d4.:m c4.
  f4. e4.
  a4.:m d4.:m
  a4.:m/e e4.
  a4. r4.
  
  % reff 3
  d4. a4./d
  g4./d d4.
  a4.:m r4.
  d4. r4.
  d4. a4./cis
  g4./b d4./a
  g4. a4.:7
  d4. r4.
  
  % verse 3
  e4.:m/d r4.
  fis4.:m/d r4.
  e4.:m/d r4.
  d4.:maj7 d4.
  f4. r4.
  c4. r4.
  as4. bes4.
  c4. r4.
  f4. r4.
  c4./e r4.
  c4.:m/es r4.
  bes4./d r4.
  bes4.:m/cis r4.
  f4./c r4.
  g4.:m a4.:m
  bes4. r4.
  a4.:sus4 r4.
  a4. r4.
  
  % reff end
  d4. a4./d
  g4./d d4.
  a4.:m r4.
  d4. r4.
  d4. a4./cis
  g4./b d4./a
  g4. a4.:7
  d4. r4.
}

% VOICES
voiceUnisono = {
  \relative f' {            
    \clef treble
    % save the spaces
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s4 * 3  \break
    \set Score.currentBarNumber = 1
    
    \tweak X-offset #1.4 \sectionLabel \markup { \box { \bold "Reff unisono" } } 
    d4\mf d8 a'4.
    d4 d8 a4.
    c8. c16 b8 g8 a8 b8
    a4. a4. \break
    d,4 d8 a'4.
    d4. a4.
    a8( fis8) e8 d8( b8) d8
    d4.( d4.) \break
    
    \tweak X-offset #1.4 \sectionLabel \markup { \box { \bold "Reff 1" } }
    d4\f d8 a'4.
    d4 d8 a4.
    c8. c16 b8 g8 a8 b8
    a4. a4. \break
    d,4 d8 a'4.
    d4. a4.
    a8( fis8) e8 d8( b8) d8
    
    \tweak X-offset #10 \sectionLabel \markup { \box { \bold "Verse 1" } }    
    d4. r8[ r8 a'8] \break
    
    % verse 1
    a4.\mf fis4 a8
    a4. fis4.
    d4.( d4) e8
    fis4. fis4 a8\break
    a8. b16 a8 fis4 a8
    a4 a8 fis4.
    d4.^\markup{\italic {"cresc."}} d4 e8
    fis4. fis4.\break
    g4. a4.
    b8 b8 b8 cis4 cis8
    d4 cis8 b4 g8
    a4. a4.
       
    % refrain
    \tweak X-offset #1.4 \sectionLabel \markup { \box { \bold "Reff 2" } }
    d,4 d8 a'4.
    d4 d8 a4.
    c8. c16 b8 g8 a8 b8
    a4. a4. \break
    d,4 d8 a'4.
    d4. a4.
    a8( fis8) e8 d8( b8) d8
    d4.( d4.)-\tweak X-offset #-5.0 ^\markup{ \italic "rit."} \pageBreak
    
    % verse 2
    r4. * 44
    
    % refrain
    \tweak X-offset #1.4 \sectionLabel \markup { \box { \bold "Reff 3" } }
    d4\f d8 a'4.
    d4 d8 a4.
    c8. c16 b8 g8 a8 b8
    a4. a4. \break
    d,4 d8 a'4.
    d4. a4.
    a8( fis8) e8 d8( b8) d8 \break
   
   % verse 3
   r4. * 38
   
   % refrain end
    \tweak X-offset #1.4 \sectionLabel \markup { \box { \bold "Reff End" } }
    d4 d8 a'4.
    d4 d8 a4.
    c8. c16 b8 g8 a8 b8
    a4. a4. \break
    d,4 d8 a'4.
    d4. a4.
    a8( fis8) e8 d8( b8) d8
    d4.( d4.)
  }
}

voiceSopran = {
  \relative d' {
    % save the spaces
    r4. * 2
    
    % SATB Unisono
    r4. * 72
    
    % verse 2
    \tweak X-offset #1.4 \sectionLabel \markup { \box { \bold "Verse 2" } { \italic \magnify #0.8 "optional a capella"}}
    fis4.\mp fis4-\tweak X-offset #-5.5 ^\markup{ \italic "slower.."} e8
    a4. a8 d8 cis8
    b4. b4. a4.( a4.) \break
    b4. a4.
    b8( cis8) d8 a4.
    a4. c4 c8
    b4( g8) a4 a8 \break
    a4 a8 c4 c8
    b8 a8 g8 a4 a8
    a4. eis4 g8-\tweak X-offset #2.5 ^\markup{ \italic "music in. p/mp"}
    a4.( a4) a8\break
    
    % you take away the sins of the world
    a4 a8 c4 c8
    b8 a8 g8 a4 a8
    a4. eis4( g8)
    a4.( a8) eis8 eis8\pageBreak
    
    d4^\markup{ \italic "accel. cresc. poco a poco" } d8 e4 e8
    eis4 eis8 g4 g8
    a4.( b4.)
    c4. d4. \break
    
    c4. b4 b8
    a4.( a4.)-\tweak X-offset #-20.5 ^\markup {\italic {"a tempo"} }
    \break
    
    % reff
    r4. * 14
    
    \tweak X-offset #15 \sectionLabel \markup { \box { \bold "Verse 3" } }
    d,4.( d8)[ r8 d8]-\tweak X-offset #10.0 ^\markup { \italic "pipe organ"}
    
    % verse 3
    e4\mf fis8 g8 fis8 e8
    fis4 g8 a4.
    g4 a8 b8 a8 g8 \break
    a4.( a4.)
    a4 a8 a8 b8 c8
    c4. g4. \pageBreak
    c4. ais4.
    g4. r8[ c,8 c8]
    a'4.( a4) b8
    d4. c4. \break
    g4.( g4) a8
    c4.^\markup{\italic "cresc."} ais4 ais8
    eis4.( eis4) g8
    c4. eis,4. \break
    ais4.( a4.)
    g4. eis4( g8)
    a4.( a4.
    a4. a4.) \break
    
    
  }
}

voiceAlto = {
  \relative d' {            
    \clef treble
    % save the spaces
    r4. * 2
    
    % SATB Unisono
    r4. * 72
    
    % verse 2
    d4. cis4 cis8
    e4. d8 d8 d8
    a'4. g4.
    fis4.( fis4.)
    g4. a4.
    g8( a8) b8 a4.
    eis4. a4 a8
    g4( e8) eis4 eis8
    eis4 eis8 a4 a8
    g8 eis8 e8 eis4 eis8
    eis4. d4 d8
    eis4.( eis4) eis8
    
    % you take away the sins of the world
    eis4 eis8 a4 a8
    g8 eis8 e8 eis4 eis8
    eis4. d4.
    e4.( e8) eis8 eis8
    d4 d8 cis4 cis8
    d4 d8 e4 e8
    
    a4.( gis4.)
    a4. a4.
    a4. gis4 gis8
    e4.( e4.)
    
    % reff
    r4. * 14
    
    % verse 3
    d4.( d8)[ r8 d8]
    e4 fis8 g8 fis8 e8
    fis4 g8 a4.
    e4 fis8 g8 fis8 e8
    cis4.( d4.)
    eis4 eis8 eis8 g8 a8
    g4. g4.
    gis4. eis4.
    e4. r8[ c8 c8]
    a'4.( a4) a8
    g4. g4.
    g4.( g4) g8
    eis4. eis4 eis8
    eis4.( eis4) eis8
    eis4. eis4.
    ais4.( a4.)
    g4. eis4( g8)
    e4.( e4.
    e4. e4.)
     
  }
}

voiceTenor = {
  \relative f' {            
    \clef treble
    % save the spaces
    r4. * 2
    
    % SATB Unisono
    r4. * 72
    
    % verse 2
    a4. a4 a8
    a4. a8 a8 a8
    d4. d4.
    d4.( d4.)
    d4. d4.
    d4 d8 d4.
    c4. e4 e8
    d4( b8) c4 c8
    c4 c8 e4 e8
    d8 c8 b8 c4 c8
    d4. ais4 ais8
    c4.( c4) c8
    
    % you take away the sins of the world
    c4 c8 e4 e8
    d8 c8 b8 c4 c8
    d4. d4.
    cis4.( cis8) eis,8 eis8
    eis4 eis8 a4 a8
    a4 a8 c4 c8
    
    c4.( e4.)
    e4. eis4.
    e4. e4 d8
    cis4.( cis4.)
    
    % reff
    r4. * 14
    
    % verse 3
    r4. * 10
    c4 c8 c8 c8 c8
    c4. c4.
    c4. d4.
    c4. r8[ c8 c8]
    c4.( c4) c8
    c4. c4.
    c4.( c4) c8
    ais4. ais4 ais8
    ais4.( ais4) ais8
    a4. a4.
    ais4.( a4.)
    g4. eis4( g8)
    d'4.( d4.
    cis4. cis4.)
  }
}

voiceBass = {
  \relative d' {            
    \clef bass
    % save the spaces
    r4. * 2
    
    % SATB Unisono
    r4. * 72
    
    % verse 2
    d4. g4 g8
    fis4. fis8 fis8 fis8
    g4. g4.
    d4.( d4.)
    g4. fis4.
    g4 g8 fis4.
    eis4.( eis4.)
    eis4.( eis4) e8
    d4.( d4.)
    d4.( d4) c8
    ais4. ais4 ais8
    eis'4. e4.
    d4.( d4) d8
    d4.( d4) c8
    ais4. ais'4.
    a4.( a8) eis8 eis8
    ais,4 ais8 a4 a8
    d4 d8 c4 c8
    
    eis4.( e4.)
    a4. d,4.
    e4. e4 e8
    a,4.( a4.)
    
    % reff
    r4. * 14
    
    % verse 3
    r4. * 10
    eis'4 eis8 eis8 eis8 eis8
    e4. e4.
    dis4. eis4.
    g4. r8[ c,8 c8]
    eis4.( eis4) eis8
    e4. e4.
    dis4.( dis4) dis8
    d4. d4 d8
    cis4.( cis4) cis8
    c4. c4.
    ais'4.( a4.)
    g4. eis4( g8)
    a4.( a4.
    a4. a4.)
  }
}

voiceDescant = {
  \relative d' {
    \clef treble
    % save the spaces
    r4. * 2
    
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    \singleBar
    d'4. cis4.
    b4. a4.
    c4.( b4.)
    a4.( a4.)
    d4. a4.
    d4( e8) fis4.
    e4.( d4.)
    d4.( d4.)
  }
}


% ----- LYRICS ---------------------
lyricDescant = \lyricmode {
   A -- _ _ men _ _
   A -- _ _ men _ _
   A -- _ _ men _ _
   A -- _ _ men _ _
   A -- men _ _
   A -- _ _ men
}

lyricUnisono = \lyricmode {
  Glo -- ri -- a! _ _
  Glo -- ri -- a! _ _ 
  Glo -- ry to God in the
  high -- _ _ est, _ _
  and on earth _ _ 
  peace _ _ to _ _ 
  peo -- ple  of good will. _ _ 
  
  Glo -- ri -- a! _ _
  Glo -- ri -- a! _ _ 
  Glo -- ry to God in the
  high -- _ _ est, _ _
  and on earth _ _ 
  peace _ _ to _ _ 
  peo -- ple  of good will. _ _
 
  % verse 1
  We praise _ _ you, we bless _ _ you, _ _
  we a -- dore _ _ you, we
  glo -- ri -- fy you, we
  give you thanks _ _
  for _ _ your great glo _ _ -- ry _ _
  Lord _ _ God, _ _  heav -- en -- ly King, O 
  God, al -- might -- y Fa _ _ -- ther _ _
  
  Glo -- ri -- a! _ _
  Glo -- ri -- a! _ _ 
  Glo -- ry to God in the
  high -- _ _ est, _ _
  and on earth _ _ 
  peace _ _ to _ _ 
  peo -- ple  of good will. _ _ 
  
  Glo -- ri -- a! _ _
  Glo -- ri -- a! _ _ 
  Glo -- ry to God in the
  high -- _ _ est, _ _
  and on earth _ _ 
  peace _ _ to _ _ 
  peo -- ple  of good % potong SA unisono di verse 3 
  
  % reff last
  Glo -- ri -- a! _ _
  Glo -- ri -- a! _ _ 
  Glo -- ry to God in the
  high -- _ _ est, _ _
  and on earth _ _ 
  peace _ _ to _ _ 
  peo -- ple  of good will.
}

lyricSopran = \lyricmode {
  Lord _ _ Je -- sus Christ, _ _
  On -- ly be -- got -- _ _ ten _ _ Son, _ _
  Lord _ _ God, _ _ Lamb of God _ _
  Son _ _ of the Fa -- ther, You
  take a -- way the sins of the world have
  mer _ _ -- cy on us; You
  take a -- way the sins of the world,
  re -- ceive _ _ our
  prayer; You are
  seat -- ed at the right hand of The 
  Fa -- _ _ ther, _ _ have _ _
  mer -- _ _ cy on us. _ _
  
  % verse 3
  will.
  For You a -- lone are the Ho -- ly One, _ _
  You a -- lone are the Lord, _ _
  You a -- lone are the Most _ _ High, _ _
  Je -- _ _ sus _ _
  Christ, _ _ with the Ho -- ly Spir -- _ _ it, _ _
  in the glo -- _ _ ry of God the Fa -- _ _ ther. _ _
  A -- _ _ men, _ _
  a -- men
  
}

lyricBass = \lyricmode {
  _ _ _ _ _
  _ _ _ _ _ 
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ {\markup \bold "[Bass]"} 
  Son _ _ of the Fa -- _ _ ther
  have mer -- _ _ cy on us; _ _
  You _ _
  take the sins, re -- ceive _ _ our _ _ prayer; You are
}


% ----------------------------------

% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  \new ChoirStaff {
  << 
    
    \new ChordNames {
      \chordNames
    }
    
    % DESCANT
    \new SolmisasiStaff \with {
      vocalName = "Desc."
      shortVocalName = "Desc."
    } {
      \new SolmisasiVoice = "Desc." {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceDescant
        }
      } 
    }
    \new Lyrics \with {
    } \lyricsto "Desc." {
      \lyricDescant
    }
    
    
    % UNISONO
    \new SolmisasiStaff \with {
      vocalName = "SATB"
      shortVocalName = "SATB"
    } {
    <<
      \new SolmisasiVoice = "SATB" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceUnisono
        }
      }
    >>  
    }
    
    % SOPRAN
    \new SolmisasiStaff \with {
      vocalName = "S"
      shortVocalName = "S"
    } {
    <<
      \new SolmisasiVoice = "voiceSopran" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceSopran
        }
      }
    >>  
    }
    
    
    
    % ALTO
    \new SolmisasiStaff \with {
      vocalName = "A"
      shortVocalName = "A"
    } {
    <<
      \new SolmisasiVoice = "voiceAlto" {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceAlto
        }
      }
    >>  
    }
    
    
    % TENOR
    \new SolmisasiStaff \with {
      vocalName = "T"
      shortVocalName = "T"
    } {
    <<
      \new SolmisasiVoice = "voiceTenor" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceTenor
        }
      }
    >>  
    }
    
    
    % BASS
    \new SolmisasiStaff \with {
      vocalName = "B"
      shortVocalName = "B"
    } {
    <<
      \new SolmisasiVoice = "voiceBass" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceBass
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
      \lyricSopran
    }
    \new Lyrics \with {
    } \lyricsto "voiceBass" {
      \lyricBass
    }
    \new Lyrics \with {
    } \lyricsto "SATB" {
      \lyricUnisono
    }
  >> 
  }
>>
}

% atur spacing antar stave suara
\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 5)
          (minimum-distance . 1)
          (padding . 1)
          (stretchability . 5))
  }
  
  \context {
      \SolmisasiStaff
      \revert TimeSignature.stencil
      % \override TimeSignature.font-size = #-1
      \override TimeSignature.break-visibility = #end-of-line-invisible
  }
}

\markup {
  \left-column{
    \line { \draw-hline }
  }
}
