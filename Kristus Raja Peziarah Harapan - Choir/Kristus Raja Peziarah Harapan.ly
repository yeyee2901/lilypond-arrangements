\version "2.20.0"
\include "solmisasi.ily"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Kristus Raja Peziarah Pengharapan"
  subtitle = "(HUT Kristus Raja 95th)"
  poet = ""
  composer = "Tata Suara: Yeyee (2025)"  
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
  top-margin = 0.5\cm
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
  \set noChordSymbol=""
  s1
  s2
  d2:m
  g2:m
  bes2
  c2
  es2
  bes2
  c1
  
  % bait
  bes1
  bes1
  f1
  f1
  g2:m
  a2:m
  bes2 g2
  c1
  
  % reff A
  bes1
  c1
  a1:m
  d1:m
  g1:m
  c1
  
  bes2
  bes2:m
  f1
  
  % bait 2
  s1
  bes1
  bes1
  f1
  f1
  d1
  g1:m
  bes1
  c1
  
  % bridge
  s1
  bes1
  bes1
  f1/a
  d1:m
  bes1
  g1:m
  c1
  d1
  c1
  d1
  b1:m
  e1:m
  a1:m
  d1
  c2 c2:m
  g2 d4:m g4:7/b
  c1
  d1
  b1:m
  e1:m
  a1:m
  b1:m
  c1
  b1:m
  a2:m a4:m b4:m
  c2 d2
  g1
}

% VOICES
voiceInst = {
  \relative es' {
    \clef treble
    % save the spaces
    \set Score.barNumberVisibility = #first-bar-number-invisible-save-broken-bars
    s1 \break
    \set Score.currentBarNumber = 1
    
    
    \time 2/4
    r4 f8 e8
    d8 e8 f8 g8( 
    g8)g8 a8 bes8(
    bes8) a8 bes8 c8( \break
    c2)
    es8 d8 c8 bes8
    r8[ f'8] g8 c8
    \time 4/4
    c2. r4
  }
}

voiceDescant = {
  \relative es' {
    s4 * 14
    s1 * 43
    
    \key g \major
    e'2 e4 e4
    fis2( d2) 
    r4 d4 e4 fis4
    g8 g8 fis8 e8( e2)
    r4 g4. g8 fis8 e8
    fis2. e8 e8
    e4 fis4. g8 e4 
    fis4 g4. fis8 e8 d8
    e2^\markup{\italic"rit."} e4 e4
    g2 fis2
    g1
    
  }
}

voiceSopran = {
  \relative es' {            
    \clef treble
    s1
    s4 * 14
    
    % bait 1
    \sectionLabel \markup { \box { \bold "Bait 1" } } 
    r4 f8\mf f8 f8 e8 d8 c8 \break
    d4 a'2 r4
    r4 f8 f8 f8 e8 d8 c8
    c4 a2.
    r4 f'8 f8 f8 e8 d8 c8
    d4 a'8 g2 c,8 
    a'8 a8 g8 f8 g4 a8 g8(
    g2)  \break
    
    % reff
    \tweak X-offset #1.5 \sectionLabel \markup { \box { \bold "Reff A" } } 
    g8 a8 g8 f8\f 
    d4 a'4 g8 f8 g8 g8(
    g4.) c,8 g'8 a8 g8 f8
    c'8 a8 a4 g8 f8 a8 f8(
    f4.) f8 f8 e8 d8 c8 \pageBreak
    d4 f8 f8 d8 d8 a'8 g8(
    g4.) c,8 g'8 a8 g8 f8
    g4 f8 g4 a4 f8(
    f2.)^\markup{"musik -> bait 2"}   
    r4\break
    
    % bait 2
    \tweak X-offset #3.5 \sectionLabel \markup { \box { \bold "Bait 2" } } 
    r4 r4 f8 e8\mf d8 c8
    d4 a'2.
    r4 f8 f8 f8 e8 d8 c8
    d4 c2. \break
    r4 r8[ c8] c8 d8 c8 f8(
    f8) d4 c8 c8 d8 a'8 g8(
    g2) f8 g8 f8 a8( \break
    a8) g8 f8 g4 f8 f8 bes8(
    bes8) a8 g4^\markup{"-> reff A -> bridge"} \breathe s4 s4 \bar ""
    \pageBreak
    
    % bridge
    \tweak X-offset #3.5 \sectionLabel \markup { \box { \bold "Bridge" } } 
    r4 r4 c4 bes8\mf a8
    g4 f4 a8 g8 f8 a8 
    g4 f2 c8 d8
    f8 d8 c8 d8 e8 f8 a8 f8( \break
    f4.) f8 c'8 bes8 a8 f8(
    f8) f8 f8 f4 d4 c8
    bes'4 a8 g4 f8( g8) g8(
    g2)\<( g8) fis8 g8 a8\! \break
    
    % reff A 1 = G
    \key g \major
    \tweak X-offset #6.5 \sectionLabel \markup { \box { \bold "Reff End (1 = G)" } }
    a2 \breathe a8 b8 a8 g8 
    e4 b'4 a8 g8 a8 a8(
    a4.) d,8 a'8 b8 a8 g8
    d'8 b8 b4 a8 g8 b8 g8(
    g4.) g8 g8 fis8 e8 d8 \break
    e4 g8 g8 e8 e8 b'8 a8(
    a4.) d,8 a'8 b8 a8 g8
    a4 g8 a4 b4 b8(
    b2) \breathe d8 d8 c8 b8
    \pageBreak
    
    g4 b4 a8 g8 a8 a8(
    a4.) d,8 a'8 b8 a8 g8
    d'8 b8 b4 a8 g8 b8 g8(
    g4.) g8 g8 fis8 e8 d8 \break
    e4 g8 g8 e8 e8 b'8 a8(
    a2) r4 r4
    c2 c4 c4
    d2 d8 d8 c8 b8 \break
    a2 a4 b4
    c2 <c d>2
    <d g>1 \bar "||"
  }
}

