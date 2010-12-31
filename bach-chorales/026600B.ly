
% BWV 266 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 266"
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
    \time 3/4 
    e4 e e      | % 1
    b'2 b4      | % 2
    a b g8 a      | % 3
    b4 a a      | % 4
    b2\fermata  g4      | % 5
    fis g a      | % 6
    b a g      | % 7
    g2 fis4      | % 8
    g2\fermata  a4      | % 9
    b2 b4      | % 10
    a2 a4      | % 11
    g2 g4      | % 12
    fis2.\fermata       | % 13
    e4 fis dis      | % 14
    e2\fermata  e4      | % 15
    a2 a4      | % 16
    b2 b4      | % 17
    g2 g4      | % 18
    fis2.\fermata       | % 19
    e8 fis g a b4      | % 20
    b2 a4      | % 21
    b2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    b4 b b      | % 1
    fis'2 g4~      | % 2
    g fis e      | % 3
    fis e8 g fis e      | % 4
    fis2 b,8 cis      | % 5
    d2 e8 fis      | % 6
    g4. fis8~ fis e      | % 7
    e d c4 d      | % 8
    d2 fis4      | % 9
    g2 g4      | % 10
    fis8 e fis4 dis      | % 11
    e8 dis e2~      | % 12
    e4 dis2      | % 13
    e4 c b      | % 14
    b2 b4      | % 15
    e d c      | % 16
    d e fis~      | % 17
    fis e8 dis e4      | % 18
    e dis2      | % 19
    b4 e fis      | % 20
    e4. g8 fis e      | % 21
    dis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    g'4 g g      | % 1
    fis dis' e      | % 2
    e b b      | % 3
    b c8 e dis e      | % 4
    dis2 e4      | % 5
    a, b c      | % 6
    d4. c8 b4      | % 7
    c4. b8 a4      | % 8
    b2 d4      | % 9
    d2 e8 d      | % 10
    c4 b b      | % 11
    b2 b4      | % 12
    b2.      | % 13
    g4 a fis      | % 14
    g2 g4~      | % 15
    g fis fis      | % 16
    g b2      | % 17
    b b4      | % 18
    b2.      | % 19
    g4 b b8 a      | % 20
    g fis e dis e4      | % 21
    fis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    e4 g e      | % 1
    dis b e      | % 2
    cis dis e      | % 3
    d c8 b c4      | % 4
    b2 e4      | % 5
    d8 c b4 a      | % 6
    g d' e      | % 7
    c a d      | % 8
    g,2 d'4      | % 9
    g fis e~      | % 10
    e dis b      | % 11
    e g e      | % 12
    b2.      | % 13
    c4 a b      | % 14
    e2 e4      | % 15
    cis d8 c b a      | % 16
    g4 g'8 fis e dis      | % 17
    e4 e,8 fis g a      | % 18
    b2.      | % 19
    e,4 e' dis      | % 20
    e8 d c b c4      | % 21
    b2. \bar "|."\bar "|." 
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
