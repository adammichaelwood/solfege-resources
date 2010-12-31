
% BWV 379 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 379"
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
    b'4 b b d      | % 1
    c c b2\fermata       | % 2
    b4 b a b      | % 3
    c b a2      | % 4
    g1\fermata       | % 5
    b4 b b d      | % 6
    c c b2\fermata       | % 7
    b4 b a b      | % 8
    c b a2      | % 9
    g1\fermata       | % 10
    b4 b a a      | % 11
    g g fis2\fermata       | % 12
    e'4 d c b      | % 13
    a a g2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 g8 a g4 g~      | % 1
    g8 fis16 e fis4 g2      | % 2
    g4 g~ g8 fis g4      | % 3
    a~ a8 g~ g fis16 e fis4      | % 4
    d1      | % 5
    g4 g8 a g4 g~      | % 6
    g8 fis16 e fis4 g2      | % 7
    g4 g~ g8 fis g4      | % 8
    a~ a8 g~ g fis16 e fis4      | % 9
    d1      | % 10
    g4 g g fis~      | % 11
    fis e dis2      | % 12
    e8 fis g4~ g8 fis g4~      | % 13
    g8 fis16 e fis4 d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    d'4 e8 fis e4 d      | % 1
    e8 c a d d2      | % 2
    d4 d d d      | % 3
    e8 d d4 e8 a, d c      | % 4
    b1      | % 5
    d4 e8 fis e4 d      | % 6
    e8 c a d d2      | % 7
    d4 d d d      | % 8
    e8 d d4 e8 a, d c      | % 9
    b1      | % 10
    d4 d d4. c8      | % 11
    b4 b b2      | % 12
    g'8 a d,4 e8 c d4      | % 13
    e8 a, d c b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'8 fis e dis e d c b      | % 1
    a4 d g,2      | % 2
    g8 a b c d4 g~      | % 3
    g8 fis g b, c4 d      | % 4
    g,1      | % 5
    g'8 fis e dis e d c b      | % 6
    a4 d g,2      | % 7
    g8 a b c d4 g~      | % 8
    g8 fis g b, c4 d      | % 9
    g,1      | % 10
    g8 a b c d e fis dis      | % 11
    e fis g a b2      | % 12
    c,8 c'4 b8 a, a'4 g8      | % 13
    c,4 d g,2 \bar "|."\bar "|." 
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
