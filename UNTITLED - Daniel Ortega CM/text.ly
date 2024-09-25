\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "[UNTITLED DRAFT SONG]"
%  subtitle = ""
  composer = "Daniel Ortega CM"
  tagline = \markup {
    \typewriter \fontsize #-1 {   
      "Transcribed by Yeyee using GNU Lilypond & solmisasi-lily - 2024"
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  print-page-number = false
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 23)))
}

% ----------------------------------

% VOICES

intro = {
  \relative e' {
    s2
    es8  ^\markup{\bold "Intro:"}  f8 g8 bes8
    c4 d4 es8 d16 c16 bes8 as8
    g4 f8 g16 f16 es2
    r8[ c8] es8 as8 g4 f4
    es2(
    es2) \break
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
  }
}

mainMelody = {
  \relative e' {
    r1 * 5
    
    g4. bes8 f8 g8 as8 bes8
    g4. f8 es2
    c'4. d8 es8 bes4.
    g4. f8 f8 es4.
    r8[ c8] es8 c8 f8 g4.
    r8[ c,8] es8 c'8 bes8. g16 es4
    r8[ c8] es8 f8 f8 g4.
    r8[ es8] es8 d8 
    es2(
    es2)\break
    
    c'4. as8
    g8 f4.
    bes4. f8
    f8 es4.
    as4. bes8
    g8 f8 es8 f8
    g4. g8
    as8 bes4.
    c4. as8
    g8 f4.
    bes4. f8
    f8 es4.
    r8[ c8] es8 c8 f8 g4.
    r8[ c,8] es8 c'8 bes8. g16 es4
    r8[ c8] es8 f8 f8 g4.
    r8[ es8] es8 d8 
    es2(
    es2) 

  }
}

sopran = {
  \relative es' {

  }
}

alto = {
  \relative es' {
  
  }
}

tenor = {
  \relative es' {
  
  }
}

bass = {
  \relative es' {
  
  }
}

unisonoSA = {
  \relative es' {
  
  }
}

unisonoTB = {
  \relative es' {
  
  }
}

% ----------------------------------
% LIRIK 

mainLyricOne = \lyricmode {
  Ber -- ge -- gas -- lah Di -- a t'lah da -- tang
  sang peng -- am -- pun, Gu -- ru A -- gung.
  Ba -- suh ka -- ki -- Nya,
  U -- ra -- pi ja -- ri -- Nya
  a -- ir ma -- ta -- mu,
  tak meng -- a -- pa
  
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

mainLyricTwo = \lyricmode {
  Pa -- da mu -- rid -- Nya Ia ber -- ka -- ta
  S'ga -- la do -- sa t'lah di -- le -- bur
  Cu -- kup per -- ca -- ya,
  dan reng -- kuh ka -- sih -- Nya,
  s'ga -- la ra -- puh -- mu,
  tak meng -- a -- pa
  
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


%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 2/4
  \key es \major
}

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

markMarcatto = \markup{
  \bold ">"
}

% ----------------------------------

% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  \new StaffGroup {
  <<
    
    % instruments
    \new ChordNames {
      \chordNames
    }
    \new SolmisasiStaff {
      \new SolmisasiVoice = "voicePiano" {
        \solmisasiMusic {
          \headerMusicGlobal
          \intro
        }
      }
    }
    
    % Development (main melody)
    \new SolmisasiStaff \with {
      vocalName = ""
      shortVocalName = ""
    } {
      \new SolmisasiVoice = "voiceMelody" {
        \solmisasiMusic {
          \headerMusicGlobal
          \mainMelody
        }
      }
    }
    
    \new Lyrics \lyricsto "voiceMelody" {
      \set stanza = "  1."
      \mainLyricOne
    }
    \new Lyrics \lyricsto "voiceMelody" {
      \set stanza = "  2."
      \mainLyricTwo
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
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceAlto" {
      
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

\markup {
  \left-column{
    \line { \draw-hline }
    \line{
      Poesia personale, la sera 22.25. Ispirazione da \bold {Luca 7:36} : 'Gesù e donna peccatrice'
    }
    \line {
      - Daniel Ortega CM. Parrocchia nostra, Tor Sapienza, Lazio, 19 Settembre 2024
    }
  }
}