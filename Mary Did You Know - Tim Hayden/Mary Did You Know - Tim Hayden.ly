\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MARY, DID YOU KNOW"
  subtitle = "(music by Mark Lowry & Buddy Greene)"
  poet = "Flowing, Bright, not Slow (M.M. 110 - 116)"
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
% articulation marks
fermataMark = -\tweak X-offset #-0.8 -\tweak Y-offset #-0.5 ^\markup{ \magnify #2.3 \char ##x1D110 }
accentMark = -\tweak X-offset #-0.3 -\tweak Y-offset #-1.2 ^\markup{ \magnify #1.3 \bold ">" }


% ----------------------------------
% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""
  
  % intro
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
  
  % unisonos
  b1:m
  fis1:m/a
  e1:m
  fis1
  b1:m
  fis1:m/a
  e1:m
  fis1
  e1:m7
  \set additionalPitchPrefix = "add"
  <a, b cis e >1
  \unset additionalPitchPrefix
  d2 a2/cis
  b1:m
  e1:m7
  e1:m7
  fis1:sus4
  fis1
  
  % repetisi kedua
  b1:m
  fis1:m/a
  e1:m
  fis2 fis2:m/a
  b1:m
  fis1:m/a
  e1:m
  fis1
  e1:m7
  \set additionalPitchPrefix = "add"
  <a, b cis e >1
  \unset additionalPitchPrefix
  d2 a2/cis
  b1:m
  e1:m7
  e1:m7
  fis1:sus4
  fis1
  b1:m
  a1
  e1:m
  fis2:sus4 fis2
  b1:m
  b1:m/a
  e2:m/g e2:m
  fis1:sus4
  fis1
  g1
  a1/g
  b2.:m a8 b8:m
  r1
  e2.:m r8 e8:m
  fis4:m d4/fis fis4 r8 fis8
  b1:m
  fis1:sus4
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
voiceSopran = {
  \relative d' {
    \clef treble
    \omit Staff.BarLine
    s1 * 4 
    s1 * 4
    \undo \omit Staff.BarLine
    r4^\markup{ \italic "unisono SA" } r4 b8 cis8\mp d8 e8 \break
    fis2 r8[ b,8] fis'8 e8(
    e4) d8 cis8( cis4) r8[ cis8]
    b8 cis4 d8(d8) e4 d8(
    d8) cis4. r2
    
    % unisono TB
    r1 * 3

    r4 r4 r8[ fis8]\mf b8 b8(
    b2)( b8)[ r8] r4
    r2 r4 r8[ e,8]
    fis4 a8 a8( a8) b4 b8(
    b2) r4 r8[\mp fis8] \break
    \tweak X-offset #1.0 g4 fis8 e8( e4) d8 e8(
    e8) fis4. r4 r8[ fis8]\<
    fis4 fis8 fis8( fis8)\! g8( fis8)\> fis8(
    fis4) r4\! b,8\mp cis8 d8 e8 \break
    
    % repetisi kedua
    fis2 r8[ b,8] fis'8 e8(
    e4) d8 cis8( cis4) r8[ cis8]
    b8 cis4 d8( d8) e4 d8( 
    d8) cis4. r2 \break
    r8[ d8] e8 fis8( fis8) b,8 fis'8 e8(
    e4) d8 cis8( cis4) r8[ cis8]
    b4\< cis8 d8( d8) e4 g8(
    g8) fis4.\! r8\mf[ fis8] b8 b8( \break
    b2)( b8) cis8 d8 cis8(
    cis4) b8 a8( a4) r8[ e8]
    fis4 a8 a8( a8) a4 b8\>(
    b2) r8\![ e,8]\mp e8 fis8 \pageBreak
    \tweak X-offset #1.0 g4 fis8 e8( e4) d8 e8(
    e8) fis4. r4 r8[ e8]\<
    fis4 fis8 fis8( fis8) g4 fis8(
    fis4)\!
    
    % part selanjutnya (pokoknya beda part dari sebelumnya)
    r8[ fis8]\mf fis8 e4 d16 cis16\break
    cis4.\( d8( d2)
    e4. d8( d2)\)
    fis2.\(\< g4
    e1\)\!\> \break
    r4\! r8[ d8\mf(] d8)fis8 fis8 b8
    b1(
    b2.) b8 b8
    b1^\accentMark( -\tweak X-offset #3.6 \<
    as2.)\! r8[ as8] \break
    \tweak X-offset #1.4 b4\f b8 b8( b4) r8[ b8]
    cis4 d8 cis8( cis4) r8[ cis8]
    d4. b8 b4 a8 b8(
    b2) r4 r8[ a8] \pageBreak
    \tweak X-offset #1.2 b4^\markup{ \italic \bold "with accent."}  cis4 b4 r8[ b8]
    cis4 d4 cis4 r8[ cis8]
    d4^\accentMark -\tweak X-offset #4 \< cis8 b8( b8) cis4\! cis8(-\tweak X-offset #1.5 \ff
    cis1)(
    cis2)^\fermataMark r2
  }
}