voiceAlto = {
  \relative es' {            
    \clef treble
    s1
    s4 * 14
    
    % verse 1
    r1
    d4\p( e8 f8 g4 a4
    f2.) r4
    r8[ c8(] d8 f4 g8 a8 g8
    f2.) r4
    d4. c4. r4
    f4 f8 g4 g8 f8 e8(
    e2)
    
    % reff A
    g8 a8 g8 f8
    d4 d4 f8 f8 f8 e8(
    e4.) c8 e8 f8 e8 d8
    g8 e8 e4 e8 d8 c8 d8(
    d4.) d8 d8 d8 d8 c8
    bes4 bes8 c8 d8 d8 d8 c8(
    c4.) c8 d8 d8 c8 bes8
    d4 d8 d4 cis4 c8(
    c2.) r4
        
    % bait 2    
    r1
    d4\p( e8 f8 g4 a4
    f2.) r4
    r8[ c8(] d8 f4 g8 a8 g8
    f2.) r4
    f1(
    g2) \breathe f8 g8 f8 a8(
    a8) g8 f8 g4 f8 f8 f8(
    f8) f8 e4
    \breathe s4 s4 \bar ""
    
    % bridge
    r4 r4 c'4 bes8 a8
    g4 f4 f8 e8 f8 e8
    c4 c2 c8 d8
    f8 d8 c8 d8 c8 d8 c8 c8(
    c4.) f8 a8 g8 f8 f8(
    f8) d8 d8 d4 d4 c8
    g'4 a8 g4
    f8( e8) e8(
    e1)
    
    % reff A 1 = G
    \key g \major
    fis2 fis8 g8 fis8 d8
    e4 e4 g8 g8 g8 fis8(
    fis4.) d8 fis8 g8 fis8 e8
    a8 fis8 fis4 fis8 e8 d8 e8(
    e4.) e8 e8 e8 e8 d8
    c4 c8 d8 e8 e8 e8 d8(
    d4.) d8 e8 e8 d8 c8
    e4 e8 e4 dis4 d8(
    d2) \breathe g8 g8 g8 g8
    e4 e4 g8 g8 g8 fis8(
    fis4.) d8 fis8 g8 fis8 e8
    a8 fis8 fis4 fis8 e8 d8 e8(
    e4.) e8 e8 e8 e8 d8
    c4 c8 d8 e8 e8 e8 d8(
    d2) r4 r4
    a'2 a4 g4
    fis2 g8 g8 g8 g8
    e2 e4 fis4
    g2 d2 
    g1 \bar "||"
  }
}

