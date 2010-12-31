
% BWV 330 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 330"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a'4 e8 fis gis4 a      | % 1
    b8 c16 d c8 b b4 a\fermata       | % 2
    c b a b      | % 3
    c d e2\fermata       | % 4
    a,4 e8 fis gis4 a      | % 5
    b8 c16 d c8 b b4 a\fermata       | % 6
    c b a b      | % 7
    c d e2\fermata       | % 8
    e4 f g c,      | % 9
    f e d c\fermata       | % 10
    d d e a,      | % 11
    d c8 b b2      | % 12
    a2.\fermata  r4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e8 d c4 b a      | % 1
    e' e8 f e4 e      | % 2
    a8 g f e e a4 gis8      | % 3
    a e a b16 a gis2      | % 4
    e8 d c4 b a      | % 5
    e' e8 f e4 e      | % 6
    a8 g f e e a4 gis8      | % 7
    a e a b16 a gis2      | % 8
    a4 a g a8 g      | % 9
    a d g,4. g16 f e4      | % 10
    g8 a b4~ b8 gis a g      | % 11
    f e e f e4. d8      | % 12
    cis2. r4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'8 b a4 e8 e' d c      | % 1
    b gis a4~ a8 gis c4      | % 2
    e d c f,8 e      | % 3
    e a4 gis16 a b2      | % 4
    c8 b a4 e8 e' d c      | % 5
    b gis a4~ a8 gis c4      | % 6
    e d c f,8 e      | % 7
    e a4 gis16 a b2      | % 8
    c4 d~ d8 c c4      | % 9
    c8 b c4. b8 g4      | % 10
    b8 d g f e4. d8      | % 11
    c b a4 a gis      | % 12
    e2. r4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    a8 b c d e4 fis      | % 1
    gis8 e a d, e e, a4      | % 2
    a8 a'4 gis8 a f d e      | % 3
    a, g f4 e2      | % 4
    a8 b c d e4 fis      | % 5
    gis8 e a d, e e, a4      | % 6
    a8 a'4 gis8 a f d e      | % 7
    a, g f4 e2      | % 8
    a8 a' g f e4 f8 e      | % 9
    d4 e8 f g g, c4      | % 10
    g'8 f e d c d c b      | % 11
    a gis a d e4 e,      | % 12
    a2. r4 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
