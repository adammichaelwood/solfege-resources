
% BWV 227 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 227"
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
    b'4 cis d b      | % 3
    e2 dis\fermata       | % 4
    e8 fis g4 fis4. fis8      | % 5
    e1\fermata       | % 6
    b4 b a g      | % 7
    fis2 e\fermata       | % 8
    b'4 cis d b      | % 9
    e2 dis\fermata       | % 10
    e8 fis g4 fis4. fis8      | % 11
    e1\fermata       | % 12
    b4 b c b      | % 13
    a4. a8 g2\fermata       | % 14
    b4 cis d b      | % 15
    e d8 cis cis2      | % 16
    b\fermata  b4 b      | % 17
    a g8 fis fis2      | % 18
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
    g'4 fis e8 dis e4      | % 1
    e dis b2      | % 2
    g'8 fis e4 d d      | % 3
    g8 a b4 b2      | % 4
    g8 a b4 b4. a8      | % 5
    g1      | % 6
    g4 fis e8 dis e4      | % 7
    e dis b2      | % 8
    g'8 fis e4 d d      | % 9
    g8 a b4 b2      | % 10
    g8 a b4 b4. a8      | % 11
    g1      | % 12
    g4 g a g      | % 13
    g fis d2      | % 14
    g4 g a g8 a      | % 15
    b4 b b ais      | % 16
    fis2 g4 fis      | % 17
    e e e dis      | % 18
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
    e'4 b c8 fis, g4      | % 1
    c b8 a g2      | % 2
    e'8 d cis b a4 g8 a      | % 3
    b4 g' fis2      | % 4
    e4 e e dis      | % 5
    b1      | % 6
    e4 b c8 fis, g4      | % 7
    c b8 a g2      | % 8
    e'8 d cis b a4 g8 a      | % 9
    b4 g' fis2      | % 10
    e4 e e dis      | % 11
    b1      | % 12
    e4 d d d      | % 13
    e d8 c b2      | % 14
    d4 e d d      | % 15
    g fis g fis8 e      | % 16
    dis2 e4 fis8 g      | % 17
    a a, b4 c b8 a      | % 18
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
    e4 d c4. b8      | % 1
    a4 b e2      | % 2
    e4 a8 g fis4 g8 fis      | % 3
    e fis g a b2      | % 4
    c4 b8 a b4 b,      | % 5
    e1      | % 6
    e4 d c4. b8      | % 7
    a4 b e2      | % 8
    e4 a8 g fis4 g8 fis      | % 9
    e fis g a b2      | % 10
    c4 b8 a b4 b,      | % 11
    e1      | % 12
    e8 fis g4 fis g      | % 13
    c, d g,2      | % 14
    g'4 fis8 e fis4 g8 fis      | % 15
    e4 b e fis      | % 16
    b,2 e4 d      | % 17
    c b a b      | % 18
    <e, e'>1 \bar "|."\bar "|." 
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
