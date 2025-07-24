\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Template"
  poet = "Poet"
  composer = "Yeyee (2024)"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line {
          Transcribed and arranged by Yeyee
          • \italic Free to download, with the \italic freedom to distribute,
          modify and perform.
          
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


%{

% Version 2 Template Header & Footer
% Uses manual vertical spacing with this command:
%
%\once \override
%  Score.NonMusicalPaperColumn
%  .line-break-system-details = #'((Y-offset . 65))
%\break
%
% 65 is the offset value. Sweet spot is 60-65.

\header {
  title = "Title"
  subtitle = "Handel's Messiah"
  subsubtitle = "(With Simplified Piano Accompaniment)"
  composer = "G.F. Handel"
  poet = "Andante allegro (M.M. 80)"
}

%}

%{

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  left-margin = 1.8\cm
  top-margin = 1\cm
  bottom-margin = 0.5\cm
  print-page-number = false
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 22)))

  oddFooterMarkup = \markup {
    \hspace {23\mm}
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \left-align {
      \box \center-column {
        \small {
          \line { \bold "The Lord Gave The Word - G.F. Handel" }
          \line {
            Transcribed by Yeyee (gabriel777sh@gmail.com)       
          }
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
  evenFooterMarkup = \oddFooterMarkup
}

%}


% ----------------------------------
% musical / articulation marks
fermataMark = -\tweak X-offset #-0.8 -\tweak Y-offset #-0.5 ^\markup{ \magnify #2.3 \char ##x1D110 }
accentMark = -\tweak X-offset #-0.3 -\tweak Y-offset #-1.2 ^\markup{ \magnify #1.3 \bold ">" }


% ----------------------------------
% CHORDS
chordNames = \chordmode {
  es1
}

% VOICES
voiceSopran = {
  \relative es' {            
    \clef treble
    % save the spaces
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s1  \break
    \set Score.currentBarNumber = 1
    
    es1
  }
}

voiceAlto = {
  \relative es' {            
    \clef treble
    s1 \break
    es1
  }
}

voiceTenor = {
  \relative es' {            
    \clef treble
    s1 \break
    es1
  }
}

voiceBass = {
  \relative es' {            
    \clef treble
    s1 \break
    es1
  }
}




%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 4/4
  \key c \major
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
    \line { *Some notes here }
    \line { *some other notes }
  }
}