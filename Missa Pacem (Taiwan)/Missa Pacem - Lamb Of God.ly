\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MISSA PACEM"
  subtitle = "Lamb Of God"
  poet = "M.M. 72 BPM"  
  composer = "Randolph Babin, Arr. Philip L. Roberts"
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line { \bold "MISSA PACEM - Lamb Of God" }
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
  \time 2/2
  \key g \major
}

% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""
  s4 * 4
  
  % intro
  e1:m
  a1/e
  e1:m
  a1/e
  
  % song
  e1:m
  a1/e
  e1:m
  a1/e
  c1
  d1
  e1:m
  a1/e
  e1:m
  a1/e
  
  % song
  e1:m
  a1/e
  e1:m
  a1/e
  c1
  d1
  e1:m
  e1:m
  
  c1
  d1
  a1:m
  e1:m
  f1
  f1
  fis1:dim
  b1
  
  e1:m
  a1/e
  e1:m
  a1/e
  c1
  d1
  e1
}

% VOICES
voiceInst = {
  \relative d' {
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s4 * 4  \break
    \set Score.currentBarNumber = 1
    
    % intro
    e4 b'4 g'2
    e,4 cis'4 a'2
    e,4 b'4 g'2
    e,4 cis'4 a'2
    \break
    
    % song
    r1 * 6
    e,4 b'4 g'2
    e,4 cis'4 a'2
    e,4 b'4 g'2
    e,4 cis'4 a'2
    
    r1 * 6
    e,4 b'4 g'4 fis4
    g4 a4 b4 d4 
    e1(
    e1)
    
    s1 * 4
    r4 a,,4 c4 g'4
    fis2^\markup{ \italic "rit."} b,2
  }
}

voiceSATB = {
  \relative d' {
    \clef treble

    % save the space
    s4 * 4
    
    % intro
    r1 * 4
    
    % song
    b'2. g4
    a2. e4
    g4 fis4 e4 d4 \break
    e2 e4 fis4
    g2. a4
    fis2 e4 d4 \break
    e1(
    e1)
    r1
    r1 \break
    
    % song 2
    b'2. g4
    a2. e4
    g4 fis4 e4 d4 \break
    e2 e4 fis4
    g2. a4
    fis2 e4 d4 \break
    e1(
    e1)
    
    % song 3
    e2. g4
    fis2. a4 \break
    g4 fis4 g4 a4
    b2 g4 b4
    c2. b4 \pageBreak
    a2 g4 a4 
    b1(
    b1) \break
    
    b2.^\markup{\italic "a tempo"} g4
    a2. e4
    g4 fis4 e4 d4 \break
    e2 e4 fis4
    g2. r4-\tweak X-offset #-4.8 ^\markup{\italic "rit. freely"}
    fis2 d2 
    e1(
    e1)
  }
}

voiceSopran = {
  \relative f' {            
    \clef treble
    
    % save the space
    s4 * 4  \break
  }
}

voiceAlto = {
  \relative f' {            
    \clef treble
    % save the space
    s4 * 4  \break
    

  }
}

voiceTenor = {
  \relative f' {            
    \clef treble
    % save the space
    s4 * 4
  }
}

voiceBass = {
  \relative f' {            
    \clef treble
    % save the space
    s4 * 4
  }
}


% ----- LYRICS ---------------------
lyricSATB = \lyricmode {
  Lamb of God,
  You take a -- way the sins
  of the world,
  have mer -- cy on us
  
  Lamb of God,
  You take a -- way the sins
  of the world,
  have mer -- cy on us
  
  Lamb of God,
  You take a -- way the sins
  of the world,
  have mer -- cy on us
  
  Lamb of God,
  You take a -- way the sins
  of the world,
  grant us peace
}

lyricSopran = \lyricmode {

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
