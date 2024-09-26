\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "[UNTITLED DRAFT SONG]"
%  subtitle = ""
  poet = "Daniel Ortega CM"
  composer = "arr. by Yeyee"
  tagline = \markup {
    \typewriter \fontsize #-1 {   
      "Transcribed by Yeyee using GNU Lilypond & solmisasi-lily - 2024"
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  left-margin = 1.3\cm
  print-page-number = false
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 22)))
}


% --------------------------------------
% ARTICULATION MARKS
markRit = \markup{
  \italic {"rit."}
}

markAccel = \markup{
  \italic "accel"
}

markFreely = \markup{
  \italic "freely"
}

markAtempo = \markup {
  \italic "a tempo"
}

markMarcatto = \markup {
  \bold ">"
}


% ----------------------------------

% VOICES

intro = {
  \relative es' {
    s2
    es8  ^\markup{\bold "Intro:"}  f8 g8 bes8
    c4 d4 es8 d16 c16 bes8 as8
    g4 f8 g16 f16 es2
    r8[ c8] es8 as8 g4 f4
    es2(
    es2) \break
  }
}

interlude = {
  \relative es' {
    c'8 d8 d8 es8
    es8 f8 f8 g8
    g4 f4
    es4 r8[ r16 es32 d32]
    c8 es8 as4
    \tuplet 3/2 { f4 es d }
    es2(
    es2)\break
  }
}

chordNames = {
  \chordmode {
    % intro
    s1
    as2 es2/g
    g2:7 c2:m
    as2 es4/b bes4:7
    es2:sus4 es2
    
    es2 es2:maj9
    es2:7 es2:7/g
    as2 es2/g
    g2:7 c2:m
    as2 es2/g
    as2 es2/g
    as2 es2/g
    f4:m as4/bes
    es2
    es2:7
    
    % reff 1
    as2
    bes2
    g2:m7
    c2:m
    f2:m
    bes2
    es2
    es2:7
    as2
    bes2
    g2:m7
    c2:m
    as2 es2/g
    as2 es2/g
    as2 es2/g
    f4:m as4/bes
    es1
    
    % interlude
    as2
    bes2/g
    g2
    c2:m
    as2
    bes2/as
    es2:sus4
    es2
    
    % bait 2
    es2 es2:maj9
    es2:7 es2:7/g
    as2 es2/g
    g2:7 c2:m
    as2 es2/g
    as2 es2/g
    as2 es2/g
    f4:m as4/bes
    es2
    es2:7
    
    % reff
        as2
    bes2
    g2:m7
    c2:m
    f2:m
    bes2
    es2
    es2:7
    as2
    bes2
    g2:m7
    c2:m
    as2 es2/g
    as2 es2/g
    as2 es2/g
    f4:m as4/bes
    es1
    
    % modulasi
    as2
    bes2
    c4.:sus4 c8
    f4/a a4:m
    
    % reff modulasi
    bes2
    c2
    a2:m7
    d2:m
    g2:m
    c2
    f2
    f2
    bes2
    c2
    a4:m a4:7
    d2*3:m
    f2/a
    bes2
    f2/a
    g2:m
    f2/a
    bes4
    c4/bes
    f2
    f2:sus4
    f1
  }
}

mainReffMelodySopran = {
  \relative es' { 
    c'4.\< as8
    g8\!\> f4.\!
    bes4.\< f8
    f8\!\> es4.\!
    as4.\mp bes8
    g8 f8 es8 f8
    g4.\< g8
    as8 bes4.\!
    c4.\f as8
    g8 f4.
    bes4. f8
    f8\> es4.
    r8[\!\mp c8] es8 c8 
    f8 g4.
    r8[\< c,8] es8 c'8 
    bes8. g16 es4\!
    r8[\mp c8] es8 f8 
    f8 g4.
    r8[^\markRit es8] es8 d8^\markAtempo 
    es2(
    es2)
  }
}

mainReffMelodyAlto = {
  \relative es'{
    f4. f8
    es8 d4.
    d4. d8
    c8 c4.
    c4. c8
    bes8 c8 d8 es8
    es4. d8
    des8 des4.
    f4. f8
    es8 d4.
    d4. d8
    c8 c4.
    r8[ c8] es8 c8
    d8 es4.
    r8[ c8] es8 as8
    g8. f16 es4
    r8[ c8] c8 c8
    d8 es4.
    r8[ c8] c8 bes8
    bes2(
    bes2)  
  }
}

