
% BWV 124 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 124"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    b'4 b cis cis      | % 1
    dis dis e2\fermata       | % 2
    fis4 fis e dis      | % 3
    cis dis8 e cis2      | % 4
    b\fermata  b4 b      | % 5
    cis cis b a      | % 6
    gis2\fermata  b4 b      | % 7
    a gis fis gis8 a      | % 8
    fis2 e\fermata       | % 9
    b'4 b cis cis      | % 10
    dis dis e2\fermata       | % 11
    b4 b a gis8 fis      | % 12
    fis4. e8 e2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    gis'4 gis gis8 fis16 e a4~      | % 1
    a8 gis16 fis b8 a gis2      | % 2
    b4 ais8 b cis ais fis gis      | % 3
    ais4 b b ais      | % 4
    fis2 gis8 a b4      | % 5
    b a4. gis4 fis8      | % 6
    e2 dis4 cis      | % 7
    cis8 dis e4 b b      | % 8
    cis dis b2      | % 9
    e4 e e4. e8      | % 10
    a fis gis4 gis2      | % 11
    gis4 gis gis8 fis e4      | % 12
    e dis b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    e'4 e e8 dis16 cis fis4~      | % 1
    fis8 dis b b b2      | % 2
    fis'4 e8 dis cis4 dis8 e      | % 3
    fis4 fis gis fis8 e      | % 4
    dis2 e4 e      | % 5
    e8 cis fis4. dis8 e fis      | % 6
    b,2 b8 a gis4      | % 7
    a8 b cis4 dis e      | % 8
    e8 a,4 gis16 fis gis2      | % 9
    gis8 a b4 a8 e cis'4~      | % 10
    cis bis cis2      | % 11
    dis4 e e8 b b4      | % 12
    cis8 a fis b gis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    e8 fis gis e a4. gis16 fis      | % 1
    b8 a gis fis e2      | % 2
    dis8 e fis gis ais fis b4      | % 3
    e,8 dis cis b e cis fis4      | % 4
    b,2 e8 fis gis e      | % 5
    a gis fis e dis b cis dis      | % 6
    e2 gis8 fis eis cis      | % 7
    fis4 cis'8 b a gis fis e      | % 8
    a fis b4 e,2      | % 9
    e8 fis gis e a b a gis      | % 10
    fis dis gis4 cis,2      | % 11
    gis'8 fis e dis cis dis e cis      | % 12
    a fis b4 e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceEA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    e8 fis gis e a4. gis16 fis      | % 1
    b8 a gis fis e2      | % 2
    dis8 e fis gis ais fis b b,      | % 3
    e dis cis b e cis fis4      | % 4
    b,2 e8 fis gis e      | % 5
    a gis fis e dis b cis dis      | % 6
    e2 gis8 fis eis cis      | % 7
    fis fis, cis' b a gis fis e      | % 8
    a fis b4 e,2      | % 9
    e'8 fis gis e a b a gis      | % 10
    fis dis gis gis, cis2      | % 11
    gis'8 fis e dis cis dis e cis      | % 12
    a fis b4 e,2 \bar "|."\bar "|." 
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
\part AvoiceEA { \quotearticulations \AvoiceEA \ASvoiceAA } { \transpose e c \AvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = AAvoiceBA \AAvoiceBA
\new Voice = ATvoiceCA \ATvoiceCA
\new Voice = ABvoiceDA \ABvoiceDA
\new Voice = AvoiceEA \AvoiceEA
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
#(define output-suffix "Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceEA { \quotearticulations \AvoiceEA \ASvoiceAA } { \transpose e c \AvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceEA \AvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
