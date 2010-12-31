
% BWV 40 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 40"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    d'4 a d e      | % 1
    f d e2\fermata       | % 2
    c4 c c bes8 a      | % 3
    g2 a\fermata       | % 4
    d4 a d e      | % 5
    f d e2\fermata       | % 6
    c4 c c bes8 a      | % 7
    g2 a\fermata       | % 8
    f'4 f e e      | % 9
    d e cis2\fermata       | % 10
    a4 b cis d      | % 11
    d cis d2\fermata       | % 12
    f4 f e e      | % 13
    d e cis2\fermata       | % 14
    a4 b cis d      | % 15
    d cis d2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    a'4 a bes bes      | % 1
    a g g2      | % 2
    a4 a8 g f4 f8 e      | % 3
    d cis d4 cis2      | % 4
    a'4 a g8 f e4      | % 5
    a8 g f4 e2      | % 6
    e4 a a g8 a      | % 7
    bes4 c fis,2      | % 8
    a4 g g a      | % 9
    a e a2      | % 10
    e4 a g a      | % 11
    a4. g8 f2      | % 12
    a4 g g g      | % 13
    f g e2      | % 14
    f4 f e d8 e      | % 15
    f e16 d e4 fis2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f'4 e f g      | % 1
    c, d c2      | % 2
    e4 f a,8 g f4      | % 3
    f e8 d e2      | % 4
    a4 d8 c bes4 b      | % 5
    cis d8 c b2      | % 6
    c8 d ees4 d d      | % 7
    d8 bes a g d'2      | % 8
    d4 d c c      | % 9
    c8 b16 a b4 e2      | % 10
    cis4 d e f      | % 11
    e2 d      | % 12
    c4 d c8 bes a4      | % 13
    a bes a2      | % 14
    d4 d g, a8 bes      | % 15
    a2 a \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    d'4 c bes g      | % 1
    a b c2      | % 2
    a8 g f e d4. c8      | % 3
    bes2 a      | % 4
    f'4 fis g gis      | % 5
    a bes8 a gis2      | % 6
    a4 g fis g8 f      | % 7
    ees2 d      | % 8
    d'8 c b g c bes a g      | % 9
    fis4 gis a2      | % 10
    g4 f e d      | % 11
    a' a, bes2      | % 12
    a4 b c cis      | % 13
    d g, g'2      | % 14
    f4 e8 d e4 f8 g      | % 15
    a4 a, d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