mainReffMelodyTenor = {
  \relative es' {
    c'4. c8
    bes8 bes4.
    bes4. bes8
    as8 g4.
    c4. c8
    bes8 as8 g8 as8
    bes4. bes8
    bes8 bes4.
    c4. c8
    c8 bes4.
    bes4. bes8
    as8 g4.
    r8[ es8] es8 f8
    f8 g4.
    r8[ as8] bes8 c8
    es8. c16 bes4
    r8[ as8] as8 as8
    bes8 bes4.
    r8[ as8] as8 as8
    g2(
    g2)
  }
}

mainReffMelodyBass = {
  \relative es' {
    as4. es8
    es8 bes4.
    g'4. g8
    c,8 c4.
    f4. f8
    es8 d8 c8 bes8
    es4. f8
    f8 g4.
    as4. es8
    es8 bes4.
    g'4. g8
    c,8 c4.
    r8[ c8] es8 c8 
    es8 es4.
    r8[ c8] c8 d8
    es8. f16 g4
    r8[ c,8] c8 c8
    bes8 bes4.
    r8[ c8] bes8 bes8
    es2(
    es2)
  }
}

sopran = {
  \relative es' {
    % intro
    r2*10
    
    % bait
    r2*17
    
    % reff A
    \mainReffMelodySopran \break
    
    % interlude
    r2 * 8
    
    % bait 2
    bes'2\p(
    bes2
    bes4. as8)
    g4 f4
    as2
    r2
    d4 d4
    c2
    r2
    bes8 bes8( bes8.) bes32 bes32
    c2
    bes4 bes4
    c2
    r4 g8. g16
    as8^\markRit c8 c8 bes8
    bes2( ^\markAtempo
    bes2)
    
    % reff 2
    \mainReffMelodySopran \break
    
    % modulasi
    c,8\< d8 d8 es8
    es8 f8 f8 g8
    g4.^\markRit \! c8\ff
    
    \key f \major
    f4^\markMarcatto  e4^\markMarcatto \break
    
    d4.^\markAtempo d8
    d8 c4.
    e4. d8\>
    c8 d4.
    d4.\!\mp d8
    c8 bes8 a8 bes8
    c4.\< c8
    f4 e4 \break
    d4\!\ff d4
    c4 a8^\markRit bes8
    c4 e4
    d2(
    d2)^\markup{ \italic "unhurried, do not rush.."}
    r2
    c8\mp c8( c8.) c32 c32\break
    d2
    c4 c4
    d2
    r4 a8. a16
    bes8^\markRit d8 d8 c8
    c2
    d4 f4
    f2(
    f2)
  }
}

alto = {
  \relative es' {
    % intro
    r2*10
    
    % bait
    r2*17
  
    % reff
    \mainReffMelodyAlto
    
    % interlude
    r2 * 8
    
    % bait 2
    g2(
    g4 f4
    f2)
    es4 es4
    es2
    r2
    f4 f4
    es2
    r2
    g8 g8( g8.) g32 g32
    as2
    g4 g4
    as2
    r4 es8. es16
    f8 as8 as8 as8
    g2(
    g2)
    
    % reff
    \mainReffMelodyAlto

    % modulasi
    c,8 d8 d8 es8
    es8 es8 es8 es8
    f4.  e8
    
    \key f \major
    f4  a4
    bes4. g8
    f8 e4.
    a4. g8
    g8 a4.
    g4. a8
    f8 g8 a8 g8
    f4. g8
    a4 a8( g8)
    f4 f4
    g4 f8 e8
    e4 a8( g8)
    f2(
    f2)
    r2
    a8 a8( a8.) bes32 bes32
    bes2
    a4 g4
    f2
    r4 f8. f16
    g8 bes8 bes8 bes8
    a2
    bes4 g4
    a2(
    a2)
  }
}

