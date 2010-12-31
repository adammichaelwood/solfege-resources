
% BWV 78 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 78"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d'4 d a bes      | % 1
    c bes8 a a4 g\fermata       | % 2
    bes bes a g      | % 3
    fis g a2\fermata       | % 4
    d4 d a bes      | % 5
    c bes8 a a4 g\fermata       | % 6
    bes bes a g      | % 7
    fis g a2\fermata       | % 8
    a4 bes c a      | % 9
    bes a8 g g4 f\fermata       | % 10
    bes c d d      | % 11
    ees d8 c c4 bes\fermata       | % 12
    d d c d      | % 13
    bes c d2\fermata       | % 14
    d4 d c bes      | % 15
    a a g2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'4 g a g      | % 1
    g g fis d      | % 2
    d ees ees8 d d c      | % 3
    c4 d d2      | % 4
    d4 g fis g      | % 5
    g g fis d      | % 6
    d ees ees8 d d c      | % 7
    c4 d d2      | % 8
    fis4 g g f      | % 9
    f f e c      | % 10
    f g8 a bes4 bes      | % 11
    bes bes a f      | % 12
    f f f8 ees d4      | % 13
    d g fis2      | % 14
    g4 g a g      | % 15
    g fis d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'8 c d4 d d      | % 1
    c8 d ees4 d8 c bes4      | % 2
    g g g8 fis g4      | % 3
    a bes fis2      | % 4
    bes8 c d4 d d      | % 5
    c8 d ees4 d8 c bes4      | % 6
    g g g8 fis g4      | % 7
    a bes fis2      | % 8
    d'4 d c c      | % 9
    bes8 c d4 c8 bes a4      | % 10
    bes ees f f      | % 11
    ees8 f g4 f8 ees d4      | % 12
    bes bes a a      | % 13
    g8 bes a g a2      | % 14
    bes8 c d4 ees d      | % 15
    ees d8 c b2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    g'8 a bes4 fis g      | % 1
    ees c d g,      | % 2
    g'8 f ees d c d ees4      | % 3
    a, g d'2      | % 4
    g,8 a bes c d4 g      | % 5
    ees c d g,      | % 6
    g'8 f ees d c d ees4      | % 7
    a, g d'2      | % 8
    d4 g8 f e4 f      | % 9
    d bes c f      | % 10
    d c bes bes'8 a      | % 11
    g4 ees f bes,      | % 12
    bes8 c d ees f4 fis      | % 13
    g8 f ees4 d2      | % 14
    g8 a bes4 fis g      | % 15
    c, d g,2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
