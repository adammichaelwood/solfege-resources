
% BWV 112 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 112"
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
    g'8 a     b4 c d c      | % 1
    b a b b      | % 2
    b a8 b c b a4      | % 3
    g8. a16 a4 g g8 a      | % 4
    b4 c d c      | % 5
    b a b b      | % 6
    b a8 b c b a4      | % 7
    g8. a16 a4 g g      | % 8
    a b c b      | % 9
    a4. gis8 a4 a      | % 10
    b c d c      | % 11
    b a b b      | % 12
    b a8 b c b a4      | % 13
    g8. a16 a4 g s4 \bar "|." 
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
    d8 fis     g4 g fis e8 fis      | % 1
    g4 g8 fis g4 g      | % 2
    g fis8 g a g fis4      | % 3
    g~ g8 fis d4 d8 fis      | % 4
    g4 g fis e8 fis      | % 5
    g4 g8 fis g4 g      | % 6
    g fis8 g a g fis4      | % 7
    g~ g8 fis d4 d      | % 8
    d d e e      | % 9
    e8 c f e e4 fis      | % 10
    g f e e8 fis      | % 11
    g4. fis16 e dis4 e      | % 12
    d8 e fis g a g4 fis8      | % 13
    e d e d d4 s4 \bar "|." 
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
    b'8 c     d4 e a, a      | % 1
    d d d e      | % 2
    d d e8 d d c      | % 3
    b4 e8 d16 c b4 b8 c      | % 4
    d4 e a, a      | % 5
    d d d e      | % 6
    d d e8 d d c      | % 7
    b4 e8 d16 c b4 b      | % 8
    a g g gis      | % 9
    a d c a      | % 10
    d c b c8 d      | % 11
    e4 e, fis g8 a      | % 12
    b c d g, fis g16 fis e8 fis      | % 13
    g4. fis8 b4 s4 \bar "|." 
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
    g4     g'8 fis e4 d a      | % 1
    b8 c d4 g, e'      | % 2
    b8 c d4 a8 b c d      | % 3
    e d c d g,4 g      | % 4
    g'8 fis e4 d a      | % 5
    b8 c d4 g, e'      | % 6
    b8 c d4 a8 b c d      | % 7
    e d c d g,4 g'      | % 8
    fis f e d      | % 9
    c8 f d e a,4 d8 c      | % 10
    b4 a gis a      | % 11
    e'8 d c4 b e8 fis      | % 12
    g4 fis8 e dis e cis dis      | % 13
    e b c d g,4 s4 \bar "|." 
}% end of last bar in partorvoice



\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose g c \ASvoiceAA }
\part AAvoiceBA { \AAvoiceBA } { \transpose g c \AAvoiceBA }
\part ATvoiceCA { \ATvoiceCA } { \transpose g c \ATvoiceCA }
\part ABvoiceDA { \ABvoiceDA } { \transpose g c \ABvoiceDA }
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
\part AAvoiceBA { \AAvoiceBA } { \transpose g c \AAvoiceBA }
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
\part ATvoiceCA { \ATvoiceCA } { \transpose g c \ATvoiceCA }
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
\part ABvoiceDA { \ABvoiceDA } { \transpose g c \ABvoiceDA }
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