voiceTenor = {
  \relative es' {            
    \clef treble
    s1
    s4 * 14
    
    % verse 1
    r1 
    f,2( g4 a4
    bes2.) r4
    r8[ a8(] bes8 c4 bes8 c8 bes8
    a2.) r4
    g4. a4. r4
    bes4 bes8 bes4 b8 b8 c8(
    c2) r4 r4
    
    % reff A
    bes'2\f bes4 a4
    g2. r8[ c8]
    c8 c4 a4 a8 c8 bes8
    a8 a8( a2) r4
    \tuplet 3/3 {bes bes bes}  d4
    \tuplet 3/3 {c d e} r4
    d8 d4 d4 cis8 cis8 c8(
    c8) c8 d8 f4. r4
    
    % bait 2
    r1
    f,2( g4 a4
    bes2.) r4
    r8[ a8(] bes8 c4 bes8 c8 bes8
    a2.) r4
    a2( c2
    d2) \breathe c8 c8 c8 c8(
    c8) c8 c8 c4 d8 d8 d8(
    d8) d8 c4
    \breathe s4 s4 \bar ""
    
    % bridge
    r4 r4 c4 c8 c8
    d4 f4 c8 c8 c8 c8
    d4 d2 c8 d8
    c8 c8 c8 c8 c8 c8 c8 a8(
    a4.) a8 c8 bes8 a8 a8(
    a8) a8 a8 a4 bes4
    c8 d4 d8 d4 d8( c8) c8(
    c2)(c8) b8 c8 d8
    
    % reff A 1 = G
    \key g \major
    d2 r4 r4
    c2\f c4 b4
    a2. r8[ d8]
    d8 d4 b4 b8 d8 c8
    b8 b8( b2) r4
    \tuplet 3/3 {c c c}  b4
    \tuplet 3/3 {d e fis} r4
    e8 e4 e4 dis8 dis8 d8(
    d8) d8 e8 f4( f8 e8 d8)
    c4 d4 e8 d8 c8 d8(
    d4.) d8 d8 d8 c8 d8
    b8 a8 b4 b8 c8 d8 b8(
    b4.) b8 c8 b8 c8 b8
    a4 e'8 d8 c8 c8 b8 a8(
    a2) g8 g8 g8 fis8
    e4 g8 g8 g8 e8 b'8 a8(
    a2) e'8 d8 c8 b8
    c2 c4 d4
    e2 <c e>2
    <b g'>1 \bar "||"
  }
}

voiceBass = {
  \relative es' {            
    \clef treble
    s1
    s4 * 14
    
    % verse 1
    r1
    f2( d2
    bes2.) r4
    r8[ f'8(] g8 a4 g8 f8 e8
    f2.) r4
    d4. e4. r4
    f4 f8 d4 d8 d8 c8(
    c2) r4 r4
    
    % reff
    bes2 bes4 bes4
    c2. r8[ c8]
    c8 c4 c4 a8 f'8 e8
    d8 d8( d2) r4
    \tuplet 3/3 {g g g}  f4
    \tuplet 3/3 {e d c} r4
    bes8 bes4 bes4 bes8 bes8 f'8(
    f8) f8 g8 a4. r4
    
    % bait 2
    r1
    f2( d2
    bes2.) r4
    r8[ f'8(] g8 a4 g8 f8 e8
    f2.) r4
    d2( c2
    bes2) \breathe d8 d8 d8 d8(
    d8) d8 f8 f4 f8 f8 f8(
    f8) d8 c4
    \breathe s4 s4 \bar ""
    
    % bridge
    r4 r4 c4 c8 c8
    d4 f4 f8 e8 d8 c8
    bes4 bes2 c8 d8
    c8 a8 a8 a8 a8 f'8 e8 d8(
    d4.) d8 d8 d8 d8 bes8(
    bes8) bes8 c8 d4 d4 d8
    g4 g8 g4 g8( f8) c8(
    c1)
    
    % reff A 1 = G
    \key g \major
    d2 r4 r4
    c2 c4 c4
    d2. r8[ d8]
    d8 d4 d4 b8 g'8 fis8
    e8 e8( e2) r4
    \tuplet 3/3 {a a a}  g4
    \tuplet 3/3 {fis e d} r4
    c8 c4 c4 c8 c8 g'8(
    g8) g8 a8 b4( a8 g8 f8)
    
    
    e4 e4 c8 c8 c8 d8(
    d4.) d8 d8 d8 d8 d8
    b8 b8 b4 d8 d8 d8 e8(
    e4.) e8 e8 e8 e8 d8 
    c4 a'8 g8 fis8 e8 fis8 fis8(
    fis2) 
    
    g8 g8 g8 fis8
    e4 g8 g8 g8 e8 b'8 a8(
    a2) a8 b8 a8 g8
    e2 e4 d4
    c2 d2
    g1 \bar "||"
  }
}

