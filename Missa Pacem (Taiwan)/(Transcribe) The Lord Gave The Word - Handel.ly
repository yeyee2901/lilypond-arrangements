\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "The Lord Gave The Word"
  subtitle = "Handel's Messiah"
  subsubtitle = "(With Simplified Piano Accompaniment)"
  composer = "G.F. Handel"
  poet = "Andante allegro (M.M. 80)"
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  left-margin = 1.8\cm
  top-margin = 1\cm
  bottom-margin = 2.0\cm
  print-page-number = false
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 22)))

  oddFooterMarkup = \markup {
    \hspace {23\mm}
    \override #'(box-padding . 1.0)
    \override #'(baseline-skip . 2.7)
    \left-align {
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
  evenFooterMarkup = \oddFooterMarkup
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
    
    % part A
    \sectionLabel \markup { \box { \bold "A" } } 
    r4 bes8\f bes16 bes16 bes8 bes16 bes16 bes8 bes8 \break
    bes8 bes8 bes8 bes16 c16   d16( es16 d16 es16   f16 g16 f16 g16
    a,16 bes16 a16 bes16   c16 d16 c16 d16   es16 d16 es16 d16   c16 d16 c16 es16 \break
    d8. es16   d16 c16 d16 c16   bes8)\ff bes16 bes16   es8 d8 
    c4 c4 r2 \break
    
    % part B
    \tweak X-offset #6.0 \sectionLabel \markup { \box { \bold "B" } }
    r4 c8\f c16 c16    d8 d16 d16    d8 d8
    c8 c8 r8[ f,8]\mf f2
    f4. g8 a2  \pageBreak
    
    c4\f c8 c8    f,16( g16 f16 g16    a16 bes16 a16 bes16   c8.) a16   a8 a8
    
     
    a16 ( bes16 a16 bes16    c16 c16 d16 e16 \break
    f8. )  c16 c8 c8   
    
    a16( bes16 a16 bes16   c16 d16 c16 d16   e8.) d16  c4  a8 d8 c4 \pageBreak
    
    \tweak X-offset #6.0 \sectionLabel \markup { \box { \bold "C" } } 
    c4 r4 d4 d8 bes8
    f8 f16 f16 f8 g16( a16) bes8 f8 r4 \break
    f'4 f8 f8   f,8 g16 a16   bes8 f8
    f'8 f8 bes,8 f'8 f8 bes,8 r4 \break
    f'4 f8 f8  d16( es16 d16 es16    f16 g16 f16 g16
    a,16 bes16 a16 bes16    c16 d16 c16 d16
    es16 d16 es16 d16    c16 d16 c16 es16 \break
    d8. es16    d16 c16 d16 c16  bes8\ff)  bes16 bes16  es8 d8
    c4 c4  bes8 bes8 a4 
    bes4 r4 r2 \break
  }
}

