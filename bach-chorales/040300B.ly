
% BWV 403 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 403"
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
    \time 3/4 
    g'4 g g      | % 1
    g2 ees4      | % 2
    d2 d4      | % 3
    a'2\fermata  bes4      | % 4
    a2 g4      | % 5
    f2 e4      | % 6
    d2\fermata  d4      | % 7
    g2 g4      | % 8
    fis2 fis4      | % 9
    g2 g4      | % 10
    a2\fermata  a4      | % 11
    a2 a4      | % 12
    bes2 bes4      | % 13
    a2.\fermata       | % 14
    d2 c4      | % 15
    bes2 a4      | % 16
    g a b      | % 17
    c2\fermata  a4      | % 18
    bes2 a4      | % 19
    g2 fis4      | % 20
    g2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    d8 c d4 b      | % 1
    c b c8 a      | % 2
    d c d4 d      | % 3
    d2 d4      | % 4
    cis d e~      | % 5
    e8 cis d4. cis8      | % 6
    a2 a4      | % 7
    d2 d4      | % 8
    d ees d      | % 9
    d c8 bes c4      | % 10
    fis,2 fis'4      | % 11
    fis2 fis4      | % 12
    g2 g4      | % 13
    g fis8 e fis4      | % 14
    fis8 g a2~      | % 15
    a4 g d      | % 16
    g f2      | % 17
    g fis4      | % 18
    g f ees      | % 19
    ees4. ees8 d4      | % 20
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    bes'8 a g4. f8      | % 1
    ees f g4 fis      | % 2
    g8 a bes4 bes      | % 3
    a2 g4      | % 4
    a2 a4      | % 5
    a bes8 a g a      | % 6
    fis2 fis4      | % 7
    g8 a bes2      | % 8
    a8 bes c4 a      | % 9
    g4. bes8 a g      | % 10
    d'2 d4      | % 11
    d2 d4      | % 12
    d2 d4      | % 13
    d2.      | % 14
    a4 d2      | % 15
    d d4~      | % 16
    d c d      | % 17
    ees2 d4      | % 18
    d2 c4      | % 19
    c8 bes a4. c8      | % 20
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    g8 a bes4 g      | % 1
    c8 d ees4 c      | % 2
    bes8 a g4 g'      | % 3
    fis2 g4~      | % 4
    g f8 e d cis      | % 5
    d4 g, a      | % 6
    d,2 d'8 c      | % 7
    bes4 g8 a bes c      | % 8
    d4 a8 bes c a      | % 9
    bes4 ees8 d ees4      | % 10
    d2 d,4      | % 11
    d'8 ees d c bes a      | % 12
    g fis g a bes c      | % 13
    d2.      | % 14
    d8 e fis e fis d      | % 15
    g fis g a g f      | % 16
    ees d ees f ees d      | % 17
    c2 d4      | % 18
    g8 g, a bes c d      | % 19
    ees d c4 d      | % 20
    g,2. \bar "|."\bar "|." 
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
