
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
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
    e'4 e e e      | % 1
    d c b2\fermata       | % 2
    c4 d e e      | % 3
    d c b2\fermata       | % 4
    a4 b c a      | % 5
    a8 g f4 e2\fermata       | % 6
    f4 g a a      | % 7
    g f e2\fermata       | % 8
    a4 gis a b      | % 9
    c b a2\fermata       | % 10
    c4 d e e      | % 11
    d c b2\fermata       | % 12
    a4 b c a      | % 13
    a8 g f4 e2\fermata       | % 14
    f4 g a a      | % 15
    g f e2~      | % 16
    e1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    gis'4 gis a b      | % 1
    a a gis2      | % 2
    e8 fis g4 g f8 e      | % 3
    f4 e e2      | % 4
    e4 e e f      | % 5
    e d cis2      | % 6
    d4 e ees d      | % 7
    d2 cis      | % 8
    d4 e e fis8 gis      | % 9
    a4 g fis2      | % 10
    g4 g g f      | % 11
    f e8 fis g2      | % 12
    a4 e e e      | % 13
    a, d cis2      | % 14
    d4 e f f      | % 15
    e d2 c4      | % 16
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    b'4 b c b8 c      | % 1
    d e f4 b,2      | % 2
    a4 bes bes a      | % 3
    a2 gis      | % 4
    c4 b a8 b c d      | % 5
    e4 a, a2      | % 6
    a4 c c c      | % 7
    bes8 c d4 a2      | % 8
    a4 b c d      | % 9
    e d d2      | % 10
    c4 bes a a      | % 11
    a8 b c4 d2      | % 12
    d8 c b4 a8 b c d      | % 13
    e4 a, a2      | % 14
    a4 c c c      | % 15
    c8 b a4 gis a      | % 16
    gis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4 e a g      | % 1
    f e8 d e2      | % 2
    a4 g cis, cis      | % 3
    d a e'2      | % 4
    a4 gis a f      | % 5
    cis d a2      | % 6
    d4 c f, fis      | % 7
    g gis a2      | % 8
    f'4 e8 d c4 b      | % 9
    a b8 c d2      | % 10
    ees4 d cis d8 e      | % 11
    f g a4 g2      | % 12
    fis4 gis a a,8 b      | % 13
    cis4 d a2      | % 14
    d4 c f,8 g a b      | % 15
    c4 d e2~      | % 16
    e1 \bar "|."\bar "|." 
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