voiceAlto = {
  \relative d' {            
    \clef treble
    \omit Staff.BarLine
    s1 * 4 
    s1 * 4
    \undo \omit Staff.BarLine
    r4 r4 b8 cis8 d8 e8 \break
    fis2 r8[ b,8] fis'8 e8(
    e4) d8 cis8( cis4) r8[ cis8]
    b8 cis4 d8(d8) e4 d8(
    d8) cis4. r2
    
    % unisono TB
    r1 * 3

    r4 r4 r8[ fis8] g8 g8(
    g2)( g8)[ r8]
    r4
    r2 r4 r8[ e8]
    fis4 a8 a8( a8) fis4 fis8(
    fis2) r4 r8[ fis8]
    \tweak X-offset #1.0 g4 fis8 e8( e4) d8 e8(
    e8) fis4. r4 r8[ fis8]
    fis4 fis8 fis8( fis8) g8( fis8) fis8(
    fis4) r4 b,8 as8 b8 cis8
    
    % repetisi kedua
    d2 r8[ b8] d8 cis8(
    cis4) b8 a8( a4) r8[ a8]
    g8 a4 b8( b8) cis4 b8( 
    b8) as4. r2
    r8[ b8] cis8 d8( d8) b8 d8 cis8(
    cis4) b8 a8( a4) r8[ a8]
    g4 a8 b8( b8) cis4 b8(
    b8) as4. r8[ fis'8] g8 g8(
    g2)( g8) e8 fis8 e8(
    e4) d8 cis8( cis4) r8[ cis8]
    d4 fis8 fis8( fis8) e4 fis8(
    fis2) r8[ e8] e8 fis8
    \tweak X-offset #1.0 g4 fis8 e8( e4) d8 e8(
    e8) fis4. r4 r8[ e8]
    cis4 cis8 cis8( cis8) cis4 cis8(
    cis4)
    
    % part selanjutnya (pokoknya beda part dari sebelumnya)
    r8[ fis8] fis8 e4 d16 cis16\break
    a4.\( b8( b2)
    cis4. b8( b2)\)
    d2.\( e4
    cis1\)
    r4 r8[ d8\mf(] d8) fis8 fis8 fis8
    fis4. fis8( fis8) g8 fis8 e8
    fis2 g2
    fis1( 
    fis2.) r8[ fis8]
    \tweak X-offset #1.4 g4 g8 g8( g4) r8[ g8]
    a4 b8 a8( a4) r8[ a8]
    fis4. fis8 fis4 e8 fis8(
    fis2) r4 r8[ fis8]
    \tweak X-offset #1.2 g4 g4 g4 r8[ g8]
    a4 a4 as4 r8[ as8]
    b4 a8 fis8( fis8) b4 b8(
    b1)
    as2 r2
  }
}

voiceTenor = {
  \relative d' {            
    \clef bass
    s1 * 8
    r1 * 4
    r4 r4 b8\mp cis8 d8 e8
    fis2 r8[ b,8] fis'8 e8(
    e4) d8 cis8( cis4) r8[cis8]
    b8 cis4 d8( d8) e4 g8(
    g8) fis4. r8[ fis8] d'8 d8( \break
    d2)( d8) cis8 d8 cis8(
    cis4) b8 a8( a4) r8[ e8]
    fis4 a8 a8( a8) d4 d8(
    d2) r2
    r1
    r4 r4 r4 r8[ fis,8]
    fis4 fis8 fis8( fis8) g8( fis8) fis8(
    fis4) r2.
    
    % repetisi kedua SA
    r1 * 3
    
    % TB sahut2 an
    r4 r4 b8\mp a8 fis8 e8
    fis1 
    r1 
    r1
    
    % did you know
    r2 r8\mf[ fis8] d'8 d8(
    d2)( d8) cis8 d8 cis8(
    cis4) b8 a8( a4) r8[ a8]
    a4 d8 cis8( cis8) cis4 d8(
    d2) r2
    r1
    r2 r4 r8[ b8]
    b4 b8 b8( b8) b4 as8(
    as4) r4 r2
    
    % Part legato OHHHHHH
    r1
    r1
    a2.\( b4(
    b2)\) as8\mf cis8 cis8 d8
    d1(
    d1)
    d2 b2
    cis1(
    cis2.) r8[ cis8]
    \tweak X-offset #1.4  b4 b8 b8( b4) r8[ b8]
    cis4 d8 e8( e4) r8[ e8]
    d4. d8 d4 cis8 d8(
    d2) r4 r8[ d8]
    \tweak X-offset #1.2 d4 d4 d4 r8[ d8]
    e4 e4 e4 r8[ e8]
    fis4 \override Beam.positions = #'(2 . 2) e8 \override Beam.positions = #'(2 . 2) d8( d8)  <b fis'>4 <cis( fis(>8
    <cis)( fis)(>1 
    <cis) fis)>2 r2
  }
}

