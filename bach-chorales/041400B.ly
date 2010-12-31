
% BWV 414 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 414"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     b8 c d4 b g      | % 1
    a b c b      | % 2
    a g g4. a8      | % 3
    b4 b a8 g a4      | % 4
    g2.\fermata  b4      | % 5
    b8 c d4 b g      | % 6
    a b c b      | % 7
    a g g4. a8      | % 8
    b4 b a8 g a4      | % 9
    g2.\fermata  b4      | % 10
    a b g e      | % 11
    fis g a b      | % 12
    g g g4. a8      | % 13
    b4 b a8 g a4      | % 14
    g2.\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A"
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g a g g      | % 1
    f8 e d4 e d      | % 2
    d8 c b4 e2      | % 3
    d4 d d d8 c      | % 4
    b2. g'4      | % 5
    g a g g      | % 6
    f8 e d4 e d      | % 7
    d8 c b4 e2      | % 8
    d4 d d d8 c      | % 9
    b2. g'4      | % 10
    fis fis e8 d cis4      | % 11
    d4. cis8 d4 dis      | % 12
    b e d e8 fis      | % 13
    g4 d d d8 c      | % 14
    b2. \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T"
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d d d8 c      | % 1
    c4 g g g      | % 2
    fis g c2      | % 3
    b8 a g4 g fis      | % 4
    d2. d'4      | % 5
    d d d d8 c      | % 6
    c4 g g g      | % 7
    fis g c2      | % 8
    b8 a g4 g fis      | % 9
    d2. d'4      | % 10
    d8 c b4 b a      | % 11
    a g fis fis      | % 12
    g c b8 c b a      | % 13
    g4 g g fis      | % 14
    d2. \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B"
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g4     g' fis g e      | % 1
    f g c, g      | % 2
    d' e8 d c d e fis      | % 3
    g4 b,8 c d4 d      | % 4
    g,2. g4      | % 5
    g' fis g e      | % 6
    f g c, g      | % 7
    d' e8 d c d e fis      | % 8
    g4 b,8 c d4 d      | % 9
    g,2. g4      | % 10
    d' dis e a8 g      | % 11
    fis4 e d b      | % 12
    e8 d e fis g a g fis      | % 13
    e4 b8 c d2      | % 14
    g,2. \bar "|." 
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
