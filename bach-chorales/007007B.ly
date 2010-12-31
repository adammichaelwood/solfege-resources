
% BWV 70 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 70"
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
    g'2 a4      | % 1
    b2 a4      | % 2
    g fis e      | % 3
    d2.\fermata       | % 4
    g2 a4      | % 5
    b2 c4      | % 6
    b a2      | % 7
    g2.\fermata       | % 8
    g2 a4      | % 9
    b2 a4      | % 10
    g fis e      | % 11
    d2.\fermata       | % 12
    g2 a4      | % 13
    b2 c4      | % 14
    b a2      | % 15
    g2.\fermata       | % 16
    b2 c4      | % 17
    d2 c4      | % 18
    b a2      | % 19
    b2.\fermata       | % 20
    d2 d4      | % 21
    e2 d4      | % 22
    c b2      | % 23
    a2.\fermata       | % 24
    b4 c d      | % 25
    c2 b4      | % 26
    g2 a4      | % 27
    b2.      | % 28
    g2.\fermata       | % 29
    b4 c d      | % 30
    c2 b4      | % 31
    a b2      | % 32
    a2.      | % 33
    g2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    d2 d4      | % 1
    d2 d4      | % 2
    e d cis      | % 3
    a2.      | % 4
    e'2 fis4      | % 5
    g2 g4      | % 6
    g2 fis4      | % 7
    d2.      | % 8
    d2 d4      | % 9
    d2 d4      | % 10
    e d cis      | % 11
    a2.      | % 12
    e'2 fis4      | % 13
    g2 g4      | % 14
    g2 fis4      | % 15
    d2.      | % 16
    g2 g4      | % 17
    fis g a      | % 18
    g2 fis4      | % 19
    g2.      | % 20
    g2 g4      | % 21
    g2 fis4      | % 22
    g g2      | % 23
    fis2.      | % 24
    g2 a4      | % 25
    g2 fis4      | % 26
    e2 e4      | % 27
    e dis8 cis dis4      | % 28
    e2.      | % 29
    d4 e f      | % 30
    e fis g      | % 31
    fis g2      | % 32
    g4 fis8 e fis4      | % 33
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    b'2 fis4      | % 1
    g2 a4      | % 2
    a a a      | % 3
    fis2.      | % 4
    b2 d4      | % 5
    d2 c4      | % 6
    d e d      | % 7
    b2.      | % 8
    b2 fis4      | % 9
    g2 a4      | % 10
    a a a      | % 11
    fis2.      | % 12
    b2 d4      | % 13
    d2 c4      | % 14
    d e d      | % 15
    b2.      | % 16
    d2 e4      | % 17
    a,2 d4      | % 18
    d e d      | % 19
    d2.      | % 20
    b4 c d      | % 21
    c b a      | % 22
    e' d2      | % 23
    d2.      | % 24
    d2 d4      | % 25
    g, a b      | % 26
    b2 a4      | % 27
    g fis b      | % 28
    b2.      | % 29
    b2 b4      | % 30
    c2 d4      | % 31
    d2 e4      | % 32
    a, b c      | % 33
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    g4 b d      | % 1
    g2 fis4      | % 2
    cis d a      | % 3
    d2.      | % 4
    e2 d4      | % 5
    g fis e      | % 6
    d c d      | % 7
    g,2.      | % 8
    g4 b d      | % 9
    g2 fis4      | % 10
    cis d a      | % 11
    d2.      | % 12
    e2 d4      | % 13
    g fis e      | % 14
    d c d      | % 15
    g,2.      | % 16
    g'4 fis e      | % 17
    d e fis      | % 18
    g c, d      | % 19
    g,2.      | % 20
    g'4 a b      | % 21
    c c, d      | % 22
    e8 fis g4 g,      | % 23
    d'2.      | % 24
    g2 fis4      | % 25
    e2 dis4      | % 26
    e d c      | % 27
    b2.      | % 28
    e2.      | % 29
    g2 g,4      | % 30
    a2 b4      | % 31
    c b c      | % 32
    d2.      | % 33
    g,2. \bar "|."\bar "|." 
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
