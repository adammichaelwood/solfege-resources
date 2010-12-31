
% BWV 11 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 11"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    d4 d e      | % 1
    fis4. gis8 a4      | % 2
    a2 gis4      | % 3
    a2\fermata  fis4      | % 4
    g2 fis4      | % 5
    e2.      | % 6
    e2.      | % 7
    d2.\fermata       | % 8
    d4 d e      | % 9
    fis4. gis8 a4      | % 10
    a2 gis4      | % 11
    a2\fermata  fis4      | % 12
    g2 fis4      | % 13
    e2.      | % 14
    e2.      | % 15
    d2.\fermata       | % 16
    e4 e fis      | % 17
    g2 g4      | % 18
    fis4. e8 fis4      | % 19
    e2.\fermata       | % 20
    fis4 fis fis      | % 21
    g4. a8 b4      | % 22
    b2 ais4      | % 23
    b2\fermata  cis4      | % 24
    d fis,2      | % 25
    g fis4      | % 26
    e e\fermata  a      | % 27
    b4. a8 g4      | % 28
    fis8 e e4. d8      | % 29
    d2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    a4 d d8 cis      | % 1
    d2 cis8 a      | % 2
    fis'4 e2      | % 3
    e d8 cis      | % 4
    b cis d2~      | % 5
    d8 cis16 b cis4 d~      | % 6
    d cis8 b cis4      | % 7
    a2.      | % 8
    a4 d d8 cis      | % 9
    d2 cis8 a      | % 10
    fis'4 e2      | % 11
    e d8 cis      | % 12
    b cis d2~      | % 13
    d8 cis16 b cis4 d~      | % 14
    d cis8 b cis4      | % 15
    a2.      | % 16
    cis8 b cis4. dis8      | % 17
    e4 b e~      | % 18
    e dis8 cis dis4      | % 19
    b2.      | % 20
    dis4 b dis      | % 21
    e b b      | % 22
    g'8 fis e d e4      | % 23
    d2 fis4      | % 24
    fis8 e d2      | % 25
    cis8 d e4 d      | % 26
    d8 b cis4 d      | % 27
    d g8 fis fis e      | % 28
    d4 d8 b cis4      | % 29
    a2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    fis4 fis8 d a'4      | % 1
    a8 fis b4 a      | % 2
    b b8 cis d4      | % 3
    cis2 a4      | % 4
    g a8 g a4~      | % 5
    a a8 g fis4      | % 6
    b a4. g8      | % 7
    fis2.      | % 8
    fis4 fis8 d a'4      | % 9
    a8 fis b4 a      | % 10
    b b8 cis d4      | % 11
    cis2 a4      | % 12
    g a8 g a4~      | % 13
    a~ a8 g fis4      | % 14
    b a4. g8      | % 15
    fis2.      | % 16
    a8 gis a4 a      | % 17
    b8 a g2      | % 18
    c4 b4. a8      | % 19
    g2.      | % 20
    b4 fis8 g a b      | % 21
    g fis e4 e'8 d      | % 22
    cis4. b8 cis4      | % 23
    b2 ais4      | % 24
    b4. fis8 b a      | % 25
    g fis e a4 gis8      | % 26
    a4 a a      | % 27
    g8 a b cis d a      | % 28
    a b a4 g      | % 29
    fis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key d \major 
    %bartimesig: 
    \time 3/4 
    d8 cis b4 a      | % 1
    d4. e8 fis4      | % 2
    d8 b e2      | % 3
    a, d4      | % 4
    e fis4. g8      | % 5
    a g fis4 b8 a      | % 6
    g e a4 a,      | % 7
    d2.      | % 8
    d8 cis b4 a      | % 9
    d4. e8 fis4      | % 10
    d8 b e2      | % 11
    a, d4      | % 12
    e fis4. g8      | % 13
    a g fis4 b8 a      | % 14
    g e a4 a,      | % 15
    d2.      | % 16
    a4 a'8 g fis4      | % 17
    e4. d8 c b      | % 18
    a fis b4 b      | % 19
    e2.      | % 20
    b8 cis dis4 b      | % 21
    e4. fis8 g fis      | % 22
    e d cis4 fis      | % 23
    b,2 fis'4      | % 24
    b4. a8 g fis      | % 25
    e d cis4 d      | % 26
    a' a, fis'      | % 27
    g4. a8 b cis,      | % 28
    d g, a2      | % 29
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose d c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose d c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose d c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose d c \ABvoiceDA }
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
