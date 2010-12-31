
% BWV 260 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 260"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 a     b4 c d c      | % 1
    b a b\fermata  b      | % 2
    b a8 b c b a4      | % 3
    g8 e fis4 g\fermata  g8 a      | % 4
    b4 c d c      | % 5
    b a b\fermata  b      | % 6
    b a8 b c b a4      | % 7
    g8 e fis4 g\fermata  g      | % 8
    a b c b      | % 9
    a8. b16 b4 a\fermata  a      | % 10
    b c d c      | % 11
    b a b\fermata  g      | % 12
    a b c8 b a4      | % 13
    g8 e fis4 g\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     g g fis e8 fis      | % 1
    g fis e4 dis e      | % 2
    d8 e fis4 g4. fis8      | % 3
    g4 d d d      | % 4
    g g fis e8 fis      | % 5
    g fis e4 dis e      | % 6
    d8 e fis4 g4. fis8      | % 7
    g4 d d d8 e      | % 8
    fis4 gis a8 a, d e      | % 9
    a, a'4 gis8 e4 d      | % 10
    d g fis8 gis a4      | % 11
    g8 fis e4 dis b8 cis      | % 12
    d e fis4 e4. d16 c      | % 13
    g'4 d d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'8 c     d4 e8 g, a b c d      | % 1
    e b c4 fis, g8 a      | % 2
    b c d4 e4. d16 c      | % 3
    d8 c16 b a4 b b8 c      | % 4
    d4 e8 g, a b c d      | % 5
    e b c4 fis, g8 a      | % 6
    b c d4 e4. d16 c      | % 7
    d8 c16 b a4 b b      | % 8
    a d e8 f f e      | % 9
    e16 d e8 f e16 d c4 a      | % 10
    g g8 a b4 e,      | % 11
    e'8 b c4 fis, g      | % 12
    fis b8 a g4. fis8      | % 13
    d' c16 b a4 b s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g4     g'8 fis e4 d a      | % 1
    e'8 d c4 b e8 fis      | % 2
    g4 fis e8 d c a      | % 3
    b c d4 g, g      | % 4
    g'8 fis e4 d a      | % 5
    e'8 d c4 b e8 fis      | % 6
    g4 fis e8 d c a      | % 7
    b c d4 g, g'      | % 8
    d8 d' c b a4 g      | % 9
    f8 c d e a,4 fis'      | % 10
    g8 fis e4 b c8 d      | % 11
    e d c4 b e      | % 12
    d dis e8 d c a      | % 13
    b c d4 g, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = AAvoiceBA \AAvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
\new Voice = ABvoiceDA \ABvoiceDA
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
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose g c \AAvoiceBA }
>>
}
\score {
<<
\new Voice = AAvoiceBA \AAvoiceBA
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose g c \ATvoiceCA }
>>
}
\score {
<<
\new Voice = ATvoiceCA \ATvoiceCA
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose g c \ABvoiceDA }
>>
}
\score {
<<
\new Voice = ABvoiceDA \ABvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
