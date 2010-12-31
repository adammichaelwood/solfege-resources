
% BWV 342 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 342"
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
    \time 3/4 
    c'4 c d      | % 1
    e2 d4      | % 2
    c2 b4      | % 3
    c2.\fermata       | % 4
    c4 c c      | % 5
    d c b      | % 6
    a2 gis4      | % 7
    a2\fermata  b4      | % 8
    c2 d4      | % 9
    e4. f8 g4      | % 10
    f e d      | % 11
    e2.\fermata       | % 12
    e4 e e      | % 13
    d2 d4      | % 14
    e d c      | % 15
    b2.\fermata       | % 16
    b4 b cis      | % 17
    d c b      | % 18
    a2 gis4      | % 19
    a2\fermata  b4      | % 20
    c2 d4      | % 21
    e2 e4      | % 22
    e dis2      | % 23
    e2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    e8 f g4 g      | % 1
    g2 f4      | % 2
    e d2      | % 3
    e2.      | % 4
    f4 g f      | % 5
    f e d      | % 6
    e f e      | % 7
    e2 e4      | % 8
    e2 g4      | % 9
    g2 g4      | % 10
    c b a      | % 11
    gis2.      | % 12
    a4 g8 f g a      | % 13
    b4 g a      | % 14
    b2 a4      | % 15
    gis2.      | % 16
    g8 a g f e4      | % 17
    d e f      | % 18
    e f e      | % 19
    e2 gis4      | % 20
    a2 g4      | % 21
    g2 fis4      | % 22
    fis gis a      | % 23
    gis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c'4 c b      | % 1
    c b a      | % 2
    g a g      | % 3
    g2.      | % 4
    a4 g a      | % 5
    gis a b      | % 6
    c b2      | % 7
    c gis4      | % 8
    a8 b c4 b      | % 9
    c2 d4      | % 10
    c e f      | % 11
    b,2.      | % 12
    c4 c c      | % 13
    d8 c d e f4      | % 14
    e2 e4      | % 15
    e2.      | % 16
    e4 e a,      | % 17
    a2 gis4      | % 18
    a d b      | % 19
    c2 e4      | % 20
    e f d      | % 21
    c2 c4      | % 22
    b2 b4      | % 23
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    a'4 e g      | % 1
    c,2 d4      | % 2
    e f g      | % 3
    c,2.      | % 4
    f4 e f      | % 5
    b, c d      | % 6
    c d e      | % 7
    a,2 e'4      | % 8
    a2 g4      | % 9
    c2 b4      | % 10
    a g f      | % 11
    e2.      | % 12
    a4 e c      | % 13
    g' b a      | % 14
    gis2 a4      | % 15
    e2.      | % 16
    e8 d e f g4      | % 17
    f e d      | % 18
    c d e      | % 19
    a,2 e'4      | % 20
    a2 b4      | % 21
    c b a      | % 22
    b2 b,4      | % 23
    e2. \bar "|."\bar "|." 
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
