
% BWV 312 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 312"
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
    b'4     c b a b8 c      | % 1
    d4 e d c      | % 2
    b2\fermata  r4 d      | % 3
    c b c8 b a4      | % 4
    g f e\fermata  b'      | % 5
    c b a b8 c      | % 6
    d4 e d c      | % 7
    b2\fermata  r4 d      | % 8
    c b c8 b a4      | % 9
    g f e\fermata  g      | % 10
    f e d e8 d      | % 11
    c d d4 e\fermata  b'      | % 12
    c b8 a g4 a8 b      | % 13
    c4 d b\fermata  e      | % 14
    d8 c b c d4 a      | % 15
    g f e\fermata  d      | % 16
    g a b8 c d4      | % 17
    c b a\fermata  c      | % 18
    b a g8 f e f      | % 19
    g4 f e2~      | % 20
    e2.\fermata  s4 \bar "|." 
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
    gis'4     a8 e f e~ e d g4~      | % 1
    g8 f g e f4 e8 dis      | % 2
    e2 r4 f      | % 3
    e8 fis g4 g f      | % 4
    e4. d16 c b4 gis'      | % 5
    a8 e f e~ e d g4~      | % 6
    g8 f g e f4 e8 dis      | % 7
    e2 r4 f      | % 8
    e8 fis g4 g f      | % 9
    e4. d16 c b4 e8 d      | % 10
    c d~ d c a g~ g gis      | % 11
    a4. b8 c b e4      | % 12
    e8 a g f e4 d      | % 13
    c8 e a4 a8 gis g fis      | % 14
    g4 g g4. f8      | % 15
    e4. d8 d cis a b      | % 16
    c4 c b8 e d e      | % 17
    e a~ a gis a4 g8 a      | % 18
    b g e f b, d g f      | % 19
    f e e d d e16 d c4      | % 20
    b2. s4 \bar "|." 
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
    e'4     e8 c d e a,4 g      | % 1
    a bes a8 gis a4      | % 2
    a gis r a8 b      | % 3
    c4 d e8 d c4      | % 4
    bes8 a4 b8 gis4 e'      | % 5
    e8 c d e a,4 g      | % 6
    a bes a8 gis a4      | % 7
    a gis r a8 b      | % 8
    c4 d e8 d c4      | % 9
    bes8 a4 b8 gis4 b      | % 10
    a8 g~ g a f4 e      | % 11
    e a a8 gis gis4      | % 12
    a16 b c4 d8 e e, fis gis      | % 13
    a4. f'8 e4 g,8 a      | % 14
    b c d4 d d      | % 15
    e8 a, a4 a f      | % 16
    e4. fis8 g4 a8 b      | % 17
    c e f e c4 e      | % 18
    d cis8 d e b c4      | % 19
    d8 a a b~ b e, a4      | % 20
    a gis8 fis gis4 s4 \bar "|." 
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
    e4     a4. g8 f4. e8      | % 1
    d4. cis8 d4 a      | % 2
    e'2 r4 d      | % 3
    a' g8 f e4 f8 e      | % 4
    d cis d4 e e      | % 5
    a4. g8 f4. e8      | % 6
    d4. cis8 d4 a      | % 7
    e'2 r4 d      | % 8
    a' g8 f e4 f8 e      | % 9
    d cis d4 e e      | % 10
    a,8 b c4~ c8 b c b      | % 11
    a g f4 e e'      | % 12
    a,4. b8 c4. b8      | % 13
    a a' f d e4 c      | % 14
    g' g,8 a b c d4~      | % 15
    d8 cis d4 a d      | % 16
    c8 b a4 e' fis8 gis      | % 17
    a c, d e f4 e8 fis      | % 18
    g4. f8 e d c a      | % 19
    b cis d gis, a b c d      | % 20
    e2. s4 \bar "|." 
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
