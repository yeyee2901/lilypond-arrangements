\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MARY, DID YOU KNOW"
  subtitle = "(music by Mark Lowry & Buddy Greene)"
  poet = "Reflectively (M.M. 116)"
  composer = "Arr. Tim Hayden"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
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
  left-margin = 1.3\cm
  top-margin = 0.5\cm
  print-page-number = false
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 22)))
}

% ----------------------------------
% CHORDS
chordNames = \chordmode {
  \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
  s1
  \set Score.currentBarNumber = 1
  b1:m
  fis1:m/a
  e1:m
  fis1:m
  b1:m
  fis1:m/a
  e1:m
  fis1
}

voiceInst = {
  \relative d' {
    \clef treble
    s1
    r4 r8[ d'8(] d8) fis,4.
    e4. a8( a2)
    r4 r8[ d,8(] d8) e4.
    cis1 \break
    r4 r8[ b'8(] b8) fis4.
    e4. a8( a2)
    r8[ e8] fis8 g8( g8) a4.
    fis1
  }
}

% VOICES
unisonoSA = {
  \relative d' {
    \clef treble
    s1 * 8 
    r4 r4 b8 cis8 d8 e8 \break
    fis2 r8[ b,8] fis'8 e8(
    e4) d8 cis8( cis4) r8[ cis8]
    b8 cis4 d8(d8) e4 d8(
    d8) cis4. r2
  }
}

unisonoTB = {
  \relative d' {
    \clef bass
  }
}

voiceSopran = {
  \relative d' {            
    \clef treble
  }
}

voiceAlto = {
  \relative d' {            
    \clef treble
  }
}

voiceTenor = {
  \relative d' {            
    \clef bass
    
  }
}

voiceBass = {
  \relative d' {            
    \clef bass
    
  }
}

% ---- LYRICS ----
lyricsUnisonoSA = \lyricmode {
  Ma -- ry, did you know that your ba -- by boy will
  one day walk on wa -- ter
}



%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 4/4
  \key d \major
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
    
    \new SolmisasiStaff \with {
      vocalName = "Inst."
    } {
      \new SolmisasiVoice {
        \solmisasiMusic{
          \headerMusicGlobal
          \voiceInst
        }
      }
    }
    
    % UNISONO SA
    \new SolmisasiStaff \with {
      vocalName = "SA"
      shortVocalName = "SA"
    } {
    <<
      \new SolmisasiVoice = "voiceSA" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \unisonoSA
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSA" {
      \lyricsUnisonoSA
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
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
      u
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
    \new Lyrics \with {
    } \lyricsto "voiceAlto" {
      u
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
    \new Lyrics \with {
    } \lyricsto "voiceTenor" {
      u
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
    } \lyricsto "voiceBass" {
      u
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
}

\markup {
  \left-column{
    \line { \draw-hline }
    \line { *Hymne Santo Stanislaus Kostka (5 November 2024)}
    \line { *Perayaan pesta nama Santo Stanislaus Kostka dirayakan setiap tanggal 13 November }
  }
}