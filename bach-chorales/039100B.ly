
% BWV 391 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 391"
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
    g'4 g a      | % 1
    b g2\fermata       | % 2
    a4 a b      | % 3
    c2 b4      | % 4
    c2.\fermata       | % 5
    b4 b cis      | % 6
    d a2\fermata       | % 7
    b4 cis d      | % 8
    d2 cis4      | % 9
    d2.\fermata       | % 10
    a4 a b      | % 11
    c d e      | % 12
    d2 c4      | % 13
    b2 a4\fermata       | % 14
    e'4. d8 c4      | % 15
    d4. c8 b4      | % 16
    c c b      | % 17
    a2 g4\fermata       | % 18
    e'4. d8 c4      | % 19
    d4. c8 b4      | % 20
    c c b      | % 21
    a2 g4\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    d4 e fis      | % 1
    g8 f e2      | % 2
    f f4      | % 3
    g2 g4      | % 4
    g2.      | % 5
    g4 g g      | % 6
    fis fis2      | % 7
    g4 g fis8 g      | % 8
    a4 g8 fis g e      | % 9
    fis2.      | % 10
    fis4 fis gis      | % 11
    a4. gis8 a g      | % 12
    fis4 gis a      | % 13
    a gis e      | % 14
    e8 fis g4 a      | % 15
    a8 g fis4 g      | % 16
    g a g      | % 17
    g fis d      | % 18
    e8 fis g4 a      | % 19
    a8 g fis4 g      | % 20
    g a g      | % 21
    g fis d \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    b'4 b d      | % 1
    d c2      | % 2
    c d4      | % 3
    e2 d8 f      | % 4
    e2.      | % 5
    d4 d e      | % 6
    a, d2      | % 7
    d4 a d~      | % 8
    d8 c b4 a      | % 9
    a2.      | % 10
    d4 d d      | % 11
    e d c8 b      | % 12
    a4 b c8 e      | % 13
    f4 e8 d c4      | % 14
    g' c,8 d e4      | % 15
    d2 d4      | % 16
    e d d      | % 17
    e d8 c b4      | % 18
    g' c,8 d e4      | % 19
    d2 d4      | % 20
    e d d      | % 21
    e d8 c b4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 3/4 
    g'8 fis e4 d      | % 1
    g, c2      | % 2
    f4. e8 d4      | % 3
    c e g      | % 4
    c,2.      | % 5
    g'4 g8 fis e4      | % 6
    d2 d4      | % 7
    g a b      | % 8
    fis g a      | % 9
    d,2.      | % 10
    d4 c b      | % 11
    a b c~      | % 12
    c b a      | % 13
    d e a,      | % 14
    c'4. b8 a g      | % 15
    fis e d4 g8 fis      | % 16
    e4 fis g      | % 17
    c, d g,      | % 18
    c'4. b8 a g      | % 19
    fis e d4 g8 fis      | % 20
    e4 fis g      | % 21
    c, d g, \bar "|."\bar "|." 
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
