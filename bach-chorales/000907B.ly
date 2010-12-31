
% BWV 9 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 9"
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
    \partial 4
    b'4     b b b8 cis d4      | % 1
    cis b a\fermata  b8 a      | % 2
    gis fis e fis gis4 ais      | % 3
    b cis b\fermata  b      | % 4
    b b b8 cis d4      | % 5
    cis b a\fermata  b8 a      | % 6
    gis fis e fis gis4 ais      | % 7
    b cis b\fermata  b      | % 8
    e dis cis dis      | % 9
    e8 dis cis4 b\fermata  b      | % 10
    e b cis gis8 a      | % 11
    b4 a gis\fermata  gis      | % 12
    fis8 gis a4 gis fis      | % 13
    cis dis e\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    gis'4     fis8 gis a4 gis8 a b4      | % 1
    b8 a d, e fis4 fis      | % 2
    e b e cis      | % 3
    fis4. e8 dis4 gis      | % 4
    fis8 gis a4 gis8 a b4      | % 5
    b8 a d, e fis4 fis      | % 6
    e b e cis      | % 7
    fis4. e8 dis4 e8 fis      | % 8
    gis ais b4 ais8 gis fis4      | % 9
    b8 gis ais4 fis gis8 a      | % 10
    b a gis fis eis fis gis cis,      | % 11
    cis gis' gis fis fis eis eis4      | % 12
    fis8 e dis cis b cis dis4      | % 13
    e b b s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e'4     b fis' e e      | % 1
    e8 fis g4 d b      | % 2
    b8 a gis4 cis fis,      | % 3
    fis8 b ais4 fis e'      | % 4
    b fis' e e      | % 5
    e8 fis g4 d b      | % 6
    b8 a gis4 cis fis,      | % 7
    fis8 b ais4 fis gis      | % 8
    cis dis8 e fis4 b,      | % 9
    b fis'8 e dis4 e      | % 10
    b8 cis d4 cis8 dis eis fis      | % 11
    gis cis, cis4 cis cis      | % 12
    cis8 b a4 e' b8 a      | % 13
    g4 fis8 a gis4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key e \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e dis e gis,      | % 1
    a b8 cis d4 dis      | % 2
    e4. dis8 cis dis e fis      | % 3
    dis b fis'4 b, e      | % 4
    e dis e gis,      | % 5
    a b8 cis d4 dis      | % 6
    e4. dis8 cis dis e fis      | % 7
    dis b fis'4 b, e8 dis      | % 8
    cis4 b fis'8 gis a fis      | % 9
    gis e fis4 b, e8 fis      | % 10
    gis a b4 b8 a gis fis      | % 11
    eis4 fis cis cis'8 b      | % 12
    a gis fis4 gis8 a b4      | % 13
    b8 ais b4 e, s4 \bar "|." 
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
