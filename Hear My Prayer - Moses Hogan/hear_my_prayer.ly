\version "2.24.0"
\include "solmisasi.ily"

#(set-default-paper-size "a4")
#(set-global-staff-size 20)

% ---- PAPER SETTINGS -----
\header {
  title = "HEAR MY PRAYER"
  subtitle = \markup {
    \concat {
    "(Traditional Spritual, "
    \italic { "a capella" }
    ")"
    }
  }
  composer = "Moses Hogan"
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
                          (/ staff-height pt 20)))
}

% ----------------------------------

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


%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \tempo "Andante"
  \key es \major \time 4/4
}
% ----------------------------------

% VOICES

sopranSatu = {
  \relative es' {            
    \clef treble
    r2. 
    
    es4
    g4\mp g4 as4  f4
    es2 c'4. c8
    bes4 g4 as4^\markRit bes4
    bes2 \breathe bes4.\ff c8 \break
    es4^\markMarcatto es4^\markMarcatto es4.^\markMarcatto c8^\markRit \>
    bes4( g8 f8) es4\! \breathe c8^\markFreely es8
    bes'4\mp as4 g8^\markRit( es8) f4
    es2.\breathe
    
    es4\mf\break
    g4^\markAtempo g4 as4 f4
    es2 c'4. c8
    bes4 g4 as4^\markRit bes4
    bes2\breathe bes4.\ff c8\break
    es4^\markMarcatto es4^\markMarcatto es4.^\markMarcatto c8^\markRit \>
    bes4( g8 f8) es4\! \breathe c8^\markFreely es8
    bes'4\mp as4 g8^\markRit( es8) f4
    es2 \breathe es4.\mf f8\pageBreak
    
    g4^\markAtempo g4 as4 f4^\markRit
    es2\mp c'4.^\markAtempo c8
    bes4 g4 as4^\markRit bes4
    bes2 \breathe bes4.\ff c8 \break
    es4^\markMarcatto es4^\markMarcatto g16^\markMarcatto (f16 es4) es8^\markRit\>
    es4( es8 d8) c4\! \breathe c8^\markFreely c8
    bes4\mp as4 g4^\markRit f4
    es2.^\markAtempo \breathe as8\mf g8
    bes4. bes8 as4 g4
    r8[ g8]\mp as8 g8 r2
    es2^\markRit es2
    bes'1\p bes1
  }
}

sopranDua = {
  \relative es' {            
    \clef treble
    r1 * 21
    es'4 es4 es4. c8
    bes4( g8 f8) es4 \breathe c8 es8
    bes'4 as4 g16 (f16 es8) f16( es16 c16 es16)
    es2. \breathe as8 g8
  }
}

% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  \new ChoirStaff {
  << 
    
    % SOPRAN
    \new SolmisasiStaff \with {
      vocalName = "S"
      shortVocalName = "S"
    } {
    <<
      \new SolmisasiVoice = "voiceSopran" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \sopranSatu
        }
      }
    >>  
    }
    
    \new SolmisasiStaff \with {
      vocalName = "S"
      shortVocalName = "S2"
    } {
    <<
      \new SolmisasiVoice = "voiceSopran" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \sopranDua
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
          \relative es' {
            \clef treble
            r2. es4
            es4 es4 es4 c8( d8)
            bes2 as'4. f8
            f4 es4 es4 <es f>4
            f2 \breathe bes,4. as'8
            g4 as4 g8 (as4) as8
            g4( d4) c4\breathe c8 c8
            es4 es4 c4 d4
            bes2. \breathe
            
            es4
            es4 es4 es4 c8 d8
            bes2 as'4. f8
            f4 es4 es4 <es f>4
            f2 \breathe bes,4. as'8
            g4 as4 g8( as4) as8
            g4( d4) c4 \breathe c8 c8
            es4 es4 c4 d4
            bes2 \breathe bes4. es8
            es4 es4 es4 c8( d8)
            bes2 as'4. f8
            f4 es4 es4 <es f>4
            f2 \breathe bes,4. as'8
            g4 as4 g8( as4) as8
            g4( d4) c4 \breathe c8 c8
            es4 es4 c4 c4
            bes2. \breathe es8 es8
            g4. g8 es4 es4
            r8[ es8] es8 es8 r2
            b2 bes2
            <bes es>1 
            <bes es>1
          }
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
          \relative es {
            \clef "treble_8"
             r2. es'4
             bes'4 bes4 c4 as8( bes8)
             g2 es'4. d8
             es4 bes4 c4 c4
             d2 \breathe bes4. es8
             bes4 c4 bes8( c4) bes8
             bes4( as4) g4\breathe c8 c8
             c4 b4 as4 as4
             g2. \breathe
             
             es4 bes'4 bes4 c4 as8( bes8)
             g2 es'4. d8
             es4 bes4 c4 c4 
             d2\breathe bes4. es8
             bes4 c4 bes8( c4) bes8
             bes4( as4) g4 \breathe c8 c8
             c4 b4 as4 as4
             g2 \breathe g4. as8
             bes4 bes4 c4 as8( bes8)
             g2 es'4. d8
             es4 bes4 c4 c4
             d2 bes4. es8
             bes4 c4 bes8( c4) bes8
             bes4( as4) g4 \breathe c8 c8
             c4 b4 as4 as4 g2. \breathe b8 bes8
             es4. es8 b4 bes4
             r8[ bes8] b8 bes8 r2
             as2 g2
             g1
             g1
          }
        }
      }
    \new Lyrics \with {
    } \lyricsto "voiceTenor" {
      _ _ _ _ _ _
      _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _
      
      _ _ _ _ _ _
      _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _
      _ _ _ _ _ _ _
      _ _ _ _ _ _ _
      _ _ _ _ _ _ _ _
      _ _ _ _ _ _ _
      Done with
      sin* and sor -- row
      have mer -- cy
      mer -- cy
      A -- men
    }
    >>  
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
          \relative es {
            \clef bass
            r2. es'4
            es4 es4 es4 es4
            es2 as4. as8
            g4 g4 f4 f4
            bes2 \breathe bes,4. bes8
            es4 es4 es4. es8
            es4( b4) c4\breathe c'8 bes8
            as8( g8) f4 bes,4 bes4
            es2. \breathe
            
            es4
            es4 es4 es4 es4
            es2 as4. as8
            g4 g4 f4 f4 bes2 \breathe bes,4. bes8
            es4 es4 es4. es8
            es4( b4) c4 \breathe c'8 bes8
            as8( g8) f4 bes,4 bes4
            es2 \breathe es4. es8
            es4 es4 es4 es4
            es2 as4. as8
            g4 g4 f4 f4
            bes2 \breathe bes,4. bes8
            es4 es4 es4. es8
            es4( b4) c4 \breathe c'8 bes8
            as8( g8) f4 bes,4 bes4
            <es, es'>1 
            <es es'>1 
            <es es'>1
            <es es'>1
            <es es'>1
            <es es'>1
          }
        }
      }
    >>  
    }
    
    \new Lyrics \with {
    } \lyricsto "voiceBass" {
      O' Lord, please hear my prayer,
      In the mor -- nin' when I rise
      It's your ser -- vant bound for glo -- ry
      O' Dear Lord, please hear my prayer
      
      O' Lord, please hear my prayer,
      Keep me safe with -- in Your arms
      It's your ser -- vant bound for glo -- ry
      O' Dear Lord, please hear my prayer
      When my work on earth is done*
      and You come to take me home.
      Just to know I'm bound for glo -- ry
      And to hear You say well done*
    }
  >> 
  }
>>
}

\markup {
  \left-column {
    \line { \draw-hline }
    \line {
      *Bawakan lagu ini dengan tempo lambat (\bold{"Adagio"} 60-70 ), namun mengalir.
    }
    \line {
      *Tempo juga dapat dibuat resitatif, sesuai panduan dirigen
    }
    \line {
      *kata yang berakhiran huruf "'n'" yang punya tanda '*'
    }
    \line {
      panjangkan suara 'n' tersebut, bukan huruf vokalnya
    }
    \line {
      *tanda ` (petik) pada notasi adalah instruksi untuk pengambilan nafas
    }
  }
}