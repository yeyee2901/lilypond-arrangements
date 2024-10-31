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
    \set noChordSymbol = ""
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
    
    % dalam kristus
    r4 r4 r4 r4
    g1 
    d1:7
    g1
    g1
    d1:7
    d1:7
    g1
    r4 g4 g4/a g4:7/b
    c1
    c1
    g2 b2:m/fis
    e1:m
    a1:m
    d1:7
    g1
    
    % coda
    r4 g4 g4/a g4:7/b
    c1 
    c2:m g4/d d4:7
    g2 b4:m b4
    e4:m r4 r4 e4
    a1:m
    d1:7
    g1
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
    \key g \major
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
    
    % dalam kristus kita bersaudara
    \key g \major
    r1
    r4 d8 d4 c8 d8( e8)
    d2. r4
    r4 d8 d4 e8 d8 c8 \break
    b4 d4 e4 d4
    a1
    r4 d8 d8 \tuplet 3/4 { e d c }
    b1\break
    
    r4 g4 a4 b4
    c4 c8 c8 \tuplet 3/4 { c c c }
    c2 d4 c4
    b4 b8 a8 b4 a4\break
    g4 d4 g4 b4
    a1
    r4 a8 b8 \tuplet 3/4 { c b a }
    g1 \break
    
    r4^\markup{\bold Coda}
    g4 a4 b4
    c4 c8 c8 \tuplet 3/4 { c c c }
    c2 d4 c4
    b4 b8 a8 b4 a4\break
    g4 d4 g4 b4
    a1
    r4 a8^\markup{ \italic \bold "rit." } b8 \tuplet 3/4 { c b a }
    g1 \bar "||" 
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
    
    \key g \major
    r1
    r4 b8 b4 a8 a8( g8)
    fis2. r4
    r4 g8 g4 a8 g8 fis8
    g4 g4 a4 g4
    fis1
    r4 g8 g8 \tuplet 3/4 { a g fis }
    g1
    r4 g4 fis4 f4 
    e4 e8 e8 \tuplet 3/4 { e e fis }
    g2 b4 a4
    g4 d8 e8 fis4 fis4
    e4 d4 c4 b4
    c1
    r4 d8 e8 \tuplet 3/4 { fis fis e }
    d1
    
    % coda
    r4 g4 fis4 f4 
    e4 e8 e8 \tuplet 3/4 { e e fis }
    g2 b4 a4
    g4 d8 e8 fis4 fis4
    e4 d4 c4 b4
    c1
    r4 d8 e8 \tuplet 3/4 { fis fis e }
    d1
  }
}

voiceTenor = {
  \relative f' {
    \clef bass
    r1 * 25
    
    % dalam kristus kita bersaudara
    \key g \major
    r4 d4 g4 a4 
    b1
    r4 c8 d8 \tuplet 3/4 { e d c }
    b1
    r1
    c2( b2
    a4) d8 d8 \tuplet 3/4 { c b c }
    d1
    r1
    c8 c8 r8[ d8] e4 r4
    c8 c8 c8 c8 d4 c4
    d2 d2
    b2. r4
    a8 a8 a8 a8 a8 b8 c8 cis8
    d4 d8 e8 \tuplet 3/4 { d d c }
    b1
    r4 b4 c4 d4
    e4 e8 e8 \tuplet 3/4 { e e e }
    dis2 d4 d4
    d4 b8 c8 d4 c4
    b4 b4 a4 gis4
    a2 r8[ b8] c8 cis8
    d4 d8 e8 \tuplet 3/4 { d d c }
    b1
  }
}

voiceBass = {
  \relative f' {
    \clef bass
    r1 * 25
    
    % dalam kristus kita bersaudara
    \key g \major
    r4 d4 g4 a4 
    b1
    r4 a8 b8 \tuplet 3/4 { c b a }
    g1
    r1
    d2( e2
    fis4) d8 d8 \tuplet 3/4 { d e fis }
    g1
    r1
    g8 g8 r8[ g8] g4 r4
    e8 e8 e8 fis8 g4 fis4
    g2 fis2
    e2. r4
    a8 a8 a8 a8 a8 g8 fis8 e8
    d4 d8 d8 \tuplet 3/4 { d e fis }
    g1
    r4 g4 g4 g4
    c,4 c8 c8 \tuplet 3/4 { c c c }
    c2 d4 d4
    g4 g8 g8 d4 dis4
    e4 e4 fis4 gis4 
    a2 r8[ g8] fis8 e8
    d4 d8 d8 \tuplet 3/4{ d d d }
    g1
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
  
  Di da -- lam Kris -- tus
  Ki -- ta ber -- sau -- da -- ra
  Da -- lam Kris -- tus
  Ki -- ta ber -- sau -- da -- ra
  Da -- lam Kris -- tus ki -- ta ber -- sau -- da -- ra
  Se -- ka -- rang dan se -- la -- ma -- nya
  Da -- lam Kris -- tus ki -- ta ber -- sau -- da -- ra
  Da -- lam Kris -- tus ki -- ta ber -- sau -- da -- ra
  Se -- ka -- rang dan se -- la -- ma -- nya
  Da -- lam Kris -- tus ki -- ta ber -- sau -- da -- ra
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

lyricVoiceTenor = \lyricmode {
}

lyricVoiceBass = \lyricmode {
  Da -- lam Kris -- tus ki -- ta ber -- sau -- da -- ra
  Huuu...
  Ki -- ta ber -- sau -- da -- ra
  Da -- lam Kris -- tus
  Ki -- ta ber -- sau -- da -- ra
  S'la -- ma -- nya
  Da -- lam Kris -- tus s'la -- ma la -- ma -- nya
  Ki -- ta ber -- sau -- da -- ra
  Da -- lam Kris -- tus ki -- ta ber -- sau -- da -- ra
  Se -- ka -- rang dan se -- la -- ma -- nya.
  Da -- lam Kris -- tus, da -- lam Kris -- tus, ki -- ta ber -- sau -- da -- ra
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
      \lyricVoiceTenor
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
      \lyricVoiceBass
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
    \line{*bagian 'Dalam Kristus' dapat dilagukan berulang-ulang (sebelum masuk Coda)}
    \line{ sesuai kebutuhan}
  }
}