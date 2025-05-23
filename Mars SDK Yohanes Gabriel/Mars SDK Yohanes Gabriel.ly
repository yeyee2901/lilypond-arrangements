\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MARS SDK SANTO YOHANES GABRIEL"
  poet = "Mars, Bersemangat"
  composer = "Yeyee (2025)"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line {
          Transcribed and arranged by Yeyee          
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
% musical / articulation marks
fermataMark = -\tweak X-offset #-0.8 -\tweak Y-offset #-0.5 ^\markup{ \magnify #2.3 \char ##x1D110 }
accentMark = -\tweak X-offset #-0.3 -\tweak Y-offset #-1.2 ^\markup{ \magnify #1.3 \bold ">" }


% ----------------------------------
% CHORDS
chordNames = \chordmode {
  s1
  es1
}

voiceInst = {
  \relative es' {
    \clef treble
    s1
    f4
  }
}

% VOICES
voiceI = {
  \relative es' {            
    \clef treble
    
  }
}

voiceII = {
  \relative es' {            
    \clef treble
    
  }
}

voiceIII = {
  \relative es' {            
    \clef treble
    
  }
}


% ------ LYRIC ----------------------
lyricSong = \lyricmode {
   u
}


%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 4/4
  \key es \major
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
      shortVocalName = "Inst."
    } {
    <<
      \new SolmisasiVoice = "Inst." {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceInst
        }
      }
    >>
    }
    
    % SOPRAN
    \new SolmisasiStaff \with {
      vocalName = "I"
      shortVocalName = "I"
    } {
    <<
      \new SolmisasiVoice = "voiceI" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceI
        }
      }
    >>  
    }

    
    % ALTO
    \new SolmisasiStaff \with {
      vocalName = "II"
      shortVocalName = "II"
    } {
    <<
      \new SolmisasiVoice = "voiceII" {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceII
        }
      }
    >>  
    }
    
    
    % TENOR
    \new SolmisasiStaff \with {
      vocalName = "III"
      shortVocalName = "III"
    } {
    <<
      \new SolmisasiVoice = "voiceIII" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceIII
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceIII" {
      \lyricSong
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
    \line { *Untuk not-not yang menggunakan 1/8 (garis 1), maka gunakan penekanan & hentakan seakan }
    \line { memiliki hitungan 1/16 untuk mendapatkan nuansa 'Mars' }
  }
}
