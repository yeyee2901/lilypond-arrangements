\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MISSA PACEM"
  subtitle = "Holy, Holy, Holy"
  poet = "Allegretto (~160 BPM)"  
  composer = "Randolph Babin, Arr. Philip L. Roberts"
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line { \bold "MISSA PACEM - Holy, Holy, Holy" }
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
  print-page-number = false
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




% ----------------------------------
headerMusicGlobal = {
  \time 3/4
  \key d \major
}

% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""
  s4 * 3
  
  % intro
  s2.
  g2.
  d2./fis
  e2:m a4
  d2.
  
  % lagu
  d2.
  a2./d
  g2./d
  d2 d4/e
  fis2.:m
  b2.:m
  c2.
  a2.
  d2.
  a2./cis
  g2./b
  d2./a
  g2.
  d2./fis
  e2:m a4
  d2.
  g2.
  d2./fis
  e2:m a4
  d2.
  
  % blessed
  d2.
  e2.
  e2./b
  f2.:m
  b2.:m
  e2.
  fis2.:sus4
  fis2.
  g2.
  d2./fis
  e2:m a4
  d2.
  g2.
  d2./fis
  e2:m a4
  d2.
}

% VOICES
voiceInst = {
  \relative d' {
    s4 * 3
    r4 r4 d4
    b'2 cis4
    d2 a4
    g4. fis8 e4
    d2. \break
  }
}

voiceSATB = {
  \relative d' {
    \clef treble
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s4 * 3  \break
    \set Score.currentBarNumber = 1
    % save the space
    
    % intro
    r4 * 15
    
    d2-\tweak X-offset #5.0 \f d4
    a'2 a4
    d2.
    a2. \break
    a2.
    a4( g4) fis4
    e2.( 
    e2.) \break
    d2 d4
    a'2 a4
    d4. cis8 b4 \break
    
    % potong jadi pecah suara
    r2. * 9 
    
    % bar 25
    fis4.-\tweak X-offset #5.0 \mp e8 fis4
    gis2 fis4
    gis4. a8 b4 \pageBreak
    a2 a4
    d4. d8 cis4
    b4. a8 b4 \break
  }
}

voiceSopran = {
  \relative f' {            
    \clef treble
    
    % save the space
    s4 * 3  \break
    
    % unisono
    r4 * 48

    % pecah suara hosanna
    a4 d,4 d4 
    b'2 cis4 
    d2 a4
    g4.( fis8 e4) \break
    fis2 d4 
    b'2 cis4
    d2 a4
    g4.( fis8 e4)
    d2. \break
    
    % potong unisono 'blessed is He...'
    r2. * 6
    cis'2.(
    cis4) r4 cis4
    b2 cis4
    d2 a4
    g4.( fis8 e4)
    fis2 d4 \break
    b'2 cis4
    d2 a4
    g4.( fis8 e4)-\tweak X-offset #-10.0 ^\markup{ \italic "rit."} 
    d2.
  }
}

voiceAlto = {
  \relative f' {            
    \clef treble
    % save the space
    s4 * 3  \break
    
    r4 * 48

    % pecah suara hosanna
    a4 d,4 d4
    d2 e4
    d2 d4
    d2( cis4)
    d2 d4
    d2 e4
    d2 d4
    d2( cis4)
    d2.
    
    % potong unisono 'blessed is He...'
    r2. * 6
    cis'2.(
    cis4) r4 e,4
    d2 e4
    d2 d4
    d2( cis4)
    d2 d4
    d2 e4
    d2 d4
    d2( cis4)
    d2.
  }
}

voiceTenor = {
  \relative f' {            
    \clef treble
    % save the space
    s4 * 3  \break
    
    r4 * 48

    % pecah suara hosanna
    a4 d,4 d4
    g2 a4
    a2 a4
    b2( a4)
    a2 a4
    g2 a4
    a2 a4
    b2( a4)
    fis2.
    
    % potong unisono 'blessed is He...'
    r2. * 6
    cis'2.(
    cis4) r4 ais4
    b2 a4
    a2 a4
    b2( a4)
    a2 a4
    g2 a4
    a2 a4
    b2( a4)
    fis2.
  }
}

voiceBass = {
  \relative f' {            
    \clef treble
    % save the space
    s4 * 3  \break
    
    r4 * 48

    % pecah suara hosanna
    a4 d,4 d4
    g2 g4
    fis2 fis4
    e2( a4)
    d,2 fis4
    g2 g4
    fis2 fis4
    e2( a4)
    d,2.
    
    % potong unisono 'blessed is He...'
    r2. * 6
    cis'2.(
    cis4) r4 fis,4
    g2 g4
    fis2 fis4
    e2( a4)
    d,2 fis4
    g2 g4
    fis2 fis4
    e2( a4)
    d,2.
  }
}


% ----- LYRICS ---------------------
lyricSATB = \lyricmode {
  Ho -- ly, Ho -- ly, Ho -- ly 
  Lord God of hosts.
  Heav'n and earth are full of your
  
  Bless -- ed is He
  who comes in the name, 
  who comes in the name,
  of The
}

lyricSopran = \lyricmode {
  glo -- ry. 
  Ho -- san -- na in the high -- est.
  Ho -- san -- na in the high -- est.
  Lord.
  Ho -- san -- na in the high -- est.
  Ho -- san -- na in the high -- est.
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
    
    % INSTRUMENT
    \new SolmisasiStaff \with {
      vocalName = "Inst."
      shortVocalName = "Inst."
    } {
      <<
      \new SolmisasiVoice = "voiceInst" {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceInst
        }
      }
      >>
    }
    
    % UNISONO
    \new SolmisasiStaff \with {
      vocalName = "SATB"
      shortVocalName = "SATB"
    } {
      <<
      \new SolmisasiVoice = "voiceSATB" {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceSATB
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
    
    
    % LYRICS
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
      \lyricSopran
    }
    \new Lyrics \with {
    } \lyricsto "voiceSATB" {
      \lyricSATB
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