tenor = {
  \relative es' {
    % intro
    r2*10
    
    % bait
    r2*17  
    
    % reff
    \mainReffMelodyTenor
    
    % interlude
    r2 * 8
    
    % bait 2
    g4.\mf bes8 
    f8 g8 as8 bes8
    g4. f8 
    es2
    c'4. d8 
    es8 bes4.
    g4. f8 
    f8 es4.
    r8[ c8] es8 c8 
    f8 g4.
    r8[ c,8] es8 c'8 
    bes8. g16 es4
    r8[ c8] es8 f8 
    f8 g4.
    r8[ es8] es8 d8 
    es4. (f8
    g2)
    
    % reff
    \mainReffMelodyTenor
    
    % modulasi
    as4 as4
    bes4 bes4
    c4. c8
    
    \key f \major
    c4 c4
    
    d4. bes8
    a8 g4.
    c4. g8
    g8 f4.
    bes4. c8
    a8 g8 f8 g8
    a4. a8
    bes8 c4.
    d4. bes8
    a8 g8 a8 bes8
    a4 cis4
    d2(
    d2)
    
    r8\mp[ d,8] f8 d8
    g8 a4.
    r8\<[ d,8] f8 d'8
    c8.\!\> a16 f4\!
    r8[ d8] f8 g8
    g8 a4.
    
    r8[ f8] f8 e8
    f2
    bes4 bes4
    c2(
    c2)
    \bar "||"
    
  }
}

bass = {
  \relative es' {
    % intro
    r2*10
    
    % bait
    r2*17
    
    % reff
    \mainReffMelodyBass
    
    % interlude
    r2 * 8
    
    % bait 2
    es4. es8 
    d8 es8 f8 g8
    es4. es8 
    es2
    as4. as8 
    g8 g4.
    d4. d8 
    d8 c4.
    r8[ c8] bes8 c8 
    es8 es4.
    r8[ c8] c8 d8 
    es8. es16 es4
    r8[ c8] c8 c8 
    bes8 bes4.
    r8[ c8] bes8 bes8 
    es2( 
    es2)
    
    % reff
    \mainReffMelodyBass
    
    % modulasi
    es4 es4
    es4 es8( d8)
    c4. c8
    
    \key f \major
    c4 c4
    bes4. bes8
    c8 c4.
    c4. c8
    d8 d4.
    g4. f8
    f8 e8 d8 c8
    f4. f8
    g8 a4.
    bes4. f8
    e8 d8 c8 bes8
    a4 a4
    d2(
    d2)
    r8[ d8] f8 d8
    f8 f4.
    r8[ d8] d8 e8
    f8. g16 a4
    r8[ d,8] d8 d8
    c8 c4.
    r8[ d8] c8 c8
    f2
    f4 c4
    f,2(
    f2)
  }
}

unisonoSA = {
  \relative es' {
    % intro
    r2 * 10
    
    % bait 1
    g4.-\tweak extra-offset #'(1 . -1)\mp bes8 
    f8 g8 as8 bes8
    g4. f8 
    es2
    c'4. d8 
    es8 bes4.
    g4. f8 
    f8 es4.
    r8[ c8] es8 c8 
    f8 g4.
    r8[ c,8] es8 c'8 
    bes8. g16 es4
    r8[ c8] es8 f8 
    f8 g4.
    r8[ es8]^\markRit es8 d8 
    es2( ^\markAtempo
    es2)\break
  }
}

unisonoTB = {
  \relative es' {
  % intro
  r2 * 10
  
  % bait
  r2 * 17
  }
}

% ----------------------------------
% LIRIK

lyricBaitSatu = \lyricmode {
  Ber -- ge -- gas -- lah Di -- a t'lah da -- tang
  sang peng -- am -- pun, Gu -- ru A -- gung.
  Ba -- suh ka -- ki -- Nya,
  U -- ra -- pi ja -- ri -- Nya
  a -- ir ma -- ta -- mu,
  tak meng -- a -- pa
}

lyricReffA = \lyricmode {
  Ham -- pir sa -- ja
  'ku ter -- pi -- kat,
  se -- sat ja -- uh da -- lam rim -- ba do -- sa.
  Be -- nar sa -- ja
  se -- mua fa -- na
  la -- lu 'ku sa -- dar,
  ka -- la di ka -- ki -- Nya
  a -- ir ma -- ta -- ku
  pu -- nya mak -- na
}

