
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
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'4 b a g      | % 1
    fis2 e\fermata       | % 2
    b'4 cis d b      | % 3
    e2 dis\fermata       | % 4
    e8 fis g4 fis4. fis8      | % 5
    e1\fermata       | % 6
    b4 b a g      | % 7
    fis2 e\fermata       | % 8
    b'4 cis d b      | % 9
    e2 dis\fermata       | % 10
    e8 fis g4 fis4. fis8      | % 11
    e1\fermata       | % 12
    b4 b c b      | % 13
    a a g2\fermata       | % 14
    b4 cis d b      | % 15
    e d cis2      | % 16
    b\fermata  b4 b      | % 17
    a g fis2      | % 18
    e1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r8 g' b g g fis4 e8      | % 1
    e dis16 cis dis4 e8 dis e fis      | % 2
    g16 fis g8 r e a4. g16 fis      | % 3
    g8 a16 b a4 b r8 c      | % 4
    b a g b c a fis4      | % 5
    b8 gis e a gis2      | % 6
    r8 g b g g fis4 e8      | % 7
    e dis16 cis dis4 e8 dis e fis      | % 8
    g16 fis g8 r e a4. g16 fis      | % 9
    g8 a16 b a4 b r8 c      | % 10
    b a g b c a fis4      | % 11
    b8 gis e a gis2      | % 12
    g8 a a g g a a g      | % 13
    g4 fis g8 d e fis      | % 14
    g d g4 r8 a4 g16 fis      | % 15
    e8 g fis b b4 ais      | % 16
    b8 fis b a g2~      | % 17
    g8 fis4 e8 e d16 cis d4      | % 18
    d8 e16 d c b c8 b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r8 b' e b e dis e g,      | % 1
    c b16 a b8 a g a g fis      | % 2
    e e r4 r8 fis d' a      | % 3
    b a16 g e' dis e8 fis4 r      | % 4
    r8 dis e4. e8 d4~      | % 5
    d c16 b c8 b2      | % 6
    r8 b e b e dis e g,      | % 7
    c b16 a b8 a g a g fis      | % 8
    e e r4 r8 fis d' a      | % 9
    b a16 g e' dis e8 fis4 r      | % 10
    r8 dis e4. e8 d4~      | % 11
    d c16 b c8 b2      | % 12
    e8 fis fis e e d d e      | % 13
    e4 d8 c c b c a      | % 14
    g b e a,4 g16 fis d'4~      | % 15
    d8 cis d e16 fis g8 cis, fis e      | % 16
    dis4 r8 b e e16 dis e4~      | % 17
    e8 dis e g, c a fis b      | % 18
    b gis e a4 gis8 gis4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r8 e g e c' r r b      | % 1
    a fis b b, e4 r      | % 2
    r8 e a g fis d g4~      | % 3
    g8 fis16 e c'4 b8 c b a      | % 4
    g fis e g a fis b a      | % 5
    gis e a a, e'2      | % 6
    r8 e g e c' r r b      | % 7
    a fis b b, e4 r      | % 8
    r8 e a g fis d g4~      | % 9
    g8 fis16 e c'4 b8 c b a      | % 10
    g fis e g a fis b a      | % 11
    gis e a a, e'2      | % 12
    e8 dis dis e e fis g e      | % 13
    c cis d4 g,2      | % 14
    r8 g'4 fis16 e fis8 d g fis      | % 15
    gis ais b g e eis fis4      | % 16
    b,2 r8 e g e      | % 17
    c' r r b a fis b a      | % 18
    gis e a a, e'2 \bar "|."\bar "|." 
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
