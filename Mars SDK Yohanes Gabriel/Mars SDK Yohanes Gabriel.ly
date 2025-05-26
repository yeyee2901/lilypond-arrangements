\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "MARS SDK SANTO YOHANES GABRIEL"
  poet = "Mars, Bersemangat"
  composer = "Arr. Yeyee (2025)"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line { \bold "MARS SDK SANTO YOHANES GABRIEL" }
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
% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""
  
  
  s1 * 4 
  
  % intro
  bes2 es2
  bes2 c4:m c4:m/bes
  as2 f2/a
  bes2 es2
  
  % lagu
  es2 bes4 es4
  c2:m bes4 es4
  as2 f4/a es4/bes
  c4:m as4 es2
  es2 bes4 es4
  c2:m g2:m
  f1:m
  bes1:7
  
  bes2 bes2/as
  es2/g bes4 es4
  bes2 bes2/as
  es4/g es4 bes4:sus4 bes4
  es2 es2:7
  as2 f2:m
  bes2 es2
  bes2 c2:m
  as2 bes4 as4/bes
  bes2 es2
  
  bes2 bes2/as
  g2:m c2:m
  f2:m bes2
  es4 as4 bes4:sus4 bes4
  bes2 bes2/as
  g2:m c2:m
  c2 des2
  as4 f4/a bes4:sus4 bes4
  
  % coda
  s1 * 4
  as2 f2/a 
  bes2 es2
}

voiceInst = {
  \relative es' {
    \clef treble
    
    % save the broken spaces
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s1 * 4 \break
    \set Score.currentBarNumber = 1  
    
    % intro
    f4 g8 as8 bes4 es,4
    d4 es4 g2
    f4 g8 as8 c4 es,4
    g4. f8 es2 \break
  }
}

% VOICES
voiceI = {
  \relative es' {            
    \clef treble
    
    % save the broken spaces
    s1 * 4
    
    % intro
    r1 * 4
    
    % lagu
    bes'4 bes8 c8 bes4 g4
    es4 g4 bes4 bes4
    es,4 d8 es8 f4 g4
    es4 c'4 bes2 \break
    
    bes4 bes8 c8 bes4 g4
    es4 g4 bes4 g4
    f4 f8 g8 as4 bes4
    as4. g8 f2 \break
    
    f4 f8 g8 f4 d4
    bes4 bes'4 bes4 g4
    f4 f8 g8 f4 d4
    bes4 bes'4 bes2 \break
    
    bes4 bes8 c8 bes4 g4
    es4 c'4 c4 as4
    f4 g8 as8 bes4 es,4
    d4 es4 g2 -\tweak X-offset #2.0 ^\markup { \magnify #0.8 \bold "2nd to Coda" } \break
    
    f4 g8 as8 bes4 es,4
    g4. f8 es2
   
    f4^\markup{ \italic "softer"} es8 d8 d4 c8 bes8 \break
    bes4 es8 f8 g4 es4
    f4 es8 d8 d4 c8 bes8
    bes4 as'8 g8 f2 \break
    f4 es8 d8 d4 c8 bes8
    bes4 es8 f8 g4 es4
    g4 f8 g8 as4 g8 f8
    es4 d8 es8 bes'2 -\tweak X-offset #4.0 ^\markup{ \magnify #0.7 \bold "D.C. Al Coda" } \bar ":|." 
    \break

    % Coda
    \omit Score.BarNumber
    s1 * 4 \break
    
    f4 ^\markup{ \bold "Coda" } g8 as8 c4 ^\fermataMark es,4^\markup{\bold \italic "rit."}
    g4. f8 es2( 
    es1)
    
  }
}