%  ---- LYRICS ---------------------
lyricDescant = \lyricmode {
  Kris -- tus Ra -- ja
  Sem -- bi -- lan pu -- luh li -- ma
  Ra -- gam ce -- ri -- ta
  Meng -- em -- ban cin -- ta ka -- sih
  Kris -- tus Ra -- ja
  Pe -- zia -- rah ha -- ra -- pan
}

lyricSopran = \lyricmode {
  Di si -- ni 'ku di -- be -- sar -- kan
  de -- ngan cin -- ta yang sem -- pur -- na
  Di si -- ni 'ku te -- mu -- kan te -- rang
  a -- ba -- di tak per -- nah pu -- dar
  
  % reff 
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  
  A -- ku de -- ngar sua -- ra
  Pang -- gi -- lan ka -- sih me -- nya -- pa
  Me -- ne -- gas -- kan de -- tak 
  lang -- kah yang nya -- ta
  A -- khir -- nya ku -- te  -- mu -- kan 
  a -- rah tu -- ju -- an
}

lyricAlto = \lyricmode {
  _ _ _ _ _ _ _ _ _ _


  Kris -- tus Ra -- ja pe -- zia -- rah ha -- ra -- pan
  Sem -- bi -- lan pu -- luh li -- ma ta -- hun ber -- kar -- ya
  Ter -- u -- kir ke -- nang -- an dan ra -- gam ce -- ri -- ta
  Ba -- nyak cin -- ta dan ka -- sih ter -- cu -- rah
  
  % bait 2  & bridge
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _
  _ _
  
  % reff end
  Kris -- tus Ra -- ja pe -- zia -- rah ha -- ra -- pan
  Sem -- bi -- lan pu -- luh li -- ma ta -- hun ber -- kar -- ya
  Ter -- u -- kir ke -- nang -- an dan ra -- gam ce -- ri -- ta
  Ba -- nyak cin -- ta dan ka -- sih ter -- cu -- rah
  Kris -- tus Ra -- ja pe -- zia -- rah ha -- ra -- pan
  Sem -- bi -- lan pu -- luh li -- ma ta -- hun ber -- kar -- ya
  Ter -- u -- kir ke -- nang -- an dan ra -- gam ce -- ri -- ta
  Cin -- ta ka -- sih
  Kris -- tus Ra -- ja
}

lyricTenor = \lyricmode {
}

lyricBass = \lyricmode {
  % verse 1
  Huuuu...
  Huuuu...
  te -- rang
  a -- ba -- di tak pu -- dar
  
  Kris -- tus Ra -- ja
  Sem -- bi -- lan pu -- luh li -- ma ta -- hun
  Ke -- na -- ngan dan ce -- ri -- ta
  Ba -- nyak cin -- ta ka -- sih ter -- cu -- rah
  
  Huuu...
  Huuu...
  Haa...
  A -- khir -- nya ku -- te  -- mu -- kan 
  a -- rah tu -- ju -- an
  
  % bridge
  Di tem -- pat i -- ni
  a -- ku me -- la -- ya -- ni
  'Tuk me -- wu -- jud -- kan cin -- ta se -- ja -- ti
  Da -- lam ka -- sih -Mu
  ku -- te -- mu -- kan
  sum -- ber hi -- dup ke -- kal
  Haa..
  
  % reff end
  Kris -- tus Ra -- ja
  Sem -- bi -- lan pu -- luh li -- ma ta -- hun
  Ke -- na -- ngan dan ce -- ri -- ta
  Ba -- nyak cin -- ta ka -- sih ter -- cu -- rah
  
  pe -- zia -- rah ha -- ra -- pan
  Sem -- bi -- lan pu -- luh li -- ma ta -- hun ber -- kar -- ya
  Ter -- u -- kir ke -- nang -- an dan ra -- gam ce -- ri -- ta
  Me -- ngem -- ban cin -- ta ka -- sih yang mu -- li -- a
  Kris -- tus Ra -- ja
  Pe -- zia -- rah Ha -- ra -- pan
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

    \new ChordNames {
      \chordNames
    }

    % instrument
    \new SolmisasiStaff \with {
      vocalName = "Inst."
      shortVocalName = "Inst."
    } {
      \new SolmisasiVoice = "voiceInst" {
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceInst        
        }
      }
    }


    % Descant
    \new SolmisasiStaff \with {
      vocalName = "Desc."
      shortVocalName = "Desc."
    } {
    <<
      \new SolmisasiVoice = "voiceDescant" { 
        \solmisasiMusic {
          \headerMusicGlobal
          \voiceDescant
        }
      }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceDescant" {
      \lyricDescant
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
    %\line { *some other notes }
  }
}