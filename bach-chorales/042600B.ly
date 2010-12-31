
% BWV 426 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 426"
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
    c'4 b a a      | % 1
    a b c8 b a4      | % 2
    g2\fermata  r4 b      | % 3
    c b c a      | % 4
    b g a2      | % 5
    b\fermata  r4 b      | % 6
    b b a b      | % 7
    c2\fermata  g4 g      | % 8
    a b c a      | % 9
    b2\fermata  b4 c      | % 10
    d d c a      | % 11
    b2\fermata  d4 d      | % 12
    d d e d8 c      | % 13
    b2\fermata  b4 g      | % 14
    a b8 c d c b4      | % 15
    a b c2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    e8 f g4~ g8 f16 e f4      | % 1
    f8 a g4 g~ g8 f      | % 2
    f4 e r g      | % 3
    g g g f~      | % 4
    f e e2      | % 5
    e r4 e      | % 6
    fis8 a~ a g fis4 e      | % 7
    e2 d8 f~ f e~      | % 8
    e d d4 c8 g'4 fis8      | % 9
    g2 g4. fis8      | % 10
    g a b4 a8 g fis4      | % 11
    g2 a4 g8 a      | % 12
    b a g f e4 f      | % 13
    g2 g8 f e4~      | % 14
    e8 fis g4 a~ a8 g~      | % 15
    g f16 e f8 e16 d e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    g'4 g8 c c4 c      | % 1
    d8 f e d c4 c      | % 2
    c2 r4 d      | % 3
    e d c c      | % 4
    d b a8 b c a      | % 5
    gis2 r4 g      | % 6
    b8 fis'~ fis e~ e d c b      | % 7
    a2 d4~ d8 c16 b      | % 8
    c4 b8 a g e' d4      | % 9
    d2 d4 c      | % 10
    b e e d      | % 11
    d2 fis8 e d c      | % 12
    b4 b c8 b a4      | % 13
    e'2 d4 c      | % 14
    c d d d      | % 15
    d d8 g, g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    c8 d e4 f8 g f e      | % 1
    d4 g8 f e4 f      | % 2
    c2 r4 g'      | % 3
    c,8 e g f e c f e      | % 4
    d b e d c b a c      | % 5
    e2 r4 e      | % 6
    dis e fis gis      | % 7
    a2 b4 c      | % 8
    fis, g8 fis e c d4      | % 9
    g,2 g4 a      | % 10
    b gis a8 b c d      | % 11
    g,2 d''8 c b a      | % 12
    g f e d c4 d      | % 13
    e2 g,4 c8 b      | % 14
    a4 g fis g      | % 15
    d' g, c2 \bar "|."\bar "|." 
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
