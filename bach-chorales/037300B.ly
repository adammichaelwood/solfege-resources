
% BWV 373 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 373"
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
    b'4 a8 g a4 d      | % 1
    b g a2\fermata       | % 2
    g4 g g g      | % 3
    a b a2      | % 4
    g1\fermata       | % 5
    b4 a8 g a4 d      | % 6
    b g a2\fermata       | % 7
    g4 g g g      | % 8
    a b a2      | % 9
    g1\fermata       | % 10
    d4 d e fis      | % 11
    g a fis d\fermata       | % 12
    g g g g      | % 13
    a b a2      | % 14
    g1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d4 d d fis      | % 1
    d d8 e fis2      | % 2
    e4 f e d      | % 3
    e8 fis g4 g fis      | % 4
    d1      | % 5
    d4 d d fis      | % 6
    d d8 e fis2      | % 7
    e4 f e d      | % 8
    e8 fis g4 g fis      | % 9
    d1      | % 10
    b4 a b8 cis d4      | % 11
    e e d a      | % 12
    d8 b c d e4 e      | % 13
    e8 fis g4 g fis      | % 14
    d1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'8 a b4 a a      | % 1
    b8 c d4 d2      | % 2
    b4 b c g      | % 3
    c d e8 c a d16 c      | % 4
    b1      | % 5
    g8 a b4 a a      | % 6
    b8 c d4 d2      | % 7
    b4 b c g      | % 8
    c d e8 c a d16 c      | % 9
    b1      | % 10
    g4 a g a      | % 11
    b a a8 g fis4      | % 12
    g4. f8 e fis g a16 b      | % 13
    c4 d d4. c8      | % 14
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g4 g'~ g8 fis e d      | % 1
    g a b g d2      | % 2
    e,8 e'4 d8 c, c'4 b8      | % 3
    a4 g8 b c a d4      | % 4
    g,1      | % 5
    g4 g'~ g8 fis e d      | % 6
    g a b g d2      | % 7
    e,8 e'4 d8 c, c'4 b8      | % 8
    a4 g8 b c a d4      | % 9
    g,1      | % 10
    g8 g'4 fis8 e4 d~      | % 11
    d cis d d      | % 12
    b8 g a b c d c b      | % 13
    a4 g d'2      | % 14
    g,1 \bar "|."\bar "|." 
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
