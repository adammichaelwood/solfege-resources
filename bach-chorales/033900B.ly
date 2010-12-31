
% BWV 339 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 339"
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
    r4 a' gis a      | % 1
    b b a b      | % 2
    cis2\fermata  r4 d      | % 3
    cis b a gis8 a      | % 4
    b2 a\fermata       | % 5
    r4 a gis a      | % 6
    b b a b      | % 7
    cis2\fermata  r4 d      | % 8
    cis b a gis8 a      | % 9
    b2 a\fermata       | % 10
    r4 a b8 cis d4      | % 11
    cis8 b a4 b8 a gis4      | % 12
    fis2\fermata  r4 gis      | % 13
    e e b' cis      | % 14
    d8 cis b4 a2\fermata       | % 15
    r4 e' cis cis      | % 16
    b a gis a      | % 17
    b2 a\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    r4 e d e      | % 1
    fis cis cis fis      | % 2
    eis2 r4 fis      | % 3
    e8 cis dis eis fis4 e      | % 4
    fis e8 d cis2      | % 5
    r4 e d e      | % 6
    fis cis cis fis      | % 7
    eis2 r4 fis      | % 8
    e8 cis dis eis fis4 e      | % 9
    fis e8 d cis2      | % 10
    r4 e fis eis8 fis      | % 11
    gis4 cis, fis4. eis8      | % 12
    cis2 r4 dis      | % 13
    e8 d4 cis8 dis e e4      | % 14
    d8 fis g4~ g fis      | % 15
    r b~ b8 a16 gis a4~      | % 16
    a8 gis16 fis e4 e e      | % 17
    e4. d8 cis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    r4 cis' b a~      | % 1
    a gis a gis8 fis      | % 2
    gis2 r4 a      | % 3
    a b cis b8 a      | % 4
    a4 gis e2      | % 5
    r4 cis' b a~      | % 6
    a gis a gis8 fis      | % 7
    gis2 r4 a      | % 8
    a b cis b8 a      | % 9
    a4 gis e2      | % 10
    r4 cis' d8 cis b a      | % 11
    gis4 a8 gis fis4 cis'8 b      | % 12
    a2 r4 gis      | % 13
    gis a fis8 gis g fis      | % 14
    fis d d'4 d2      | % 15
    r4 e e cis8 d16 e      | % 16
    fis8 e a,4 d8 b a4~      | % 17
    a gis e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    r4 a b cis      | % 1
    dis eis fis8 e d4      | % 2
    cis2 r4 fis8 gis      | % 3
    a4. gis8 fis e d cis      | % 4
    d b e4 a,2      | % 5
    r4 a b cis      | % 6
    dis eis fis8 e d4      | % 7
    cis2 r4 fis8 gis      | % 8
    a4. gis8 fis e d cis      | % 9
    d b e4 a,2      | % 10
    r4 a'2 gis8 fis      | % 11
    eis4 fis8 e d b cis4      | % 12
    fis,2 r4 bis      | % 13
    cis8 b a4~ a8 gis ais4      | % 14
    b4. cis8 d2      | % 15
    r4 gis, a8 cis fis e      | % 16
    d4. cis8 b e cis a      | % 17
    e'4 e, a2 \bar "|."\bar "|." 
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