voiceAlto = {
  \relative f'' {            
    \clef treble
    s1
    
    % TB
    r1
    r1
    
    % part A
    r4 f8 f16 f16 g8 g16 g16 g8 g8
    f8 f8 f8 f16 f16   f8. f16   f8 f8
    f8. c16   c8 f8    es16( f16 es16 f16   g16 a16 g16 a16
    bes8.) bes16   bes8 bes8   bes8 bes16 bes16  a8 bes8
    a4 a4 r2
    
    % part B
    r4 a8 a16 a16  bes8 bes16 bes16  bes8 bes8
    a8 a8 r8[ f8] f2
    f4. g8 a2
    
    a4 a8 a8   a16( g16 a16 g16    f16 g16 f16 g16   a8.) f16   f8 f8
    f16( g16 f16 g16   a16 bes16 a16 g16
    a8.) a16  a8 a8  c,8 c16 c16   f8 a8 
    g4 g4  f8 bes8 g4
    a4 r4  bes4 bes8 bes8
    bes,16( c16 bes16 c16   bes16 c16 bes16 c16   d16 es16 d16 es16    f16 f16 g16 a16
    bes8.) f16 f8 f8   bes,16( c16 bes16 c16   d16 es16 d16 es16
    d16 es16 d16 es16    f16 f16 g16 a16  bes8.) f16   f8 f8
    d16( es16 d16 es16   f16 g16 f16 g16   f8.)  f16   f8 f8
    f8. c16  c8 f8   es16( f16 es16 f16    g16 a16 g16 a16
    bes8.) bes16   bes8 bes8  bes8 bes16 bes16   a8 bes8 
    a4 a4  f8 g8 f4
    f4 r2.
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
    d8 d8   d8 d16 d16    bes8. bes16    bes8 bes8
    f16( g16 f16 g16    a16 bes16 a16 bes16    c8.) c16    c8 c8
    bes16( c16 bes16 c16   d16 es16 d16 es16   f8) g16 f16   es8 f8
    f4 f4 r2
    
    % part B
    r4 f8 f16 f16   f8 f16 f16  f8 f8
    f8 f8 r2.
    r1
    
    f4 f8 f8  c8. c16 c8 c8
    a16( bes16 a16 bes16   c16 c16 d16 e16   f8.) c16   c8 c8 
    a16( bes16 a16 bes16   c16 c16 d16 e16   f8) f16 f16  f8 f8
    e4 e4  f8 f8 e4
    f4 r4 f4 f8 f8
    d8 d16 es16  f8 f8 f8 d8 r4
    d4 d8 d8  f8 f16 es16 d8 c8
    bes8 bes8 r8[ d8]  bes16( c16 bes16 c16   d16 es16 d16 es16
    bes16 c16 bes16 c16   d16 es16 d16 es16   d8.) c16  bes8 bes8
    f16( g16 f16 g16    a16 bes16 a16 bes16   c8.) c16  c8 c8
    bes16( c16 bes16 c16   d16 es16 d16 es16  f8) g16 f16  es8 f8
    f4 c4  d8 es8 c4
    d4 r2.
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
    bes'8 bes8    bes8 bes16 bes16    bes,16( c16 bes16 c16   d16 es16 d16 es16
    f8.)  f16 f8 f8   c16( d16 c16 d16    es16 f16 es16 f16
    g16 a16 g16 a16    bes16 c16 bes16 c16    d8) es16 d16   c8 bes8
    f4 f4 r2
    
    % part B
    r4 f8 f16 f16   d8 d16 d16   bes8 bes8
    f'8 f8 r2.
    r1
    
    f4 f8 f8  f8. f16  f8 f8
    f16( g16 f16 g16   a16 bes16 a16 bes16   c8.) f,16  f8 f8
    f16( g16 f16 g16    a16 bes16 a16 g16    f16 g16 f16 g16   a16 bes16 a16 bes16
    c8.) c16 c4  d8 bes8 c4
    f,4 r4 bes4 bes8 bes8 
    bes8. bes,16 bes8 bes8   bes16 (c16 bes16 c16    bes16 c16 bes16 c16
    d16 es16 d16 es16    f16 f16 g16 a16  bes8.)  f16 f8 f8
    bes,16( c16 bes16 c16    bes16 c16 bes16 c16   
    d16 es16 d16 es16    f16 f16 g16 a16
    bes8.) bes16   bes8 bes8    bes,16( c16 bes16 c16    d16 es16 d16 es16
    f8.) f16   f8 f8   c16( d16 c16 d16    es16 f16 es16 f16
    g16 a16 g16 a16   bes16 c16 bes16 c16   d8) es16 d16  c8 bes8 
    f4 f4   bes8  es,8 f4
    bes,4 r2.
  }
}

