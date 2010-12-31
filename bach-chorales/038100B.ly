
% BWV 381 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 381"
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
    b'4 b c b      | % 1
    b a b2\fermata       | % 2
    d4 d e e      | % 3
    a, d8 c b4 b\fermata       | % 4
    g4. a8 b4 a8 g      | % 5
    fis4. e8 e2\fermata       | % 6
    b'4. c8 d4 b      | % 7
    c b8 a a4 g\fermata       | % 8
    b b e e      | % 9
    a, a\fermata  b c      | % 10
    d d c b      | % 11
    a a\fermata  b4. c8      | % 12
    d4 b c b      | % 13
    a b b a8 g      | % 14
    fis2 e\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 g fis g8 fis      | % 1
    e dis e4 dis2      | % 2
    g8 a b a b4 e,      | % 3
    d8 g fis4 g g      | % 4
    e e fis e      | % 5
    e dis b2      | % 6
    g'4 g a g~      | % 7
    g8 fis g4~ g8 fis d4      | % 8
    g8 a b4 b a8 g~      | % 9
    g fis16 e fis4 g g      | % 10
    a8 g a4 g8 a4 g8      | % 11
    g fis16 e fis4 g g      | % 12
    gis8 fis gis b~ b a g4~      | % 13
    g8 fis fis4 e e~      | % 14
    e dis b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e'4 e a, g      | % 1
    g fis8 e fis2      | % 2
    b8 c d4~ d c      | % 3
    d d d d      | % 4
    c c b b      | % 5
    c b8. a16 g2      | % 6
    e'4 d d d      | % 7
    c8 d e4 d8. c16 b4      | % 8
    d g8 fis e d e4      | % 9
    d d d e      | % 10
    a, d8 fis e d d4      | % 11
    d d d e      | % 12
    b e e d      | % 13
    d b8 a g4 a8 b      | % 14
    c4 b8 a gis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e,4 e'~ e8 dis e g      | % 1
    c,2 b      | % 2
    g4 g'~ g8 fis g c      | % 3
    fis, e d4 g g,      | % 4
    c'8 b c4 dis, e      | % 5
    a, b e,2      | % 6
    e'8 fis g4~ g8 fis g b      | % 7
    e, d c4 d g,      | % 8
    g'8 fis e d c4 cis      | % 9
    d2 g4 fis8 e      | % 10
    fis e fis b e, fis g4      | % 11
    d2 g8 fis e4~      | % 12
    e8 d e gis a,4 b8 c      | % 13
    d4 dis e8 g c, b      | % 14
    a4 b e2 \bar "|."\bar "|." 
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
