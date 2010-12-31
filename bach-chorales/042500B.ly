
% BWV 425 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 425"
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
    a'4     d,4. e8 f4 g      | % 1
    a8 b c4 b a      | % 2
    a gis a\fermata  a      | % 3
    g g c a      | % 4
    bes8 a g f g4. f8      | % 5
    f2\fermata  r4 a      | % 6
    d, e f g      | % 7
    a8 b c4 b4. a8      | % 8
    a2\fermata  r4 a      | % 9
    g g c a      | % 10
    bes8 a g f e4. d8      | % 11
    d2\fermata  r4 a'      | % 12
    g8 a f g e4. d8      | % 13
    d2\fermata  r4 a'      | % 14
    a b c c      | % 15
    b2 a4\fermata  a      | % 16
    g g c a      | % 17
    bes8 a g f g4. f8      | % 18
    f2\fermata  r4 a      | % 19
    d, e f8 g a4      | % 20
    d,2\fermata  r4 e      | % 21
    f e f g      | % 22
    a b c8 b a4      | % 23
    d c bes8 a g f      | % 24
    e4. d8 d2\fermata  \bar "|." 
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
    a4     a b8 cis d f4 e8      | % 1
    f g g a g f e4      | % 2
    f e e e8 f~      | % 3
    f e16 d e8 f g e f4      | % 4
    f e8 f~ f e16 d e4      | % 5
    c2 r4 d~      | % 6
    d8 a bes a~ a d~ d cis      | % 7
    d4 g8 f~ f d b e16 d      | % 8
    c2 r4 f~      | % 9
    f8 e16 d e8 f g e f a      | % 10
    g f e d d cis16 b cis4      | % 11
    a2 r4 f'      | % 12
    e d~ d8 cis16 b cis4      | % 13
    d2 r4 c      | % 14
    c8 d16 e f8 e16 d g8 f16 g a4~      | % 15
    a8 gis16 fis gis4 e f      | % 16
    f f8 e16 d e4 f      | % 17
    f16 e f8 e f~ f e16 d e4      | % 18
    c2 r4 c      | % 19
    b cis d cis      | % 20
    d2 r4 cis      | % 21
    d cis d8 c bes c      | % 22
    c d16 e f8 e16 d e8 f16 g a8 g      | % 23
    fis g a fis d4 e8 d~      | % 24
    d cis16 b cis4 a2 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f8 g     a4 g a c      | % 1
    c8 d e4 d4. c8      | % 2
    b4~ b8 d c4 c      | % 3
    d8 g, c4 c c      | % 4
    d8 a c4 d8 bes g c16 bes      | % 5
    a2 r4 f8 g      | % 6
    a4 g f8 bes~ bes4      | % 7
    a8 g g a~ a gis16 fis g4      | % 8
    e2 r4 c'      | % 9
    d8 g, c4 c c8 f      | % 10
    d cis~ cis d bes g~ g a16 g      | % 11
    f2 r4 d'8 c      | % 12
    bes a a g16 a bes8 g e a16 g      | % 13
    f2 r4 f8 g      | % 14
    a b16 c d8 b g c16 b a8 c      | % 15
    f d b e16 d cis4 d~      | % 16
    d8 c16 b c4 c~ c8 d16 c      | % 17
    bes8 c c16 bes a8 g16 a bes4 c16 bes      | % 18
    a2 r4 f      | % 19
    g4. f16 g a4. g8      | % 20
    f2 r4 a      | % 21
    a a a d8 c16 bes      | % 22
    a8 b16 c d8 b g d' c4~      | % 23
    c8 bes a d~ d c bes b      | % 24
    e,4~ e16 f g8 fis2 \bar "|." 
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
    d8 e     f g f e d4 c      | % 1
    f e8 fis g gis a c,      | % 2
    d b e4 a, a      | % 3
    b c8 d e c f ees      | % 4
    d c bes a bes g c4      | % 5
    f,2 r4 d'8 e      | % 6
    f4 cis d e      | % 7
    f8 g16 f e8 f16 e d8 b e4      | % 8
    a,2 r4 a      | % 9
    b c8 d e c f d      | % 10
    g a bes a g e a a,      | % 11
    d2 r4 d~      | % 12
    d8 cis d bes g e a4      | % 13
    bes2 r4 f'      | % 14
    f8 e d g e a16 g f8 e      | % 15
    d b e4 a, d8 c      | % 16
    b g c bes a g f4      | % 17
    g8 a16 bes c8 d bes g c c,      | % 18
    f2 r4 f'~      | % 19
    f e d a      | % 20
    bes2 r4 a      | % 21
    d8 f a g f4. e8      | % 22
    f e d g c, d16 e f8 e      | % 23
    d e fis d g4. gis8      | % 24
    a4 a, d2 \bar "|." 
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