voiceII = {
  \relative es' {            
    \clef treble
    % save the broken spaces
    s1 * 4
    
    % intro
    r1 * 4
    
    % lagu
    g4 g8 g8 f4 es4
    c4 c4 d4 es4
    c4 c8 c8 c4 es4
    c4 c4 es2
    g4 g8 g8 f4 es4
    es4 es4 d4 d4
    c4 c8 d8 es4 f4
    f4. es8 d2
    
    f4 f8 g8 f4 d4
    bes4 c4 d4 es4
    f4 f8 g8 f4 d4
    bes4 es4 es4( d4)
    es4 es8 es8 des4 des4
    c4 c4 f4 f4
    d4 es8 f8 g4 es4
    d4 es4 es4( d4)
    c4 c8 d8 es4 c4
    es4. d8 es2
    
    % tiga pekan
    d4 c8 bes8 bes4 c8 bes8
    bes4 bes8 bes8 c4 c4
    c4 c8 c8 bes4 bes8 bes8
    bes4 c8 c8 es4( d4)
    d4 c8 bes8 bes4 c8 bes8
    bes4 bes8 bes8 c4 c4
    e4 c8 e8 f4 f8 f8 
    c4 c8 c8 es4( f4)
    
    % coda
    s1 * 4
    c4 c8 d8 es4 c4
    es4. d8 bes2(
    bes1)
    
    
  }
}

voiceIII = {
  \relative es'' {            
    \clef treble
    % save the broken spaces
    s1 * 4
    
    % intro
    r1 * 4
    
    % lagu
    bes4 bes8 bes8 bes4 bes4
    c4 bes4 as4 g4
    as4 as8 as8 a4 bes4
    c4 as4 bes2
    bes4 bes8 bes8 bes4 bes4
    c4 c4 g4 g4
    as4 as8 bes8 c4 c4
    d4. c8 bes2
    bes4 bes8 bes8 as4 as4
    g4 es4 f4 g4
    bes4 bes8 bes8 as4 as4
    g4 es4 f4( bes4)
    bes4 bes8 as8 g4 g4
    as4 bes4 c4 c4
    bes4 bes8 bes8 bes4 bes4
    as4 bes4 c4( bes4)
    as4 as8 as8 bes4 as4
    bes4. as8 g2
    
    % tiga pekan
    bes4 bes8 bes8 as4 as8 as8
    g4 as8 bes8 c4 g4
    as4 as8 g8 f4 es8 f8
    g4 as8 c8 bes2
    bes4 bes8 bes8 as4 as8 as8
    g4 as8 bes8 c4 g4
    c4 c8 c8 des4 des8 des8
    c4 a8 a8 bes2
    
    % coda
    s1 * 4
    as4 as8 as8 a4 a4
    bes4. as8 g2(
    g1)
 }
}


% ------ LYRIC ----------------------
lyricSong = \lyricmode {
   Ja -- ya hor -- mat ka -- sih mu -- li -- a
   San -- to Yo -- ha -- nes Ga -- bri -- el
   Un -- tuk ra -- ya -- kan p'ri -- ngat -- an -- nya
   Ma -- ri men -- jun -- jung ke sur -- ga
   
   Oh mu -- li -- a kur -- ban -- kan nya -- wa
   di se -- be -- rang de -- mi Tu -- han
   
   Ba -- gai pe -- war -- ta su -- ci i -- ni
   Oh in -- dah -- nya ja -- di sak -- si,
   Oh in -- dah -- nya ja -- di mar -- tir!
   
   Ti -- ga pe -- kan di ban -- dar Su -- ra -- ba -- ya
   Kau do -- a -- kan a -- nak dan bang -- sa -- ku
   A -- gar Tu -- han ber -- ka -- ti tu -- a mu -- da
   a -- nak di -- dik ber -- lin -- dung pa -- da -- mu
   
   % coda
   Oh in -- dah -- nya ja -- di mar -- tir!
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
      vocalName = "Instr."
      shortVocalName = "Instr."
    } {
    <<
      \new SolmisasiVoice = "Instr." {
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
    } \lyricsto "voiceI" {
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