voicePianoRight = {
  \clef treble
  s1
  <f' bes'>4 r4 r2
  R1
  r4 <bes' d'' f''>8 <bes' d'' f''>16 <bes' d'' f''>16 <bes' es'' g''>8 <bes' es'' g''>16 <bes' es'' g''>16 <bes' es'' g''>8 <bes' es'' g''>8
  <bes' d'' f''>8 <bes' d'' f''>8  <d' f' bes'>8 <d' f' bes'>16 c''16 <bes' d''>16 
 
  ^[es''16 <bes' d''>16 es''16] <bes' f''>16^[ g''16 <bes' f''>16 g''16]
  <f' a'>16 <g' bes'>16 <f' a'>16 <g' bes'>16    <a' c''>16^[ <bes' d''>16 <a' c''>16 <bes' d''>16]
  <c'' es''>16 ^[<d'' f''>16 <c'' es''>16 <d'' f''>16] es''16 ^[d''16 c''16 es''16]
  
  bes'16 ^[c''16 bes'16 c''16]   <d'' bes'>16 ^[<c'' es''>16 <d'' bes'>16 <c'' es''>16]    <bes' d'' f''>8 ^[g''16 f''16]  <c'' es''>8 ^[<bes' d''>8]
  <f' a' c''>4   <f'' a'' c'''>8 <f'' a'' c'''>16 <f'' a'' c'''>16    <f'' bes'' d'''>8 <f'' bes'' d'''>16 <f'' bes'' d'''>16     <f'' bes'' d'''>8 <f'' bes'' d'''>8
  
  % part B
  <f'' a'' c'''>8 <f'' a'' c'''>8    <f'' a'' c'''>8 <f'' a'' c'''>16 <f'' a'' c'''>16    <f'' bes'' d'''>8 <f'' bes'' d'''>16 <f'' bes'' d'''>16     <f'' bes'' d'''>8 <f'' bes'' d'''>8
  <f'' a'' c'''>8 <f'' a'' c'''>8 r4 r2
  R1
  
  <f' a' c''>4   <f' a' c''>8 <f' a' c''>8  a'16 g'16 a'16 g'16    f'16 g'16 f'16 g'16
  <f' a'>16 <bes'>16 <f' a'>16 <bes'>16   <a' c''>16 ^[c''16 d''16 e''16]
  <f' f'' a'>16 ^[bes'16 <f' a'>16 bes'16] <a' c''>16 ^[c''16 d''16 e''16]
  <f' f'' a'>16 ^[bes'16 <f' a'>16 <bes'>16]    <f' a'>16 ^[bes'16 d''16 e''16]
  <f' f'' a'>16 ^[bes'16 a'16 bes'16]   c''16 ^[d''16 c''16 d''16]
  <c'' e''>16 <d'' f''>16 <c'' e''>16 <d'' f''>16   <e'' g''>16 <f'' a''>16 <g'' bes''>16 <e'' c'''>16
  <f'' a''>8 <f'' bes''>8   <c'' e'' g''>4 
  <c'' f'' a''>8 c''16 d''16 es''16 d''16 es''16 c''16   
  <bes' d''>16 <c'' es''>16 <bes' d''>16 <c'' es''>16    <d'' f''>16 <es'' g''>16 <d'' f''>16 <es'' g''>16
  f''16 es''16 g''16 a''16   <d'' bes''>16 f''16 g''16 a''16 
  <d'' bes''>16 es''16 d''16 es''16    <d'' f''>16 f''16 g''16 a''16 
  
}

voicePianoLeft = {
  \clef bass
  s1
  <bes, bes,,>4\f r4 r2
  R1
  r4 <bes bes,>8\f <bes bes,>16 <bes bes,>16 <g g,>8 <g g,>16 <g g,>16 <es es,>8 <es es,>8
  
  <bes, bes>8 <bes, bes>8 <bes, bes>8 <bes, bes>16 <bes, bes>16    
  <bes, bes,,>16 <c c,>16 <bes, bes,,>16 <c c,>16
  <d, d>16 <es es,>16 <d, d>16 <es es,>16
  <f, f>8. <f, f>16  <f, f>8 <f, f>8
  <c, c>16 <d, d>16 <c, c>16 <d, d>16 <es, es>16 <f, f>16 <es, es>16 <f, f>16
  <g, g>16 <a, a>16 <g, g>16 <a, a>16    <bes, bes>16 <c c'>16 <bes, bes>16 <c c'>16    <d d'>8\ff <es es'>16 <d d'>16    <c c'>8 <bes, bes>8
  <f, f>8 <f, f>8\f    <f, f>8 <f, f>16 <f, f>16     <d, d>8 <d, d>16 <d, d>16    <bes,, bes,>8 <bes,, bes,>8
  
  % part B
  <f, f>8 <f, f>8    <f, f>8 <f, f>16 <f, f>16     <d, d>8 <d, d>16 <d, d>16    <bes,, bes,>8 <bes,, bes,>8
  <f, f>8 <f, f>8 r4 r2
  R1
  
  <f, f>4 <f, f>8[ <f, f>8] <f, f>8[ <f, f>8] <f, f>8 <f, f>8
  
  <f, f>8[ <f, f>8]   <f, f>8[ <f, f>8] <f, f>8[ <f, f>8] <f, f>8 <f, f>8
  <f, f>8[ <f, f>8]   <f, f>8[ <f, f>8]
  <f, f>16 <g, g>16 <f, f>16 <g, g>16    <a, a>16 ^[<bes, bes>16 <a, a>16 <bes, bes>16]
  <c c'>8 ^[<g, g>8] <e, e>8 <c, c>8  <d, d>8 <bes,, bes,>8  <c, c>4
  <f, f>4 r4 <bes, f bes>4 <bes, bes>8 <bes, bes>8
  <bes, bes>8. <bes,, bes,>16 <bes,, bes,>8 <bes,, bes,>8
  <bes,, bes,>16 <c, c>16 <bes,, bes,>16 <c, c>16 <bes,, bes,>16 <c, c>16 <bes,, bes,>16 <c, c>16
}


% ----- LYRICS ---------------------
lyricSopran = \lyricmode {
  Great was the com -- pa -- ny of the
  preach -- ers,
  Great was the com -- pa -- ny of the preach -- ers;
  
  Great was the com -- pa -- ny of the preach -- ers.
  The Lord gave the word:
  Great was the com -- pa -- ny,
  the com -- pa -- ny,
  the com -- pa -- ny of the preach -- ers.
  Great was the com -- pa -- ny of the preach -- ers;
  Great was the com -- pa -- ny of the preach -- ers,
  of the preach -- ers;
  Great was the com -- pa -- ny of the preach -- ers,
  of the preach -- ers.
}

lyricAlto = \lyricmode {
  Great was the com -- pa -- ny of the
  preach -- ers,
  Great was the com -- pa -- ny, the com -- pa -- ny, the com -- pa -- ny,
  the com -- pa -- ny of the preach -- ers;
  
  Great was the com -- pa -- ny of the preach -- ers.
  The Lord gave the word:
  Great was the com -- pa -- ny,
  the com -- pa -- ny, the com -- pa -- ny of the 
  preach -- ers; of the preach -- ers.
  Great was the com -- pa -- ny,
  the com -- pa -- ny, 
  the com -- pa -- ny, 
  the com -- pa -- ny,
  the com -- pa -- ny,
  the com -- pa -- ny of the preach -- ers,
  of the preach -- ers.
}

lyricTenor = \lyricmode {
  The Lord gave the word:
  Great was the com -- pa -- ny of the
  preach -- ers,
  Great was the com -- pa -- ny,
  the com -- pa -- ny,
  the com -- pa -- ny of the preach -- ers;
  
  Great was the com -- pa -- ny of the preach -- ers.
  
  Great was the com -- pa -- ny,
  the com -- pa -- ny, the
  com -- pa -- ny of the preach -- ers;
  of the preach -- ers.
  Great was the com -- pa -- ny of the preach -- ers,
  Great was the com -- pa -- ny of the preach -- ers,
  the com -- pa -- ny,
  the com -- pa -- ny,
  the com -- pa -- ny of the preach -- ers,
  of the preach -- ers.
}

lyricBass = \lyricmode {
  The Lord gave the word:
  Great was the com -- pa -- ny of the
  preach -- ers,
  Great was the com -- pa -- ny,
  the com -- pa -- ny of the prech -- ers;
  
  Great was the com -- pa -- ny of the preach -- ers.

  Great was the com -- pa -- ny,
  the com -- pa -- ny, the
  com -- pa -- ny of the preach -- ers.
  Great was the com -- pa -- ny, the com -- pa -- ny,
  the com -- pa -- ny, 
  the com -- pa -- ny,
  the com -- pa -- ny of the preach -- ers,
  of the preach -- ers.
  
  
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
      #'((basic-distance . 6)
          (minimum-distance . 0.2)
          (padding . 1.2)
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
    \line { "*The 1/16 slurred notes, especially the 'com' (from 'company') are to be sung" }
    \line { "with a staccato." }
    \line { "*Do not voice the 'm' from the word 'company', unless you are reaching the" }
    \line { "end of the slur phrasing."}
    \line { "*example:"  \bold \italic "'co - ho - ho - ho - hom - pa - ny'"}
    \line { "*Common interpretations also voice " \bold "'Great', 'com', 'hom' and 'preach'"}
    \line { "louder to create stronger accent."}
  }
}
