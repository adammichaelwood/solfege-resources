
% BWV 343 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 343"
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
    \partial 4
    g'4     a2 g4      | % 1
    f2 d4      | % 2
    f2.      | % 3
    g2\fermata  a4      | % 4
    bes2 d4      | % 5
    c2 bes4      | % 6
    a2.      | % 7
    g2\fermata  g4      | % 8
    a2 g4      | % 9
    f2 d4      | % 10
    f2.      | % 11
    g2\fermata  a4      | % 12
    bes2 d4      | % 13
    c2 bes4      | % 14
    a2.      | % 15
    g2\fermata  c4      | % 16
    c2 c4      | % 17
    d2 c4      | % 18
    bes a g      | % 19
    f2\fermata  f4      | % 20
    bes2 a4      | % 21
    bes2 c4      | % 22
    d2 c4      | % 23
    bes4. a8 g4      | % 24
    fis2\fermata  a4      | % 25
    bes2 d4      | % 26
    c2 bes4      | % 27
    a2.      | % 28
    g2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d8 e     f2~ f8 e      | % 1
    d4 a bes      | % 2
    c8 ees d c b4      | % 3
    e2 e8 fis      | % 4
    g fis g2~      | % 5
    g4. fis8 g4      | % 6
    g2 fis4      | % 7
    d2 d8 e      | % 8
    f2~ f8 e      | % 9
    d4 a bes      | % 10
    c8 ees d c b4      | % 11
    e2 e8 fis      | % 12
    g fis g2~      | % 13
    g4. fis8 g4      | % 14
    g2 fis4      | % 15
    d2 g4~      | % 16
    g8 f~ f e f4~      | % 17
    f8 e f g a g      | % 18
    f2~ f8 e      | % 19
    c2 d4      | % 20
    g2 a4~      | % 21
    a8 d, g4 a      | % 22
    bes8 a g4. fis8      | % 23
    g4 d4. c8      | % 24
    d2 fis4      | % 25
    g2 f4      | % 26
    e8 d e fis g4      | % 27
    g2 fis4      | % 28
    d2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    bes'4     c2~ c8. bes16      | % 1
    a4 f4. g8      | % 2
    a2 g8 f      | % 3
    c'2 c4      | % 4
    d4. c8 bes a      | % 5
    g fis g4 d'      | % 6
    ees d8 a d c      | % 7
    bes2 bes4      | % 8
    c2~ c8. bes16      | % 9
    a4 f4. g8      | % 10
    a2 g8 f      | % 11
    c'2 c4      | % 12
    d4. c8 bes a      | % 13
    g fis g4 d'      | % 14
    ees d8 a d c      | % 15
    bes2 c8 bes      | % 16
    a4 bes c~      | % 17
    c bes c      | % 18
    d2 g,8 c      | % 19
    a2 bes8 c      | % 20
    d bes ees4. d8      | % 21
    d2 ees4      | % 22
    f ees8 d ees c      | % 23
    d ees f f, g4      | % 24
    a2 d4~      | % 25
    d8 bes ees4 d8 bes      | % 26
    g4 c8 a bes d      | % 27
    ees d c bes c a      | % 28
    b2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g'4     f2 c4      | % 1
    d2 bes4      | % 2
    a2 d4      | % 3
    c2 a4      | % 4
    g2 bes4      | % 5
    ees2 d4      | % 6
    c d d,      | % 7
    g2 g'4      | % 8
    f2 c4      | % 9
    d2 bes4      | % 10
    a2 d4      | % 11
    c2 a4      | % 12
    g2 bes4      | % 13
    ees2 d4      | % 14
    c d d,      | % 15
    g2 e'4      | % 16
    f g a      | % 17
    bes2 f8 e      | % 18
    d c bes4 c      | % 19
    f,2 bes8 a      | % 20
    g4 g' fis      | % 21
    g f8 ees d c      | % 22
    bes4 bes' a      | % 23
    g f ees      | % 24
    d2 d4      | % 25
    g4. ees8 bes'4~      | % 26
    bes a g      | % 27
    c, a d      | % 28
    g,2 s4 \bar "|." 
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