lyricBaitDua = \lyricmode {
  Pa -- da mu -- rid -- Nya Ia ber -- ka -- ta
  S'ga -- la do -- sa t'lah di -- le -- bur
  Cu -- kup per -- ca -- ya,
  dan reng -- kuh ka -- sih -- Nya,
  s'ga -- la ra -- puh -- mu,
  tak meng -- a -- pa
}


lyricReffB = \lyricmode {
  Ham -- pir sa -- ja
  'ku ter -- pi -- kat,
  se -- sat ja -- uh da -- lam rim -- ba do -- sa.
  Be -- nar sa -- ja
  se -- mua fa -- na
  la -- lu 'ku sa -- dar,
  ka -- la di ka -- ki -- Nya
  s'ga -- la ra -- puh -- ku
  pun ber -- mak -- na
}

lyricBaitDuaSA = \lyricmode {
  Huuu...
  ber -- ka -- ta..
  di le -- bur...
  cu -- kup per -- ca -- ya,
  ka -- sih -- Nya
  ra -- puh -- mu tak meng -- a -- pa
}

lyricModulasiSA = \lyricmode {
  S'ga -- la ra -- puh -- ku pun ber -- mak -- na
  Ham -- pir sa
}

lyricModulasiTB = \lyricmode {
  ra -- puh ber -- mak -- na
  Ham -- pir sa
}

lyricModulasiReffSA = \lyricmode {
  ja 'ku ja -- tuh
  'ku ter -- pi -- kat
  se -- sat ja -- uh da -- lam rim -- ba do -- sa.
  Be -- nar sa -- ja
  se -- mua fa -- na
  la -- lu 'ku -- sa -- dar
  ka -- ki -- Nya
  ra -- puh -- ku pun ber -- mak -- na
  ber -- mak -- na
}

lyricModulasiReffTB = \lyricmode {
  ja 'ku ja -- tuh
  'ku ter -- pi -- kat
  se -- sat ja -- uh da -- lam rim -- ba do -- sa.
  Be -- nar sa -- ja
  se -- mu -- a fa -- na
  la -- lu 'ku sa -- dar,
  ka -- la di ka -- ki -- Nya
  s'ga -- la ra -- puh -- ku
  pun ber -- mak -- na
  ber -- mak -- na
}


lyricUnisonoSA = \lyricmode {
  \lyricBaitSatu
}

lyricAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  
  \lyricBaitDuaSA
  
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  
  
  \lyricModulasiSA
  \lyricModulasiReffSA
}

lyricBass = \lyricmode {
  \lyricReffA
  \lyricBaitDua
  \lyricReffB
  \lyricModulasiTB
  \lyricModulasiReffTB
}



%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 2/4
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
    
    % instruments
    \new ChordNames {
      \chordNames
    }
    \new SolmisasiStaff \with {
      vocalName = "Inst."
      shortVocalName = "Inst."
    }{
      \new SolmisasiVoice = "voicePiano" {
        \solmisasiMusic {
          \headerMusicGlobal
          \intro
          r2 * 17 %bait
          r2 * 21 %reff
          \interlude
        }
      }
    }
    
    % UNISONO
    \new SolmisasiStaff \with {
      vocalName = "SA"
      shortVocalName = "SA"
    } {
    <<
      \new SolmisasiVoice = "voiceUnisonoSA" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \unisonoSA
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceUnisonoSA" {
      \lyricUnisonoSA
    }    
    
    
    \new SolmisasiStaff \with {
      vocalName = "TB"
      shortVocalName = "TB"
    } {
    <<
      \new SolmisasiVoice = "voiceUnisonoTB" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \unisonoTB
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceUnisonoSA" {
      
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
          \sopran
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
      
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
          \alto
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceAlto" {
      \lyricAlto
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
          \tenor
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceTenor" {
      
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
          \bass
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceBass" {
      \lyricBass
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
    \line{
      - Terinspirasi dari Injil \bold "Lukas 7:36-50", tentang seorang perempuan berdosa
    }
    \line {
      yang membasuh kaki Yesus
    }
    \line {
      - Daniel Ortega CM, Tor Sapienza, 19 September 2024
    }
  }
}