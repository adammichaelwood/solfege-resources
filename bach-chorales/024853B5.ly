
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'4 b cis8 d e4      | % 1
    a, gis fis e\fermata       | % 2
    fis gis a b      | % 3
    cis8 d b4 a2\fermata       | % 4
    a4 b cis8 d e4      | % 5
    a, gis fis e\fermata       | % 6
    fis gis a b      | % 7
    cis8 d b4 a2\fermata       | % 8
    cis4 cis b cis      | % 9
    d cis8 b b a b4\fermata       | % 10
    fis gis a b      | % 11
    cis8 d b4 a8 gis a4\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    e4 e a a8 gis      | % 1
    gis fis fis e e dis b4      | % 2
    d8 cis b4 e e      | % 3
    e8 fis e4 e2      | % 4
    e4 e a a8 gis      | % 5
    gis fis fis e e dis b4      | % 6
    d8 cis b4 e e      | % 7
    e8 fis e4 e2      | % 8
    a4 a e8 fis gis4      | % 9
    fis e8 fis gis fis gis4      | % 10
    cis,8 d e4 e8 d16 cis fis4      | % 11
    e e e8 d e4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    cis'4 b a8 b cis d      | % 1
    e b b4 b8. a16 gis4      | % 2
    b8 cis d e a,4 e      | % 3
    a4. gis8 cis2      | % 4
    cis4 b a8 b cis d      | % 5
    e b b4 b8. a16 gis4      | % 6
    b8 cis d e a,4 e      | % 7
    a4. gis8 cis2      | % 8
    e4 e8 dis e d cis b      | % 9
    a b cis dis e4 e      | % 10
    ais,8 b b4 a a      | % 11
    a8 b gis d' cis b cis4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    a'4 gis fis cis8 b      | % 1
    cis dis e4 b e      | % 2
    b b'8 cis16 d cis8 b a gis      | % 3
    a d, e4 a,2      | % 4
    a'4 gis fis cis8 b      | % 5
    cis dis e4 b e      | % 6
    b b'8 cis16 d cis8 b a gis      | % 7
    a d, e4 a,2      | % 8
    a'8 gis fis4 gis8 fis e4      | % 9
    fis8 gis a4 e e      | % 10
    e8 d cis b cis fis e d      | % 11
    e4 e, a a \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose a c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose a c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose a c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose a c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose a c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose a c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose a c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose a c \ABvoiceDA }
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
