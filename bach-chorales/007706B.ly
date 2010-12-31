
% BWV 77 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 77"
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
    \partial 4
    a'4     bes a g d'      | % 1
    d8 c bes4 a2\fermata       | % 2
    r4 c bes a      | % 3
    g a8 bes16 c bes4 a      | % 4
    g2.\fermata  a4      | % 5
    bes a g d'      | % 6
    d8 c bes4 a2\fermata       | % 7
    r4 c bes a      | % 8
    g a8 bes16 c bes4 a      | % 9
    g2.\fermata  g4      | % 10
    a f e d8 e      | % 11
    f4 g a2\fermata       | % 12
    r4 a g bes      | % 13
    a bes g fis      | % 14
    g2.\fermata  g4      | % 15
    d' bes c d      | % 16
    c bes a\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    e4     fis8 g4 fis8 g a bes4      | % 1
    a4. g8 fis2      | % 2
    r4 fis g f      | % 3
    ees8 f g4 g fis      | % 4
    d2. fis4      | % 5
    g fis g8 a bes4      | % 6
    a4. g8 fis2      | % 7
    r4 fis g f      | % 8
    ees8 f g4 g fis      | % 9
    d2. d4      | % 10
    e d cis d      | % 11
    c d8 e f2      | % 12
    r4 f f8 ees d g~      | % 13
    g fis g4 g8 c, d4      | % 14
    d2. d4      | % 15
    d g f f8 g      | % 16
    a4 g d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    cis'4     d d d d      | % 1
    d d d2      | % 2
    r4 d d d8 c      | % 3
    bes4 ees d4. c8      | % 4
    bes2. d4      | % 5
    d d d d      | % 6
    d d d2      | % 7
    r4 d d d8 c      | % 8
    bes4 ees d4. c8      | % 9
    bes2. bes4      | % 10
    a a a8 g f g      | % 11
    a4 bes c2      | % 12
    r4 c c bes8. c16      | % 13
    d4 d8 c bes a16 g a4      | % 14
    bes2. bes4      | % 15
    a d c bes      | % 16
    ees e fis s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     d, d'8 c bes4 a8 g      | % 1
    fis4 g d2      | % 2
    r4 a bes8 c d4      | % 3
    ees d8 c d2      | % 4
    g,2. d'4      | % 5
    g d'8 c bes4 a8 g      | % 6
    fis4 g d2      | % 7
    r4 a bes8 c d4      | % 8
    ees d8 c d2      | % 9
    g,2. g'4      | % 10
    cis, d a bes      | % 11
    a g f2      | % 12
    r4 f c' g      | % 13
    d' bes ees d      | % 14
    g,2. g'4      | % 15
    fis g a bes      | % 16
    c cis d s4 \bar "|." 
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