voiceBass = {
  \relative d' {            
    \clef bass
    s1 * 8

    r1 * 4

    r4 r4 b8 cis8 d8 e8
    fis2 r8[ b,8] fis'8 e8(
    e4) d8 cis8( cis4) r8[cis8]
    b8 cis4 d8( d8) e4 g8(
    g8) fis4. r8[ fis8] b8 b8(
    b2)( b8) cis8 d8 cis8(
    cis4) b8 a8( a4) r8[ e8]
    fis4 a8 a8( a8) b4 b8(
    b2) r2
    r1
    r4 r4 r4 r8[ fis8]
    fis4 fis8 fis8( fis8) g8( fis8) fis8(
    fis4) r2.
    
    % repetisi kedua SA
    r1 * 3
    
    % TB sahut2 an
    r4 r4 b8 a8 fis8 e8
    fis1 
    r1 
    r1 
    r2 r8[ fis8] b8 b8(
    b2)( b8) cis8 d8 cis(
    cis4) b8 a8( a4) r8[ a8]
    d,4 d8 cis8( cis8) cis4 b8(
    b2) r2
    r1
    r2 r4 r8[ g'8]
    fis4 fis8 fis8( fis8) fis4 fis8(
    fis4) r4 r2
    
    % Part OHHHHH legato
    r1
    r1
    e1\(
    fis1\)
    r2 b2\mf
    a2. a8 a8
    g2. g8 g8
    fis1(
    fis2.) r8[ fis8]
    \tweak X-offset #1.4  g4 g8 g8( g4) r8[ g8]
    a4 b8 cis8( cis4) r8[ cis8]
    b4. b8 b4 fis8 b8(
    b2) r4 r8[ a8]
    \tweak X-offset #1.2  e4 e4 e4 r8[ e8]
    fis4 fis4 fis4 r8[ fis8]
    b4 b8 b8( b8) b4 fis8(
    fis1)(
    fis2) r2
    
  }
}

% ---- LYRICS ----
lyricsSopran = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
   
  
  % part OHHHH
  Oh... _ _ 
  Ma -- ry did you know?
  did you know?
  The _ _ _
  _ _ _ _
  _ _ _ _ _ 
}

lyricsAlto = \lyricmode {
  Ma -- ry, did you know that your ba -- by boy 
  will one day walk on wa -- ter?
  Did you know
  has come to make you new?
  This child that you de -- liv -- ered
  will soon de -- liv -- er you
  Ma -- ry, did you know that your ba -- by boy
  will give sight to a blind man?
  Did you know that your ba -- by boy
  will calm a storm with his hand?
  Did you know that your ba -- by boy 
  has walked where an -- gels trod?*
  And when you kiss your lit -- tle ba -- by
  you've kissed the face of God.
  Oh, Ma -- ry, did you know...?
  _ _ _ Oh.. _ _
  Ma -- ry, did you know? Ma -- ry did you know,
  you know?
  The blind will see,
  the deaf will hear,
  the dead will live a -- gain
  The lame will leap,
  the dumb will speak,
  the prais -- es of the lamb!
}

lyricsTenor = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _
  
  % part OHHHH
  Oh.. _ Ma -- ry, did you know..
  did you know?
  The _ _ _
  _ _ _ _
  _ _ _ _ _ 
}

lyricsBass = \lyricmode {
  Ma -- ry, did you know that your ba -- by boy will
  save our sons and daugh -- ters?
  Did you know that your ba -- by boy 
  has come to make you new?
  will soon de -- liv -- er you
  Ma -- ry, did you know?
  Did you know that your ba -- by boy 
  has walked where an -- gels trod?*
  you've kissed the face of God.
  Oh.. _
  Ma -- ry, did you know, did you know?
  The blind will see,
  the deaf will hear,
  the dead will live a -- gain
  The lame will leap,
  the dumb will speak,
  the prais -- es of the lamb!
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
      shortVocalName = "Inst."
    } {
      \new SolmisasiVoice {
        \solmisasiMusic{
          \headerMusicGlobal
          \voiceInst
        }
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
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
       \lyricsSopran
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
      \lyricsAlto
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
      \lyricsTenor
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
      \lyricsBass
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
    \line {*kalimat 'has walked where angels trod', 'trod' dapat diartikan menginjak (to step upon), }
    \line { menggambarkan bahwa bayi Yesus telah berjalan di jalan yang telah disiapkan oleh para malaikat }
    \line { sebelumnya. }
  }
}