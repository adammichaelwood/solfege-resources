
% BWV 365 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 365"
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
    g'4 e a b      | % 1
    c c b2\fermata       | % 2
    a8 b c4 g e      | % 3
    f e d2      | % 4
    c1\fermata       | % 5
    g'4 e a b      | % 6
    c c b2\fermata       | % 7
    a8 b c4 g e      | % 8
    f e d2      | % 9
    c1\fermata       | % 10
    e4 fis gis a      | % 11
    b b a2\fermata       | % 12
    b4 c d e      | % 13
    d4. c8 c2\fermata  \bar "|."     | % 14
    R1 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e4 c8 d e4 e      | % 1
    e a~ a gis      | % 2
    a g8 e d4~ d8 g,      | % 3
    c d~ d c c4 b      | % 4
    g1      | % 5
    e'4 c8 d e4 e      | % 6
    e a~ a gis      | % 7
    a g8 e d4~ d8 g,      | % 8
    c d~ d c c4 b      | % 9
    g1      | % 10
    c4 d~ d8 f e c      | % 11
    f d b e16 d c2      | % 12
    g'4 g g g      | % 13
    a8 f d g16 f e2 \bar "|."     | % 14
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c'4 g c b      | % 1
    a e' e2      | % 2
    c4~ c8 g~ g b g e      | % 3
    a g g4 a g8 f      | % 4
    e1      | % 5
    c'4 g c b      | % 6
    a e' e2      | % 7
    c4~ c8 g~ g b g e      | % 8
    a g g4 a g8 f      | % 9
    e1      | % 10
    g4 a b8 d c a      | % 11
    a4. gis8 a2      | % 12
    d4 e d c      | % 13
    c b g2 \bar "|."     | % 14
    R1 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c4 c8 b a4 gis      | % 1
    a8 b c d e2      | % 2
    f4 e b8 g c4      | % 3
    a8 b c4 f, g      | % 4
    c,1      | % 5
    c'4 c8 b a4 gis      | % 6
    a8 b c d e2      | % 7
    f4 e b8 g c4      | % 8
    a8 b c4 f, g      | % 9
    c,1      | % 10
    c'8 c, c'4 b c8 f      | % 11
    d b e4 a,2      | % 12
    g'8 f e d c b c e      | % 13
    f d g4 c,2 \bar "|."     | % 14
    R1 \bar "|." 
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
