
% BWV 197 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 197"
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
    \partial 4
    a'4     b b a gis8 fis      | % 1
    e4 fis8 gis a4 b      | % 2
    a2.\fermata  cis8 d      | % 3
    e4 fis e4. d8      | % 4
    cis b a gis fis4 gis      | % 5
    a2\fermata  cis4 cis      | % 6
    cis b cis2      | % 7
    a4\fermata  a b8 cis d4      | % 8
    cis4. b8 a2\fermata       | % 9
    b8 cis d4 cis8 b a gis      | % 10
    fis4 gis8 a b4. a8      | % 11
    gis4 fis e2\fermata       | % 12
    fis4 gis a2~      | % 13
    a4 gis a\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e e e d8 cis      | % 1
    b cis a d cis4 fis8 e      | % 2
    e2. a4      | % 3
    b8 cis d cis b a gis fis      | % 4
    gis eis cis4 d d      | % 5
    cis2 e4 e      | % 6
    e8 fis gis fis eis fis4 eis8      | % 7
    fis4 fis gis8 a b4      | % 8
    b a8 g fis2      | % 9
    fis8 gis a b a gis fis e      | % 10
    dis4 e8 fis gis4. fis8~      | % 11
    fis e4 dis8 b2      | % 12
    d4 e e8 cis fis4      | % 13
    e2 e4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'4     b8 a gis4 a b8 a      | % 1
    gis a fis b e, a4 gis8      | % 2
    cis2. e4      | % 3
    e a, b8 cis d4      | % 4
    gis, a a b      | % 5
    e,2 a4 a      | % 6
    gis8 a b4 b8 a gis cis      | % 7
    cis4 cis b8 a4 gis16 fis      | % 8
    e4 a a2      | % 9
    d8 cis4 b8 cis dis e4      | % 10
    b b b8 cis16 dis e8 b      | % 11
    b4. a8 gis2      | % 12
    a4 b8 d cis4 c      | % 13
    b8 a b d cis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key a \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     gis8 fis e d cis a d4~      | % 1
    d8 cis d b cis fis d e      | % 2
    a,2. a'4      | % 3
    a8 gis fis4 gis8 a b4      | % 4
    eis,8 cis fis e d cis b4      | % 5
    a2 a8 b cis d      | % 6
    e4. d8 cis2      | % 7
    fis4 fis8 e d cis b e      | % 8
    a, b cis4 d2      | % 9
    d8 e fis gis a b cis a      | % 10
    b a gis fis e dis cis dis      | % 11
    e gis b b, e2      | % 12
    d8 cis d b cis fis e dis      | % 13
    e4 e, a s4 \bar "|." 
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
