\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Hymne Santo Stanislaus"
  poet = "Lembut, mengalun"
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
% CHORD
chordNames = \chordmode {
  s1 * 4
  c2 c2/e
  f4 g4 a2:m
  c4/e f4 c4/e d4:m
  g1
  
  c2 c2/e
  e2 a2:m
  g2 d4:m g4
  c1
  
  f2 d4:m g4
  c2 c2/e
  d2:m g2
  c1
  
  f2 d4:m g4
  e2 a2:m
  d1
  g1
  
  c2 c2/e
  f4 g4 a2:m
  c4/e f4 c4/e d4:m
  g1
  
  c2 c2:7/e
  f2 f2:m
  d2:m f4/g g4
  c1
  
}

% VOICES
voiceI = {
  \relative es' {            
    \clef treble
    s1 * 4\break
    g2 c2
    d4 b4 c4 b8 a8
    g4 a4 g4 f8 e8
    d2 r4 e8 f8\break
    
    g2 c2
    b4 a8 b8 c4 b8 a8
    g4. a8 f8 e8 d4
    c2 r4 r8[ c8] \break
    
    f8 e8 f8 g8 a4 g8 f8
    e8 d8 e8 f8 g4. e8
    d8 c8 d8 e8 f4 g4
    e2 r4 d8 e8\break
    
    f8 e8 f8 g8 a4 g8 f8
    e8 dis8 e8 b'8 c2
    a4. a8 b4 c4
    d2. r4
    
    g,2 c2
    d4 b4 c4 b8 a8
    g4 a4 g4 f8 e8
    d2 r4 e8 f8\pageBreak
    
    g2 c2
    d4 c8 b8 c2
    f,8 g8 a8 b8 c4 d4
    c1 \bar "||"
    
  }
}

voiceII = {
  \relative es' {            
    \clef treble
    s1 * 4\break
    c4.( d8) e2
    f4 g8( f8) e4 e8 d8
    c4 d4 e4 d8 c8
    b2 r4 a8 b8
    
    c4.( d8) e2
    d4 e8 f8 e4 e8 e8
    d4. d8 d8 c8 b4
    c2 r4 r8[ c8]
    
    d8 c8 d8 e8 f4 e8 d8
    c8 b8 c8 d8 e4. c8
    a8 a8 b8 c8 d4 d4
    c2 r4 b8 c8
    d8 c8 d8 e8 f4 g8 f8
    e8 dis8 e8 f8 e2
    d4. d8 e4 fis4
    g2. r4
    
    c,4.( d8) e2
    f4 g8( f8) e4 e8 d8
    c4 d4 e4 d8 c8
    b2 r4 a8 b8
    c4.( d8) e2
    f4 e8 d8 c2
    d8 e8 f8 g8 a4 g8 f8
    e1
  }
}

voiceIII = {
  \relative es' {            
    \clef treble
      s1 * 4
      e2 g2
      a4 g4 a4 g8 f8
      e4 f4 g4 a8 a8
      g2 r4 g8 f8
      
      e2 g2
      gis4 a8 gis8 a4 a8 a8
      g4. f8 f8 f8 f4
      e2 r4 r8[ g8]
      
      a8 g8 f8 e8 d4 e8 f8
      g8 a8 g8 b8 c4. b8
      a8 g8 f8 e8 d4 g4
      g2 r4 g8 g8
      a8 g8 f8 e8 d4 b'8 a8
      gis8 gis8 a8 gis8 a2
      fis4. g8 a4 a4
      b2. r4
      
      e,2 g2
      a4 g4 a4 g8 f8
      e4 f4 g4 a8 a8
      g2 r4 g8 f8
      e2 g4( bes4)
      a4 a8 a8 gis2
      a8 b8 c8 d8 c4 b4
      c1
  }
}

lyricVoiceOneTwo = \lyricmode {
   San -- to Sta -- ni -- slaus X X X X X X X X de -- ngan
   te -- kad 'tuk meng -- ab -- di pang -- gil -- an di ja -- lan Kris -- tus
   Di -- -tem -- puh -- nya ja -- lan, di -- om -- bang -am -- bing du -- nia,
   te -- tap -- lah ku -- at i -- man -- nya.
   Wa -- lau ba -- nyak rin -- tang -- an, se -- ti -- a di ja -- lan -- NYA
   Lu -- hur mu -- li -- a
   San -- to Sta -- ni -- slaus X X X X X X X X
   'kan ku ta -- nam da -- lam ha -- ti te -- kad peng -- ab -- di -- an -- mu
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
    
    % CHORDS
    \new ChordNames {
      \chordNames
    }
    
    % VOICE I
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
    \new Lyrics \with {
    } \lyricsto "voiceI" {
    }
    
    
    
    % VOICE II
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
    \new Lyrics \with {
    } \lyricsto "voiceII" {
    }
    
    
    % VOICE III
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
      \lyricVoiceOneTwo
    }
  >> 
  }
>>
}

% atur spacing antar stave suara
\layout {
  \context {
    \Score
    \omit BarNumber
    \override StaffGrouper.staff-staff-spacing = 
      #'((basic-distance . 5)
          (minimum-distance . 1)
          (padding . 2)
          (stretchability . 3))
  }
}

\markup {
  \left-column{
    \line { \draw-hline }
    \line { Catatan penulis: }
    \line { *Suara I dapat dinyanyikan oleh Sopran, sedangkan suara II dapat dinyanyikan }
    \line { oleh Alto. }
    \line { *Suara III dapat dinyanyikan oleh oleh pria (Tenor-Baritone-Bass) }
  }
}