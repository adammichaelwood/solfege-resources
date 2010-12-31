
% BWV 8 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 8"
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
    r4 b'8 b e4 b      | % 1
    cis b a~ a8 b16 a      | % 2
    gis4 fis r b8 a      | % 3
    gis4 cis8 b ais fis b4~      | % 4
    b ais b2      | % 5
    r4 b8 b e4 b      | % 6
    cis b a~ a8 b16 a      | % 7
    gis4 fis r b8 a      | % 8
    gis4 cis8 b ais fis b4~      | % 9
    b ais b2      | % 10
    r4 fis8 gis a4 gis      | % 11
    cis4. dis8 bis2      | % 12
    r4 cis8 b ais4 b      | % 13
    b ais b fis8 fis      | % 14
    b4. a8 gis4 cis      | % 15
    bis cis2 bis4      | % 16
    cis2 r4 e8 b      | % 17
    cis4 gis8 a b4. a8      | % 18
    gis4 fis8 e dis4 e~      | % 19
    e dis e2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    r2 r4 gis'8 gis      | % 1
    a4 a8 gis gis fis16 e fis8 fis      | % 2
    e4 dis r2      | % 3
    r4 gis8 gis fis4 fis      | % 4
    fis fis fis2      | % 5
    r r4 gis8 <gis gis>      | % 6
    a4 a8 gis gis fis16 e <fis fis>8 fis      | % 7
    e4 dis r2      | % 8
    r4 gis8 gis fis4 fis      | % 9
    fis fis fis2      | % 10
    r4 dis8 e fis4 e8 fis      | % 11
    gis fis gis a gis2      | % 12
    r4 gis8 gis fis4 fis      | % 13
    fis fis fis r      | % 14
    r fis~ fis e      | % 15
    fis8 gis ais ais gis2      | % 16
    gis4 gis8 dis e2~      | % 17
    e4 e dis8 e fis4~      | % 18
    fis8 e dis e b4 cis      | % 19
    b2 b \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    r2 r4 e'8 e      | % 1
    e4 e cis b      | % 2
    b b r2      | % 3
    r4 e8 dis cis4 dis      | % 4
    cis cis dis2      | % 5
    r r4 e8 e      | % 6
    e4 e cis b      | % 7
    b b r2      | % 8
    r4 e8 dis cis4 dis      | % 9
    cis cis dis2      | % 10
    r r4 e8 dis      | % 11
    cis a' gis fis dis2      | % 12
    r4 e8 dis cis4 dis      | % 13
    cis8 b cis4 dis r      | % 14
    r dis8 dis b4 cis      | % 15
    dis e dis2      | % 16
    e4 e8 bis cis4. d8      | % 17
    cis2 b~      | % 18
    b4 c fis, g      | % 19
    fis8 e fis4 gis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    r2 r4 <e e>8 e      | % 1
    a4 e fis dis      | % 2
    e b r2      | % 3
    r4 e~ e8 dis cis b      | % 4
    fis' e fis4 b,2      | % 5
    r r4 e8 e      | % 6
    a4 e fis dis      | % 7
    e b r2      | % 8
    r4 e~ e8 dis cis b      | % 9
    fis' e fis4 b,2      | % 10
    r4 r r cis8 dis      | % 11
    e dis e fis gis,4 gis'8 fis      | % 12
    e2. dis8 e      | % 13
    fis4 fis, b r      | % 14
    r b8 b e dis cis b      | % 15
    a gis fisis4 gis2      | % 16
    cis r4 cis'8 gis      | % 17
    a b cis4 gis dis      | % 18
    e a,2 ais4      | % 19
    b2 e \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceEA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    e,4 r2 <e' e>8 e      | % 1
    a4 e fis dis      | % 2
    e b8 cis dis2      | % 3
    e8 e, e'4~ e8 dis cis b      | % 4
    fis'4 fis, b2      | % 5
    e,4 r2 e'8 e      | % 6
    a4 e fis dis      | % 7
    e b8 cis dis2      | % 8
    e8 e, e'4~ e8 dis cis b      | % 9
    fis'4 fis, b4. cis8      | % 10
    dis4 b fis cis'8 dis      | % 11
    e dis e fis gis,4 gis'8 fis      | % 12
    e2. dis8 e      | % 13
    fis4 fis, b4. cis8      | % 14
    dis4 b8 b e dis cis b      | % 15
    a gis fisis4 gis2      | % 16
    cis r4 cis'8 gis      | % 17
    a b cis4 gis dis      | % 18
    e a,2 ais4      | % 19
    b2 e,\fermata  \bar "|."\bar "|." 
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
\part AvoiceEA { \AvoiceEA } { \transpose e c \AvoiceEA }
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
\part AvoiceEA { \AvoiceEA } { \transpose e c \AvoiceEA }
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
