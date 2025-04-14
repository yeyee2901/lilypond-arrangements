\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Ibu Kita Kartini"
  poet = "M.M. 95-100"
  composer = "Arr. Yeyee (2025)"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  left-margin = 1.5\cm
  top-margin = 1\cm
  print-page-number = false
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 20)))
  
  % spacing antar stave lines
  system-system-spacing =
    #'((basic-distance . 12) 
       (minimum-distance . 8)
       (padding . 4)
       (stretchability . 60)) 
}

% ----------------------------------
% musical / articulation marks
fermataMark = -\tweak X-offset #-0.8 -\tweak Y-offset #-0.5 ^\markup{ \magnify #2.3 \char ##x1D110 }
accentMark = -\tweak X-offset #-0.3 -\tweak Y-offset #-1.2 ^\markup{ \magnify #1.3 \bold ">" }


% ----------------------------------
% CHORDS
chordNames = \chordmode {
  % intro
  s1
  g1
  d2 b4:m b4/dis
  e2:m a2:7
  d1
  
  % bait
  d1
  d2 d8 d8/e d4:7/fis
  g2 a2
  d1
  e2:m a2
  d4 fis4/cis b2:m
  e2:m d4/a a4:7
  d2:sus4 d2
  
  % ref
  g1
  d4 a4/cis b2:m
  e2:m a2:7
  d2 d2:7
  g1
  d2 b4:m b4/dis
  e2:m a2:7
  d2:sus4 d2
}

% VOICES
voiceInst = {
  \relative d' {
    \clef treble
    % intro
    
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s1
    \omit Staff.BarLine
    \set Score.currentBarNumber = 1
    
    g4. fis8 g4 b4
    \undo \omit Staff.BarLine
    a8 b8 a8 fis8 d4 fis4
    e4 g4 cis,4 e4
    d2. r4\break
  }
}

voiceSopran = {
  \relative d' {            
    \clef treble
    s1
    r1 * 4
    
    % bait
    d4. e8 fis4 g4
    a4. fis8 d2
    b'4. d8 cis4 b4
    a1 \break
    g4. b8 a4 g4
    fis2 d2
    e4. g8 fis4 e4
    d2. r4\break
    
    % ref
    g4. fis8 g4 b4
    a8 b8 a8 fis8 d4 fis4
    e4 fis4 g4 a4
    fis1\break
    g4. fis8 g4 b4
    a8 b8 a8 fis8 d4 fis4
    e4 g4 cis,4 e4
    d2. r4 \bar "||"
  }
}

voiceAlto = {
  \relative d' {            
    \clef treble
    s1
    r1 * 4
    
    % bait
    d4. cis8 d4 e4
    d4. d8 d2
    g4. fis8 e4 cis4
    d1 \break
    e4. g8 fis4 e4
    d2 b2
    b4. b8 d4 cis4
    d2. r4\break
    
    % ref
    d4. cis8 d4 g4
    fis8 fis8 e8 e8 d4 fis4
    e4 d4 cis4 e4
    d1\break
    e4. fis8 g4 e4
    fis8 fis8 e8 e8 d4 dis4
    e4 d4 cis4 cis4
    d2. r4 \bar "||"
  }
}

voiceTenor = {
  \relative d' {            
    \clef bass
    s1
    r1 * 4
    
    % bait
    a'4. a8 a4 a4
    a4. b8 a2
    d4. d8 cis8( b8) a8( g8)
    fis1\break
    b4. d8 cis4 a4
    fis4( as4) b2
    g4. a8 b4 a4
    g4( e4 fis4) r4\break
    
    % reff
    g4. a8 b4 b4
    a8 a8 g8 g8 fis4 d4
    g8( fis8) e4 fis4 g4
    a4( b4 c2)
    b4. b8 cis4 cis4
    d8 d8 cis8 cis8 b4 a4
    g4 a4 b4 a4
    g4( e4 fis4) r4
  }
}

voiceBass = {
  \relative d' {            
    \clef bass
    s1
    r1 * 4
    
    % bait
    d4. d8 d4 d4 
    d4. e8 fis2
    g4. fis8 e4 a,4
    d1
    e4. e8 a,4 b8( cis8)
    d4( cis4) b2
    e4. e8 a,4 a4
    d2. r4
    
    % reff
    g4 fis4 e4 d4
    fis8 e8 d8 cis8 b4 b4
    e4 e4 a,4 a4
    d4( e4 fis2)
    g4 fis4 e4 d4
    fis8 e8 d8 cis8 b4 b4
    b4 b4 a4 a4
    d2. r4
  }
}




%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 4/4
  \key d \major
}
% ----------------------------------

%  ---- LYRICS ---------------------
lyricBaitEmpty = \lyricmode {
  _ _ _ _  _ _ _ _  _ _ _ _
  _ _ _  _ _ _  _ _ _  _ _
}

lyricBait = \lyricmode {
  I -- bu ki -- ta Kar -- ti -- ni
  Pu -- tri se -- ja -- ti
  Pu -- tri In -- do -- ne -- sia
  Ha -- rum na -- ma -- nya
}

lyricBaitSecond = \lyricmode {
  % bait 2
  I -- bu ki -- ta Kar -- ti -- ni
  Pen -- de -- kar bang -- sa
  Pen -- de -- kar ka -- um -- nya
  Un -- tuk mer -- de -- ka
}

lyricRef = \lyricmode {
  Wa -- hai I -- bu ki -- ta Kar -- ti -- ni
  Pu -- tri yang mu -- li -- a
  Sung -- guh be -- sar ci -- ta- ci -- ta -- nya
  Ba -- gi In -- do -- ne -- sia
}

% ----------------------------------

% SCORE ---------------------------

\score {
  
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  \new ChordNames {
    \chordNames
  }
  
  \new ChoirStaff {
  <<     
    \new SolmisasiStaff \with {
      vocalName = "Inst."
      shortVocalName = "Inst."
    } {
      \solmisasiMusic {
        \headerMusicGlobal
        \voiceInst
      }
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
    \new Lyrics \lyricsto "voiceTenor" {
      \lyricBaitEmpty
      \lyricRef
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
      \set stanza = " 1. "
      \lyricBait
      \lyricRef
    }
    \new Lyrics \with {
    } \lyricsto "voiceBass" {
      \set stanza = " 2. "
      \lyricBaitSecond
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
      #'((basic-distance . 1)
          (minimum-distance . 1)
          (padding . 1)
          (stretchability . 4))
  }
}