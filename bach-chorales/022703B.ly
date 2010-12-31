
% BWV 227 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 227"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano 1"
    \set Staff.shortInstrumentName = #"S 1"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'4 b a g      | % 1
    fis2 e\fermata       | % 2
    b'4 cis d b      | % 3
    e2 dis\fermata       | % 4
    e8 fis g4 fis4. e8      | % 5
    e1\fermata       | % 6
    b4 b a g      | % 7
    fis2 e\fermata       | % 8
    b'4 cis d b      | % 9
    e2 dis\fermata       | % 10
    e8 fis g4 fis4. e8      | % 11
    e1\fermata       | % 12
    b4 b c b      | % 13
    a4. g8 g2\fermata       | % 14
    b4 cis d b      | % 15
    e d8 cis cis2      | % 16
    b\fermata  g8 a b4      | % 17
    a g8 fis fis2      | % 18
    e1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano 2"
    \set Staff.shortInstrumentName = #"S 2"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 g fis e      | % 1
    e dis e2      | % 2
    d4 a' a b      | % 3
    b a b2      | % 4
    e4 e e dis      | % 5
    e1      | % 6
    g,4 g fis e      | % 7
    e dis e2      | % 8
    d4 a' a b      | % 9
    b a b2      | % 10
    e4 e e dis      | % 11
    e1      | % 12
    g,4 a g8 d g4      | % 13
    r8 g g fis g2      | % 14
    g8 fis e4 a g      | % 15
    g8 fis b4 b ais      | % 16
    b2 b8 a g4      | % 17
    fis e e dis      | % 18
    e1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e4 b c b8 e      | % 1
    c4 b b2      | % 2
    g'8 fis e4 d d8 g      | % 3
    g a16 g fis8 e fis2      | % 4
    g8 a b c fis, g a4      | % 5
    g1      | % 6
    e4 b c b8 e      | % 7
    c4 b b2      | % 8
    g'8 fis e4 d d8 g      | % 9
    g a16 g fis8 e fis2      | % 10
    g8 a b c fis, g a4      | % 11
    g1      | % 12
    e4 fis e8 a d, g      | % 13
    e4 d8 d d2      | % 14
    d4 a' d, d8 g      | % 15
    e cis d4 g fis      | % 16
    fis2 g8 fis e d      | % 17
    c4 b8 e c4 b      | % 18
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e8 fis g e a fis g e      | % 1
    a g fis a g2      | % 2
    g4 a a g      | % 3
    c8 b c4 fis,2      | % 4
    b8 c g e b'4 b      | % 5
    b1      | % 6
    e,8 fis g e a fis g e      | % 7
    a g fis a g2      | % 8
    g4 a a g      | % 9
    c8 b c4 fis,2      | % 10
    b8 c g e b'4 b      | % 11
    b1      | % 12
    b8 e4 dis8 e a, b g      | % 13
    c4 c8 a b2      | % 14
    g4 a a b      | % 15
    ais8 cis fis b, e d cis e      | % 16
    dis2 e4 e,      | % 17
    fis g8 e a g fis a      | % 18
    gis1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    e2~ e8 dis e c      | % 1
    a4 b e2      | % 2
    g~ g8 fis g e      | % 3
    c2 b      | % 4
    g'8 a b a b4 b,      | % 5
    e1      | % 6
    e2~ e8 dis e c      | % 7
    a4 b e2      | % 8
    g~ g8 fis g e      | % 9
    c2 b      | % 10
    g'8 a b a b4 b,      | % 11
    e1      | % 12
    e2~ e8 fis g e      | % 13
    c a d4 g,2      | % 14
    g'~ g8 fis g e      | % 15
    c ais' b g e4 fis      | % 16
    b,2 e~      | % 17
    e8 dis e c a4 b      | % 18
    e1 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part ASvoiceBA { \quotearticulations \ASvoiceBA \ASvoiceAA } { \transpose g c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \ASvoiceAA } { \transpose g c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \ASvoiceAA } { \transpose g c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \ASvoiceAA } { \transpose g c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceAA \ASvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Sopran")
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
#(define output-suffix "Sopran")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceBA { \quotearticulations \ASvoiceBA \ASvoiceAA } { \transpose g c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \ASvoiceAA } { \transpose g c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \ASvoiceAA } { \transpose g c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \ASvoiceAA } { \transpose g c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
