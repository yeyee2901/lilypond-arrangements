\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "The Lord Gave The Word"
  subtitle = "Handel's Messiah"
  subsubtitle = "(Psalm 68:11)"
  composer = "G.F. Handel"
  poet = "Andante allegro (M.M. 80)"  
  tagline = \markup {
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \box \center-column {
      \small {
        \line { \bold "The Lord Gave The Word - G.F. Handel" }
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
  left-margin = 1.8\cm
  top-margin = 1\cm
  bottom-margin = 2\cm
  print-page-number = true
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
headerMusicGlobal = {
  \time 4/4
  \key bes \major
}

% CHORDS
chordNames = \chordmode {
  \set noChordSymbol = ""

}

% VOICES
voiceSopran = {
  \relative f'' {
    \clef treble
    s1
    
    % TB
    r1
    r1
    
    % part 1
    \sectionLabel \markup { \box { \bold "A" } } 
    r4 bes8\f bes16 bes16 bes8 bes16 bes16 bes8 bes8 \break
    %bes8 bes8
  }
}

voiceAlto = {
  \relative f'' {            
    \clef treble
    s1
    
    % TB
    r1
    r1
    
    % part
    r4 f8 f16 f16 g8 g16 g16 g8 g8
    %f8 f8
  }
}

voiceTenor = {
  \relative f' {            
    \clef tenor
    % save the spaces
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s1  \break
    \set Score.currentBarNumber = 1
    
    r4 r8[ bes'8]\f bes2
    bes4. c8 d2
    r4
    
    % part A
    d8 d16 d16 es8 es16 es16 es8 es8
  }
}

voiceBass = {
  \relative f' {            
    \clef bass
    s1
    
    r4 r8[ bes'8] bes2
    bes4. c8 d2
    
    % part A
    r4 bes8 bes16 bes16 g8 g16 g16 es8 es8
  }
}

voicePianoRight = {
  \clef treble
  s1
  <f' bes'>4 r4 r2
  R1
  r4 <bes' d'' f''>8 <bes' d'' f''>16 <bes' d'' f''>16 <bes' es'' g''>8 <bes' es'' g''>16 <bes' es'' g''>16 <bes' es'' g''>8 <bes' es'' g''>8
}

voicePianoLeft = {
  \clef bass
  s1
  <bes, bes,,>4\f r4 r2
  R1
  r4 <bes bes,>8\f <bes bes,>16 <bes bes,>16 <g g,>8 <g g,>16 <g g,>16 <es es,>8 <es es,>8
}


% ----- LYRICS ---------------------
lyricSopran = \lyricmode {
  Great was the com -- pa -- ny of the
}

lyricAlto = \lyricmode {
  Great was the com -- pa -- ny of the
}

lyricTenor = \lyricmode {
  The Lord gave the word:
  Great was the com -- pa -- ny of the
}

lyricBass = \lyricmode {
  The Lord gave the word:
  Great was the com -- pa -- ny of the
}


% ----------------------------------

% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  \new StaffGroup {
    
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
          \voiceSopran
        }
      }
    >>  
    }  
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
      \lyricSopran
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
          \voiceTenor
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceTenor" {
      \lyricTenor
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
      \lyricBass
    }
    
    \new PianoStaff <<
      \new Staff {
        \headerMusicGlobal
        \voicePianoRight
      }
      
      \new Staff {
        \headerMusicGlobal
        \voicePianoLeft
      }
    >>
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
  
  \context {
      \SolmisasiStaff
      \revert TimeSignature.stencil
      % \override TimeSignature.font-size = #-1
      \override TimeSignature.break-visibility = #end-of-line-invisible
  }
}

\markup {
  \left-column{
    \line { \draw-hline }
  }
}
