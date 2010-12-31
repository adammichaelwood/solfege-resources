
% BWV 250 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 250"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     g a b c8 d16 e      | % 1
    d4 c8 b b4\fermata  e      | % 2
    d c b a16 b c8      | % 3
    b4 a8 g g4\fermata  d      | % 4
    g a b c8 d16 e      | % 5
    d4 c8 b b4\fermata  e      | % 6
    d c b a16 b c8      | % 7
    b4 a8 g g4\fermata  d'      | % 8
    e e a,\fermata  a      | % 9
    d d g, b      | % 10
    a g\fermata  d d'~      | % 11
    d cis d\fermata  d      | % 12
    c b a b8 c      | % 13
    a2 g4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g4     b d g g      | % 1
    g16 a b8 a d, g4 g16 a b8      | % 2
    a d, g d g,4 r      | % 3
    r8 d'16 b d8 d b4 g      | % 4
    b d g g      | % 5
    g16 a b8 a d, g4 g16 a b8      | % 6
    a d, g d g,4 r      | % 7
    r8 d'16 b d8 d b4 r      | % 8
    R1 *2  | % 
    r2 r8 a' b d,      | % 11
    g4 a a b~      | % 12
    b8 a4 g8 d4 r      | % 13
    r8 g d16 b d8 b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     g a b c8 d16 e      | % 1
    d4 c8 b b4 e      | % 2
    d c b a16 b c8      | % 3
    b4 a8 g g4 d      | % 4
    g a b c8 d16 e      | % 5
    d4 c8 b b4 e      | % 6
    d c b a16 b c8      | % 7
    b4 a8 g g4 d'      | % 8
    e e a,\fermata  a      | % 9
    d d g, b      | % 10
    a g\fermata  fis g8 fis      | % 11
    e2 d4\fermata  d'      | % 12
    c b a b8 c      | % 13
    a2 g4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b8 c     d4 d g g      | % 1
    g8 e fis4 d c8 b      | % 2
    a4 e' d e      | % 3
    d2 d4 b8 c      | % 4
    d4 d g g      | % 5
    g8 e fis4 d c8 b      | % 6
    a4 e' d e      | % 7
    d2 d4 g      | % 8
    g a8 g fis4 fis      | % 9
    g8 a g f e4 g      | % 10
    g8 fis e4 e8 d d4      | % 11
    d cis a b8 a      | % 12
    g a b c d4 d8 e      | % 13
    e4 d d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceEA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 a     b4 a e' e8 c      | % 1
    b g a4 g g      | % 2
    fis g8 a b a g4      | % 3
    g fis b g8 a      | % 4
    b4 a e' e8 c      | % 5
    b g a4 g g      | % 6
    fis g8 a b a g4      | % 7
    g fis b b      | % 8
    c8 b a4 d d      | % 9
    d8 c d4 c d      | % 10
    d8 a b a a4 g8 a      | % 11
    b4 a8 g fis4 fis'      | % 12
    e d8 e a,4 g      | % 13
    g fis b s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceFA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g4     g' fis e8 d c4      | % 1
    d d g, c      | % 2
    d e8 fis g4 c,      | % 3
    d2 g,4 g      | % 4
    g' fis e8 d c4      | % 5
    d d g, c      | % 6
    d e8 fis g4 c,      | % 7
    d2 g,4 g'      | % 8
    c, cis d d8 c      | % 9
    b a b4 c g      | % 10
    d' d8 cis d fis b a      | % 11
    g e a4 d, b      | % 12
    e8 fis g4 g8 fis g e      | % 13
    c a d4 g, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AvoiceAA } { \transpose g c \AAvoiceDA }
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AvoiceAA } { \transpose g c \ATvoiceEA }
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = ASvoiceCA \ASvoiceCA
\new Voice = AAvoiceDA \AAvoiceDA
\new Voice = ATvoiceEA \ATvoiceEA
\new Voice = ABvoiceFA \ABvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
>>
}
\score {
<<
\new Voice = AvoiceBA \AvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
>>
}
\score {
<<
\new Voice = ASvoiceCA \ASvoiceCA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Alto")
\book {
\layout { \partpaper }
\score {
<<
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AvoiceAA } { \transpose g c \AAvoiceDA }
>>
}
\score {
<<
\new Voice = AAvoiceDA \AAvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Tenor")
\book {
\layout { \partpaper }
\score {
<<
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AvoiceAA } { \transpose g c \ATvoiceEA }
>>
}
\score {
<<
\new Voice = ATvoiceEA \ATvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Bass")
\book {
\layout { \partpaper }
\score {
<<
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = ABvoiceFA \ABvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
