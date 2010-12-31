
% BWV 56 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 56"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    r4 c'2 g4      | % 1
    c c bes bes8 a      | % 2
    a2 g\fermata       | % 3
    r4 ees2 g4      | % 4
    f ees8 d ees4 d      | % 5
    c1\fermata       | % 6
    r4 c'2 g4      | % 7
    c c bes bes8 a      | % 8
    a2 g\fermata       | % 9
    r4 ees2 g4      | % 10
    f ees8 d ees4 d      | % 11
    c1\fermata       | % 12
    ees2 f4 g      | % 13
    aes aes g g      | % 14
    f2 ees\fermata       | % 15
    ees f4 g      | % 16
    aes aes g g      | % 17
    f2 ees\fermata       | % 18
    g4 a bes g      | % 19
    c c b2\fermata       | % 20
    c4 ees d c      | % 21
    c b c2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    r4 ees2 d4      | % 1
    fis8 g a4 a8 g g4      | % 2
    g fis d2      | % 3
    r4 c2 c4      | % 4
    d8 b c4 c b      | % 5
    g1      | % 6
    r4 ees'2 d4      | % 7
    fis8 g a4 a8 g g4      | % 8
    g fis d2      | % 9
    r4 c2 c4      | % 10
    d8 b c4 c b      | % 11
    g1      | % 12
    c2 d4 ees      | % 13
    f f f8 d ees4      | % 14
    ees d bes2      | % 15
    c d4 ees      | % 16
    f f f8 d ees4      | % 17
    ees d bes2      | % 18
    ees4 ees f ees      | % 19
    ees ees8 d d2      | % 20
    g4 g aes8 g~ g f      | % 21
    g4 g g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    r4 g'2 bes4      | % 1
    c ees8 d d4 ees      | % 2
    d4. c8 b2      | % 3
    r4 c2 g4      | % 4
    aes a g g8 f      | % 5
    ees1      | % 6
    r4 g2 bes4      | % 7
    c ees8 d d4 ees      | % 8
    d4. c8 b2      | % 9
    r4 c2 g4      | % 10
    aes a g g8 f      | % 11
    ees1      | % 12
    g2 bes      | % 13
    c4 bes bes c      | % 14
    c bes8 aes g2      | % 15
    g bes      | % 16
    c4 bes bes c      | % 17
    c bes8 aes g2      | % 18
    bes4 c bes bes      | % 19
    c8 bes a4 g2      | % 20
    g4 c c8 b c d      | % 21
    ees4 d e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    r4 c2 bes4      | % 1
    a fis' g c,      | % 2
    d2 g,      | % 3
    r4 aes'2 ees4      | % 4
    f fis g g,      | % 5
    c1      | % 6
    r4 c2 bes4      | % 7
    a fis' g c,      | % 8
    d2 g,      | % 9
    r4 aes'2 ees4      | % 10
    f fis g g,      | % 11
    c1      | % 12
    c'4 bes aes g      | % 13
    f d ees c      | % 14
    aes bes ees2      | % 15
    c'4 bes aes g      | % 16
    f d ees c      | % 17
    aes bes ees2      | % 18
    ees4 c d ees      | % 19
    aes8 g fis4 g2      | % 20
    ees8 d c4 f8 g aes4      | % 21
    g g, c2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
