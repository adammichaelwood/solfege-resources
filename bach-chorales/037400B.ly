
% BWV 374 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 374"
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
    g'4     d g g2      | % 1
    a\fermata  r4 a      | % 2
    bes8 c d4 cis2      | % 3
    d\fermata  bes4 bes      | % 4
    c c d2      | % 5
    bes\fermata  r4 d      | % 6
    c c c a      | % 7
    d c bes a      | % 8
    g2 a\fermata       | % 9
    bes4 a g fis      | % 10
    g2 a\fermata       | % 11
    r4 d bes bes      | % 12
    bes d c bes      | % 13
    a g a2      | % 14
    g\fermata  r4 g      | % 15
    d g g2      | % 16
    a\fermata  r4 a      | % 17
    bes8 c d4 cis2      | % 18
    d1\fermata  \bar "|." 
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
    d8 c     bes c d4~ d8 c16 bes a8 g      | % 1
    d'2 r4 fis      | % 2
    g a a2      | % 3
    a g8 a bes4      | % 4
    bes a bes4. aes8      | % 5
    g2 r4 bes      | % 6
    a8 g f e f g a g      | % 7
    a fis g a~ a g~ g fis      | % 8
    g8. fis16 g8 g, d'2      | % 9
    d8 e f fis g ees d4~      | % 10
    d8 c d bes d2      | % 11
    r4 fis d g      | % 12
    f~ f8 g16 f e8 fis g4~      | % 13
    g8 fis g4 g fis      | % 14
    d2 r4 d      | % 15
    d d~ d8 c16 bes a8 g      | % 16
    d'2 r4 fis      | % 17
    g a8 e e fis g4      | % 18
    fis1 \bar "|." 
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
    bes'8 a     g a bes4~ bes8 a16 g c4      | % 1
    fis,2 r4 d'      | % 2
    d8 e f4 e8 d e16 fis g8      | % 3
    fis2 d4 f      | % 4
    g f f f      | % 5
    ees2 r4 f      | % 6
    f8 bes, a g a bes c4~      | % 7
    c8 bes~ bes a bes16 c d8 d8. c16      | % 8
    bes8 d4 c8 fis,2      | % 9
    g4 c d8 c16 bes a4      | % 10
    g8 d g4~ g fis      | % 11
    r a g8 a bes c      | % 12
    d ees d bes g a bes16 c d8      | % 13
    ees d16 c bes8 c16 d ees4 d8. c16      | % 14
    bes2 r4 bes8 a      | % 15
    g a bes a g4. c8      | % 16
    fis,2 r4 d'      | % 17
    d a8 bes a2      | % 18
    a1 \bar "|." 
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
    g8 a     bes a g4 ees'2      | % 1
    d r4 d      | % 2
    g f8 g a2      | % 3
    d, g8 f ees d      | % 4
    ees c f f, bes c d bes      | % 5
    ees2 r4 bes      | % 6
    f'8 g a bes a g f e      | % 7
    fis d e fis g4 d      | % 8
    ees2 d      | % 9
    g,4 a bes8 c d c      | % 10
    bes a bes g d'2      | % 11
    r4 d g8 f ees4      | % 12
    d8 c bes4~ bes8 a g bes      | % 13
    c d ees d c a d4      | % 14
    g,2 r4 g8 a      | % 15
    bes a g f ees2      | % 16
    d r4 d'      | % 17
    g f8 g a4 a,      | % 18
    d1 \bar "|." 
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
