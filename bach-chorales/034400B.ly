
% BWV 344 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 344"
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
    g'2 g4      | % 1
    d'2 d4      | % 2
    c2 bes4      | % 3
    a2 a4\fermata       | % 4
    d2 f4      | % 5
    ees2 d4      | % 6
    c2 c4      | % 7
    bes2.\fermata       | % 8
    a2 bes4      | % 9
    c2 c4      | % 10
    bes2 c4      | % 11
    a2 a4\fermata       | % 12
    d2 d4      | % 13
    c2 bes4      | % 14
    a2 a4      | % 15
    g2.\fermata       | % 16
    bes2 bes4      | % 17
    bes2 bes4      | % 18
    ees2 d4      | % 19
    c2 c4\fermata       | % 20
    c2 d4      | % 21
    bes2 c4      | % 22
    a2 a4      | % 23
    g2 g4\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    d2 d4      | % 1
    d8 e fis4 g      | % 2
    a2 a8 g      | % 3
    g4 fis8 e fis4      | % 4
    f2 c'4      | % 5
    bes c~ c8 bes      | % 6
    bes2 a4      | % 7
    f2.      | % 8
    fis2 g4~      | % 9
    g fis8 g a4~      | % 10
    a g8 fis g4~      | % 11
    g fis8 e fis4      | % 12
    fis8 g a4 g~      | % 13
    g fis g      | % 14
    g2 fis4      | % 15
    d2.      | % 16
    g2 g4      | % 17
    g2 bes4      | % 18
    bes a bes~      | % 19
    bes a8 g a4      | % 20
    a2 a4      | % 21
    g2 g4      | % 22
    g2 fis4      | % 23
    d2 d4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    bes'2 bes4      | % 1
    a d8 c bes4      | % 2
    ees d d      | % 3
    d2 d4      | % 4
    f2 f4      | % 5
    g f f      | % 6
    g f4. ees8      | % 7
    d2.      | % 8
    d2 d4      | % 9
    ees2~ ees8 d      | % 10
    d2 ees4      | % 11
    d2 d4      | % 12
    a d8 c bes4      | % 13
    c d d      | % 14
    ees8 d c ees d c      | % 15
    bes2.      | % 16
    d2 d4      | % 17
    ees2 f4      | % 18
    ees c f      | % 19
    f2 f4      | % 20
    f2 fis4      | % 21
    d2 c8 d      | % 22
    ees d c ees d c      | % 23
    b2 b4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    g'8 a bes4 g      | % 1
    fis8 e d4 g~      | % 2
    g fis g      | % 3
    d2 d4      | % 4
    bes bes' a      | % 5
    g a bes      | % 6
    ees, f f,      | % 7
    bes2.      | % 8
    d4 c bes      | % 9
    a g fis      | % 10
    g g' c,      | % 11
    d2 d4      | % 12
    d8 e fis4 g      | % 13
    a d, g      | % 14
    c, a d      | % 15
    g,2.      | % 16
    g4 g' f      | % 17
    ees, ees' d      | % 18
    c, c' bes      | % 19
    f2 f'4      | % 20
    f ees d      | % 21
    g f ees8 d      | % 22
    c4 a d      | % 23
    g,2 g4 \bar "|."\bar "|." 
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
