
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    b'4 b cis cis      | % 1
    dis dis e2\fermata       | % 2
    fis4 fis e e      | % 3
    dis cis8 dis16 e cis2      | % 4
    b\fermata  b4 b      | % 5
    cis cis b a      | % 6
    gis2\fermata  b4 b      | % 7
    a a gis fis8 gis16 a      | % 8
    fis2 e\fermata       | % 9
    b'4 b cis cis      | % 10
    dis dis e2\fermata       | % 11
    b4 b8 cis16 d cis8 b a gis      | % 12
    fis gis16 a fis4 e2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    gis'8 a gis fis e4 fis8 gis      | % 1
    a cis b a gis2      | % 2
    b4 b8 ais gis4 fis      | % 3
    fis8 gis gis e fis4. e8      | % 4
    dis2 e4 e      | % 5
    e a a8 gis gis fis      | % 6
    eis2 dis4 gis8 fis      | % 7
    e dis e fis gis e e4      | % 8
    e8 cis dis4 b2      | % 9
    e4 e e fis8 gis      | % 10
    a fis gis4 gis2      | % 11
    gis8 a b gis a dis, e4      | % 12
    e dis b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    e'8 fis e dis cis4 dis8 e      | % 1
    fis a gis fis e2      | % 2
    dis8 e fis dis e dis cis ais      | % 3
    b4 b b ais      | % 4
    fis2 gis8 a b gis      | % 5
    a cis fis4 fis8 cis cis4      | % 6
    cis2 b8 a gis4      | % 7
    gis8 a gis fis b4 cis      | % 8
    b4. a8 gis2      | % 9
    gis8 a b gis a4 cis      | % 10
    cis4. bis8 cis2      | % 11
    e4 e e8 gis cis,4      | % 12
    cis8 a fis b gis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    e'4 e, a8 b a gis      | % 1
    fis4 b, e2      | % 2
    b'8 cis dis b cis b ais fis      | % 3
    b gis e cis fis e fis4      | % 4
    b,2 e8 fis gis e      | % 5
    a gis fis e dis eis fis4      | % 6
    cis2 gis'8 fis e dis      | % 7
    cis b cis dis e gis a fis      | % 8
    b a b4 e,2      | % 9
    e8 fis gis e a b a gis      | % 10
    fis dis gis4 cis,2      | % 11
    gis'8 fis gis e a b cis b      | % 12
    a fis b b, e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose e c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose e c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose e c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose e c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose e c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose e c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose e c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose e c \ABvoiceDA }
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
