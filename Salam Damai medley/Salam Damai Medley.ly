\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Damai Dalam Kristus"
  subtitle = "(medley 'Salam Damai')"
  poet = "N.N."
  composer = "Yeyee"
  tagline = \markup {
    \typewriter \fontsize #-1 {   
      "Yeyee - 2024"
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 20)))
}

% ----------------------------------

% CHORDS ---------------------------
chordNames = {
  \chordmode {
    s1
    d4:m
  }
}

% VOICES ---------------------------
% SA Unisono
voiceSA = {
  \relative f' {
    \clef treble
    r4 r4 r4 r8[ d8]
    d4 a'8 a4 a8 bes8 a8 
  }
}

voiceTB = {
  \relative f {
    \clef treble
  }
}

voiceSoprano = {
  \relative f' {
    \clef treble

  }
}

voiceAlto = {
  \relative f' {
    \clef treble

  }
}

voiceTenor = {
  \relative f' {
    \clef bass

  }
}

voiceBass = {
  \relative f' {
    \clef bass

  }
}

%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 4/4
  \key f \major
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
    
    % instruments
    \new ChordNames {
      \chordNames
    }
    
    % UNI-SA
    \new SolmisasiStaff \with {
      vocalName = "SA"
      shortVocalName = "SA"
    } {
    <<
      \new SolmisasiVoice = "voiceSA" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceSA
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSA" {
      u
    }
    
    % UNI-TB
    \new SolmisasiStaff \with {
      vocalName = "TB"
      shortVocalName = "TB"
    } {
    <<
      \new SolmisasiVoice = "voiceTB" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceTB
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceTB" {
      u
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
          \voiceSoprano
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
        
    }
  >> 
  }
>>
}
