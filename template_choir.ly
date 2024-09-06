\version "2.20.0"
\include "solmisasi.ily"
\language "solmisasi"
#(set-default-paper-size "a4")

% ---- PAPER SETTINGS -----
\header {
  title = "Aku Indonesia"
  poet = "Naura Ayu"
  composer = "Arr. by Yeyee (2024)"
  tagline = \markup {
    \typewriter \fontsize #-1 {   
      "Yeyee - 2024"
    }
  }
}

\paper {
  indent = 2.4\mm
  short-indent = 2.4\mm
  #(define fonts
    (make-pango-font-tree "Linux Libertine O"
                          "Nimbus Sans, Nimbus Sans L"
                          "DejaVu Sans Mono"
                          (/ staff-height pt 20)))
}

% ----------------------------------




%  ---- MUSICAL MARKUPS ------------
headerMusicGlobal = {
  \time 4/4
  \key c \major
}
% ----------------------------------


% naik oktaf = pakai ' (kutip 1)
% turun oktaf = pakai , (koma)
sopran = {
  \relative c' {
    mi1 fa1 sol1 la1 si1 do1 re1
  }
}

alto = {
  \relative c' {
    do1 re1 mi1 fa1 sol1 la,1 si1
  }
}

tenor = {
  \relative c' {
    mi1 fa1 sol1 la1 si1 do1 re1
  }
}

bass = {
  \relative c' {
    do1 re1 mi1 fa1 sol1 la,1 si1
  }
}

% LIRIK ----------------------------

sopranLyric = \lyricmode {
  NNNNN
}

altoLyric = \lyricmode {
  Aaaaaa
}

tenorLyric = \lyricmode {
  Aaaaaa
}

bassLyric = \lyricmode {
  Aaaaaa
}


% ---------------------------------


% SCORE ---------------------------

\score {
<<  
  \new SolmisasiTimeAndKeySignature {
    \solmisasiMusic \headerMusicGlobal
  }
  
  \new ChoirStaff {
  << 
    % SOPRAN
    %{ 2 BAIT LIRIK DALAM 1 BARIS
      menambahkan 2 bait bisa menggunakan null voice,
      yaitu voice staff yang tidak akan di print, namun mengikuti
      kerangka voice yang berada pada konteks yang sama.
      contoh dapat dilihat pada bagian sopran berikut, menggunakan 2 voice,
      SolmisasiVoice & NullVoice
    %}
    \new SolmisasiStaff \with {
      vocalName = "S"
      shortVocalName = "S"
    } {
    <<
      \new SolmisasiVoice = "voiceSopran" { \solmisasiMusic \sopran }
      \new NullVoice = "nullSopran" { \solmisasiMusic \sopran }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "voiceSopran" {
        \sopranLyric
    }
    \new Lyrics \lyricsto "nullSopran" {
        \sopranLyric
    }
    
    
    
    % ALTO
    \new SolmisasiStaff \with {
      vocalName = "A"
      shortVocalName = "A"
    } {
    <<
      \new SolmisasiVoice = "voiceAlto" { \solmisasiMusic \alto }
      \new NullVoice = "nullAlto" { \solmisasiMusic \alto }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullAlto" {
        \altoLyric
    }
    
    
    % TENOR
    \new SolmisasiStaff \with {
      vocalName = "T"
      shortVocalName = "T"
    } {
    <<
      \new SolmisasiVoice = "voiceTenor" { \solmisasiMusic \tenor }
      \new NullVoice = "nullTenor" { \solmisasiMusic \tenor }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullTenor" {
        \tenorLyric
    }
    
    
    
    % BASS
    \new SolmisasiStaff \with {
        vocalName = "B"
        shortVocalName = "B"
    } {
    <<
      \new SolmisasiVoice = "voiceBass" { \solmisasiMusic \bass }
      \new NullVoice = "nullBass" { \solmisasiMusic \bass }
    >>  
    }
    \new Lyrics \with {
    } \lyricsto "nullBass" {
        \bassLyric
    }
  >> 
  }
>>
}
