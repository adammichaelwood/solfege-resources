
% BWV 64 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 64"
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
    b'4 b a g      | % 1
    fis2 e\fermata       | % 2
    b'4 b cis dis      | % 3
    e2 dis\fermata       | % 4
    e4 g fis4. e8      | % 5
    e1\fermata       | % 6
    b4 b a g      | % 7
    fis2 e\fermata       | % 8
    b'4 b cis dis      | % 9
    e2 dis\fermata       | % 10
    e4 g fis4. e8      | % 11
    e1\fermata       | % 12
    b4 b c b      | % 13
    a4. g8 g2\fermata       | % 14
    b4 cis d b      | % 15
    e d cis2      | % 16
    b\fermata  b4 b      | % 17
    a g fis2      | % 18
    e1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 g8 fis e4 e      | % 1
    e dis b2      | % 2
    g'4 g a8 g fis4      | % 3
    e fis fis2      | % 4
    g8 a b4 b a      | % 5
    g1      | % 6
    g4 g8 fis e4 e      | % 7
    e dis b2      | % 8
    g'4 g a8 g fis4      | % 9
    e fis fis2      | % 10
    g8 a b4 b a      | % 11
    g1      | % 12
    g8 fis e dis e fis g4      | % 13
    g fis d2      | % 14
    g4 g fis fis      | % 15
    g fis fis4. e8      | % 16
    dis2 d8 e f4      | % 17
    e8 fis g e e4 dis      | % 18
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e'4 d c b      | % 1
    c b8 a g2      | % 2
    e'4 d a8 b c4      | % 3
    b cis b2      | % 4
    b4 e e dis      | % 5
    b1      | % 6
    e4 d c b      | % 7
    c b8 a g2      | % 8
    e'4 d a8 b c4      | % 9
    b cis b2      | % 10
    b4 e e dis      | % 11
    b1      | % 12
    e4 b a g      | % 13
    e' d b2      | % 14
    d4 e ais, b      | % 15
    ais b b ais      | % 16
    fis2 gis4 gis      | % 17
    a8 c b4 cis b8 a      | % 18
    gis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e8 fis g4 c,8 d e4      | % 1
    a, b e2      | % 2
    e8 fis g4 fis8 g a4      | % 3
    gis ais b2      | % 4
    g8 fis e4 b' b,      | % 5
    e1      | % 6
    e8 fis g4 c,8 d e4      | % 7
    a, b e2      | % 8
    e8 fis g4 fis8 g a4      | % 9
    gis ais b2      | % 10
    g8 fis e4 b' b,      | % 11
    e1      | % 12
    e8 fis g4 c,8 d e4      | % 13
    cis d g,2      | % 14
    g'8 fis e4 fis8 e d4      | % 15
    cis d8 e fis2      | % 16
    b, b8 c d4      | % 17
    cis8 dis e4 ais, b      | % 18
    e,1 \bar "|."\bar "|." 
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
