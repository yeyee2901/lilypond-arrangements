\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MISSA PACEM"
  subtitle = "Penitential Act"
  poet = "M.M. 60"  
  composer = "Randolph Babin, Arr. Philip L. Roberts"
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line { \bold "MISSA PACEM - Penitential Act" }
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
  \key f \major
}

% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""
  s1 * 1
  d1:m
  d1:m
  d2:m g2:/d
  d1:m
  bes4 a4:m d4:m c4
  bes1
  g4:m a4:m bes4 c4
  d1:m
  
  d1:m
  d2:m g2/d
  g1:m/d
  d1:m
  bes4 a4:m d4:m c4
  bes1
  g4:m a4:m bes4 c4
  d1:m
  
  d1:m
  d1:m
  g1:9/d
  g2:m/d d1:m
  g2:m a2:m
  d2:m bes2
  bes4 a4:m d4:m c4
  bes1
  g4:m a4:m bes4 c4
  d1:m
}

% VOICES
voiceCantor = {
  \relative f' {
    % save the spaces
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s1 * 1 \break
    \set Score.currentBarNumber = 1
    
    
    \tweak X-offset #1.2 d4 a'4 a4 g4
    a2 d,4 d4
    g4( f4) e4( c4)
    d1
    \tweak X-offset #0.8 d4 c4 f4( e4)
    d1 \break
    r1
    r1 \break
    
    a'4( b4) c4 b4
    a2. d,4
    g4 a4 f4( e4)
    d2 d2 
    \tweak X-offset #1.8 d4 c4 f4( e4)
    d1 \break
    r1
    r1 \break 
    
    a'4 d4 c4 b4
    a4 g4 f4( g4)
    a2 d,4 d4 
    \break
    
    \time 3/2 g4( a4) f2 e4( f4)
    
    \time 2/2 
    g4 f4 e4 c4
    d1
    \tweak X-offset #1.2 d4 c4 f4( e4) 
    d1 \break
  }
}

voiceSopran = {
  \relative f' {            
    \clef treble
    % save the spaces
    s1 * 1
    
    % cantor
    r1 * 6
    
    % all
    d4 c4 f4( e4)
    d1
    
    % cantor
    r1 * 6
    
    % all
    d4 c4 f4( e4)
    d1
    
    % cantor
    r1 * 3
    r4 * 6 % time 3/2
    r1 * 4 % time 2/2
    
    % all
    d4 c4 f4( e4)
    d1
  }
}

voiceAlto = {
  \relative f' {            
    \clef treble
    % save the spaces
    s1 * 1
    
    % cantor
    r1 * 6
    
    % all
    bes,4 a4 d4( c4)
    d1
    
    % cantor
    r1 * 6
    
    % all
    bes4 a4 d4( c4)
    d1
    
    % cantor
    r1 * 3
    r4 * 6 % time 3/2
    r1 * 4 % time 2/2
      
    % all
    bes4 a4 d4( c4)
    d1
  }
}

voiceTenor = {
  \relative f' {            
    \clef treble
    % save the spaces
    s1 * 1
    
    % cantor
    r1 * 6
    
    % all
    d4 e4 f4( g4)
    a1
    
    % cantor
    r1 * 6
    
    % all
    d,4 e4 f4( g4)
    a1
    
    % cantor
    r1 * 3
    r4 * 6 % time 3/2
    r1 * 4 % time 2/2
    
    % all
    d,4 e4 f4( g4)
    a1
  }
}

voiceBass = {
  \relative f {            
    \clef treble
    % save the spaces
    s1 * 1
    
    % cantor
    r1 * 6
    
    % all
    g4 a4 bes4( c4)
    d1
    
    % cantor
    r1 * 6
    
    % all
    g,4 a4 bes4( c4)
    d1
    
    % cantor
    r1 * 3
    r4 * 6 % time 3/2
    r1 * 4 % time 2/2
    
    % all
    g,4 a4 bes4( c4)
    d1
  }
}


% ----- LYRICS ---------------------
lyricCantor = \lyricmode {
  You were sent to heal the con -- trite of heart
  Lord, have mer -- cy
  You came to call,
  you came to call sin -- ners
  Christ, have mer -- cy
  You are seat -- ed
  at the right hand of the Fa -- ther
  to in -- ter -- cede for us;
  Lord, have mer -- cy
  
  
}

lyricSopran = \lyricmode {
  Lord, have mer -- cy
  Christ, have mer -- cy
  Lord. have mer -- cy
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
    
    % Cantor
     % SOPRAN
    \new SolmisasiStaff \with {
      vocalName = "Cantor"
      shortVocalName = "Cantor"
    } {
    <<
      \new SolmisasiVoice = "voiceCantor" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceCantor
        }
      }
    >>
    }
    \new Lyrics \lyricsto "voiceCantor" {
      \lyricCantor
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
