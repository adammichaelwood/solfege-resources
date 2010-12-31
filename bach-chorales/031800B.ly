
% BWV 318 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 318"
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
    g'4 g8 a b4 c      | % 1
    d e d2\fermata       | % 2
    e4 fis g d      | % 3
    b cis d2\fermata       | % 4
    c4 a b c      | % 5
    b a g2\fermata       | % 6
    fis4 g a b      | % 7
    a~ a8 g fis4 e      | % 8
    d1\fermata       | % 9
    g4 g8 a b4 c      | % 10
    d e d2\fermata       | % 11
    g,4 a b c      | % 12
    b a g2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d4 e8 fis g4 fis8 e      | % 1
    d fis b a fis2      | % 2
    a4 a g a      | % 3
    g8 fis e4 fis2      | % 4
    e4 d d c      | % 5
    d~ d8 c b2      | % 6
    d4 cis8 b a4 d      | % 7
    e2~ e8 d4 cis8      | % 8
    a1      | % 9
    d4 e8 fis g4 g      | % 10
    f e8 fis g2      | % 11
    g8 e d c b a g fis'      | % 12
    g4~ g8 fis d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'4 c d c      | % 1
    b16 c d4 cis8 d2      | % 2
    c8 b c d b4 a      | % 3
    d a a2      | % 4
    g4 a g8 fis g4      | % 5
    g fis g2      | % 6
    a4 g d'8 cis b4      | % 7
    e, a2 g4      | % 8
    fis1      | % 9
    g4 c d c~      | % 10
    c8 b c4 b2      | % 11
    b4 a d e8 a,      | % 12
    b c d4 b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 c, g8 g' a4      | % 1
    b8 a g a d,2      | % 2
    a'4 d, e fis      | % 3
    g a d,2      | % 4
    e4 fis g e      | % 5
    d8 c d4 g,2      | % 6
    d'4 e fis g      | % 7
    cis, a d a      | % 8
    d1      | % 9
    b4 c g' e      | % 10
    d c g'2      | % 11
    e4 fis g e      | % 12
    d2 g \bar "|."\bar "|." 
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
