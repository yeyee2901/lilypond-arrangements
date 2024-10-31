\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Damai Dalam Kristus"
  subtitle = "(medley 'Salam Damai')"
  poet = "N.N."
  composer = "Yulius Kristanto, Yeyee (2024)"
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
        \line { rev 1.1 }
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

% markups
cantusFirmus = \markup {
  \italic \bold cf
}


% CHORDS ---------------------------
chordNames = {
  \chordmode {
    s1
    
    % bait salam damai
    d1:m
    g1:m
    c1
    f4 c4/e d2:m
    d1:m
    g1:m
    bes2 a2
    d1:m
    
    % reff salam damai
    d1:m
    g1:m
    c1
    f1
    bes1
    g1:m
    bes2 a2
    d1:m
    
    d1:m
    g1:m
    c1
    f1
    bes1
    g1:m
    bes2 a2
    d2:sus4 d2
  }
}

% VOICES ---------------------------
% SA Unisono
voiceSA = {
  \relative f' {
    \clef treble
    r4 r4 r4 r8[ d8]^\cantusFirmus
    d4 a'8 a4 a8 bes8 a8
    g4 d8 g4. r8[ d8]
    c4 g'8 g4 g8 a8 g8
    f4 e8 d4. r8[ d8] \break
    d4 a'8 a4 a8 bes8 a8
    g4 d8 g4. r8[ g8]
    f8 f8 f8 f8 e8 e8 f8 e8
    d2. r4\break
  }
}

voiceTB = {
  \relative f' {
    \clef treble
    r1
    d4. e4. f4
    g2( e4) d4 
    c2 e4 g4
    f4.( g8) a2 \breathe
    d,4. e4. f4
    g2 r4 c4
    bes2 a8( g8) f8 e8
    d2. a'4^\cantusFirmus
    
    d2. a4
    bes2. g4
    c2. bes4
    a2. f4\break
    bes2. a4
    g2. r8[ g8]
    f8 f8 f8 f8 e8 e8 f8 e8
    d2. f8( g8)\break
   
    a8 a4 a8 a4 f8 g8
    a8 g4 a8 bes2
    c8 c4 bes8 a4 a8 g8
    f8 f4 g8 a2
    g8 g8 f8 g4 a8 bes8 a8
    bes4 a8 bes4. r8[ g8]
    f8 f8 f8 f8 e8 e8 f8 e8
    d1

  }
}

voiceSoprano = {
  \relative f' {
    \clef treble
    % unisono SA
    r1 * 9
    
    % reff salam damai
    r4 d'8( e8) f4 e4
    d2 d4( f4)
    e2 f4( g4)
    f2. c4
    d2 d8( e8) d8( c8)
    bes4.( a8) bes4 d8 c8
    bes2 a4 cis4
    d2. a4^\cantusFirmus
    
    d2. a4
    bes2. g4
    c2. bes4
    a2. f4\break
    bes2. a4
    g2. r8[ c8]
    bes8 bes8 bes8 bes8 a8 a8 bes8 c8
    d1
    

    % bridge
    
  }
}

voiceAlto = {
  \relative f' {
    \clef treble
    % unisono SA
    r1 * 9
    
    % reff salam damai
    r4 a8( bes8) bes4 a4
    g2 bes4( a4)
    g2 c4( bes4)
    a2. a8( g8)
    f2 bes8( a8) g8( f8)
    d2  e4 f8 e8
    d2 cis4 d8( e8)
    f2. f4
    
    d4( e4 f4) d4
    f2. d4
    e4( f4 g4) e4
    f2. f4
    g2( f4) f4
    d2. r8[ f8]
    g8 g8 g8 g8 a8 a8 g8 a8
    g2( fis2)
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

% LYRIC ----------------------------
lyricVoiceSA = \lyricmode {
  Sa -- lam da -- mai, sa -- lam sau -- da -- ra -- ku
  Sa -- lam da -- mai, da -- lam Ye -- sus Tu -- han
  Sa -- lam da -- mai, sa -- lam sau -- da -- ra -- ku
  Sa -- lam da -- mai da -- lam Ye -- sus Tu -- han
}

lyricVoiceSopran = \lyricmode {
}

lyricVoiceAlto = \lyricmode {
  Sa -- lam, sa -- lam
  sa -- lam da -- mai
  Sa -- lam, sa -- lam da -- mai
  da -- lam Ye -- sus Tu -- han
  Sa -- lam,
  Sa -- lam,
  Sa -- lam da -- mai
  Sa -- lam,
  Sa -- lam,
  Sa -- lam da -- mai da -- lam Ye -- sus Tu -- han
}

lyricVoiceTB = \lyricmode {
  Sa -- lam da -- mai
  Sa -- lam da -- mai, sa -- lam
  Sa -- lam da -- mai
  da -- lam Ye -- sus Tu -- han
  
  Sa -- lam,
  Sa -- lam,
  Sa -- lam da -- mai
  Sa -- lam,
  Sa -- lam,
  Sa -- lam da -- mai da -- lam Ye -- sus Tu -- han
  
  Oh,
  Sa -- lam da -- mai, da -- lam Ye -- sus Tu -- han
  Sa -- lam da -- mai, da -- lam Ye -- sus Tu -- han
  Sa -- lam da -- mai, da -- lam Ye -- sus Tu -- han
  Sa -- lam da -- mai, da -- lam Ye -- sus Tu -- han
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
      \lyricVoiceSA
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
      \lyricVoiceSopran
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
      \lyricVoiceAlto
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
      \lyricVoiceTB
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

% atur spacing antar stave suara
\layout {
  \context {
    \Score
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 5)
          (minimum-distance . 1)
          (padding . 1)
          (stretchability . 2))
  }
}

\markup {
  \left-column{
    \line { \draw-hline }
    \line{*bawakan lagu ini dengan tempo bersemangat sekitar 108-110 BPM}
  }
}