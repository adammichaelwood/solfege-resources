
% BWV 4 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 4"
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
    d cis b\fermata  b      | % 2
    g a b a8 g      | % 3
    fis e fis4 e\fermata  b'      | % 4
    ais b8 cis d4 e      | % 5
    d cis b\fermata  b      | % 6
    g a b a8 g      | % 7
    fis e fis4 e\fermata  r      | % 8
    e8 fis g4 a e8 fis      | % 9
    g4 a b\fermata  b      | % 10
    e dis e fis8 e      | % 11
    d4 cis b\fermata  cis      | % 12
    d b8 cis d4 a      | % 13
    g fis e2\fermata       | % 14
    b'4 a g2      | % 15
    fis e\fermata  \bar "|." 
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
    g'4     fis fis fis fis      | % 1
    fis fis8 e dis4 fis      | % 2
    e d d8 dis e4~      | % 3
    e dis b g'      | % 4
    fis fis fis fis      | % 5
    fis fis8 e dis4 fis      | % 6
    e d d8 dis e4~      | % 7
    e dis b r      | % 8
    b e e4. dis8      | % 9
    e4 d d g8 a      | % 10
    b4 a b fis      | % 11
    fis fis8 e d4 e      | % 12
    fis d g fis      | % 13
    fis8 e e dis e2      | % 14
    d8 e fis4~ fis8 dis e4~      | % 15
    e dis b2 \bar "|." 
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
    e'8 d     cis4 d8 ais b4 cis      | % 1
    b ais fis b      | % 2
    b8 c b a g a b4      | % 3
    c fis,8 a g4 e'8 d      | % 4
    cis4 d8 ais b4 cis      | % 5
    b ais fis b      | % 6
    b8 c b a g a b4      | % 7
    c fis,8 a g4 r      | % 8
    g8 a b4 a8 b c4      | % 9
    b a g d'      | % 10
    g fis e8 d cis4      | % 11
    b ais fis g      | % 12
    a g g d'8 c      | % 13
    b4 a g2      | % 14
    g4 fis8 b b4 c~      | % 15
    c b8 a gis2 \bar "|." 
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
    e4     fis8 e d cis b4 ais      | % 1
    b fis b dis      | % 2
    e fis g8 fis e4      | % 3
    a,8 b16 c b4 e, e'      | % 4
    fis8 e d cis b4 ais      | % 5
    b fis b dis      | % 6
    e fis g8 fis e4      | % 7
    a,8 b16 c b4 e, r      | % 8
    e'4. d8 c b a4      | % 9
    e' fis g g8 fis      | % 10
    e4 fis gis ais      | % 11
    b fis b, e      | % 12
    d g b,8 c d4      | % 13
    e b c2      | % 14
    g'4 dis e c      | % 15
    a b e,2 \bar "|." 
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
