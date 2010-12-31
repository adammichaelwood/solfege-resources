
% BWV 278 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 278"
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
    \partial 4
    b'4     ais b8 cis d4 e      | % 1
    d cis b\fermata  b8 a      | % 2
    g4 a b8 a g4      | % 3
    fis8 e fis4 e\fermata  b'      | % 4
    ais b8 cis d4 e      | % 5
    d cis b\fermata  b8 a      | % 6
    g4 a b8 a g4      | % 7
    fis8 e fis4 e\fermata  r      | % 8
    e8 fis g4 a e8 fis      | % 9
    g4 a b\fermata  b      | % 10
    e d e fis8 e      | % 11
    d4 cis b\fermata  cis      | % 12
    d8 c b c d4 a      | % 13
    g fis e2\fermata       | % 14
    b'4 a g fis      | % 15
    e2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     fis4. ais8 b ais16 b cis4~      | % 1
    cis8 b4 ais8 fis4 fis~      | % 2
    fis8 e4 dis16 cis b8 dis e4      | % 3
    e8 dis16 cis dis4 b g'      | % 4
    fis4. ais8 b ais16 b cis4~      | % 5
    cis8 b4 ais8 fis4 fis~      | % 6
    fis8 e4 dis16 cis b8 dis e4      | % 7
    e8 dis16 cis dis4 b r      | % 8
    b e e4. b8      | % 9
    b c16 d e4 dis fis      | % 10
    b a b8 gis cis4      | % 11
    c8 b4 ais8 fis4 g      | % 12
    fis d d2      | % 13
    e4. d8 cis2      | % 14
    dis8 e e fis b, e4 dis8      | % 15
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e'8 d     cis4 d8 e fis g4 fis8      | % 1
    fis b, cis16 d e8 e dis b4      | % 2
    b8 c4 b16 a b4 b      | % 3
    b4. a8 g4 e'8 d      | % 4
    cis4 d8 e fis g4 fis8      | % 5
    fis b, cis16 d e8 e dis b4      | % 6
    b8 c4 b16 a b4 b      | % 7
    b4. a8 g4 r      | % 8
    g8 a b4 e, a      | % 9
    g8 a16 b c4 fis, dis'      | % 10
    e8 fis16 g a8 fis b, e cis b16 ais      | % 11
    b8 d g fis d4 e      | % 12
    a, b8 a g4. fis8      | % 13
    b4 a a2      | % 14
    b4 cis8 dis e g, c b16 a      | % 15
    gis2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     e d8 cis b b'4 ais8      | % 1
    b g e fis b,4 dis      | % 2
    e fis g8 fis g a      | % 3
    b4 b, e e      | % 4
    e d8 cis b b'4 ais8      | % 5
    b g e fis b,4 dis      | % 6
    e fis g8 fis g a      | % 7
    b4 b, e r      | % 8
    e4. d8 c b cis dis      | % 9
    e d c4 b b'8 a      | % 10
    g fis16 e fis8 a gis cis ais fis      | % 11
    b g e fis b,4 e      | % 12
    d g,8 a b c d4~      | % 13
    d8 cis d fis a2      | % 14
    a8 g4 fis8 e c a b      | % 15
    e2. s4 \bar "|." 
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
