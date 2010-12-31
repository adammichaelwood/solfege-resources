
% BWV 280 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 280"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d8 e     f4 g a g      | % 1
    c b8 a a4\fermata  g      | % 2
    c b a g      | % 3
    f e d\fermata  d8 e      | % 4
    f4 g a g      | % 5
    c b8 a a4\fermata  g      | % 6
    c b a g      | % 7
    f e d\fermata  d      | % 8
    g g e a      | % 9
    a gis a\fermata  a      | % 10
    d d e8 d c4      | % 11
    d8 c b4 a\fermata  b      | % 12
    c b a g      | % 13
    a8 g f4 e\fermata  d8 e      | % 14
    f4 g a8 g f4      | % 15
    g8 f e4 d\fermata  d'      | % 16
    d d e d      | % 17
    c b a\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a4     d e f e      | % 1
    e e e e      | % 2
    e e f8 e d4      | % 3
    a8 d4 cis8 a4 a      | % 4
    d e f e      | % 5
    e e e e      | % 6
    e e f8 e d4      | % 7
    a8 d4 cis8 a4 a      | % 8
    d c8 b c d e4      | % 9
    e e e e      | % 10
    a g g a8 g      | % 11
    f4 b,8 c16 d c4 e      | % 12
    e d c8 d e4      | % 13
    a, d cis a      | % 14
    d e e8 cis d4      | % 15
    e8 d cis4 a a'      | % 16
    g g g a8 d,      | % 17
    e4. d8 cis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f8 g     a b c4 c c8 b      | % 1
    a4 gis c b      | % 2
    a b8 cis d4 d,8 e      | % 3
    f g a4 f f8 g      | % 4
    a b c4 c c8 b      | % 5
    a4 gis c b      | % 6
    a b8 cis d4 d,8 e      | % 7
    f g a4 f f8 e      | % 8
    d4 g g c      | % 9
    b8 a b4 c c      | % 10
    c b c8 b a4      | % 11
    b8 a gis4 e gis      | % 12
    a8 g f g a b cis d      | % 13
    e4 a, a f8 e      | % 14
    d f bes4 a bes~      | % 15
    bes e,8 f16 g f4 d      | % 16
    b'8 c d b c b a4      | % 17
    a gis e s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     d c f c      | % 1
    c8 d e4 a, e'      | % 2
    a g f b,8 cis      | % 3
    d4 a d d      | % 4
    d c f c      | % 5
    c8 d e4 a, e'      | % 6
    a g f b,8 cis      | % 7
    d4 a d d8 c      | % 8
    b a g4 c b8 a      | % 9
    e'4 e, a a'8 g      | % 10
    fis4 g c, f8 e      | % 11
    d4 e a, e'      | % 12
    a d,8 e f4 e8 d      | % 13
    cis4 d a d8 c      | % 14
    bes a g4 f bes8 a      | % 15
    g4 a d, fis'      | % 16
    g8 a b g c,4 f      | % 17
    e8 d e4 a, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
