
% BWV 423 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 423"
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
    d'4 c bes a      | % 1
    bes a8 g fis4 d\fermata       | % 2
    d' d ees c      | % 3
    d c8 bes a2\fermata       | % 4
    d4 c bes a      | % 5
    bes a8 g fis4 d\fermata       | % 6
    d' d ees c      | % 7
    d c bes2\fermata       | % 8
    d4 ees f d      | % 9
    ees d d8 c c4\fermata       | % 10
    c d ees d      | % 11
    c4. bes8 a4 f\fermata       | % 12
    d' a bes a      | % 13
    bes c d2\fermata       | % 14
    d4 d c bes      | % 15
    a4. g8 g2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    g'8 a16 bes a4~ a8 g~ g fis      | % 1
    d g16 f ees4 d a      | % 2
    bes8 c d4 g, g'      | % 3
    a4. g8 fis2      | % 4
    fis4 g8 a~ a g~ g fis      | % 5
    g f e4 d a      | % 6
    bes8 d f4 g4. f8      | % 7
    f4 f8. ees16 d2      | % 8
    f4 g f g8 f      | % 9
    ees c f4 f f      | % 10
    f f g8 fis g4      | % 11
    g8 fis g4 f c      | % 12
    a'8 g a4~ a8 g~ g fis      | % 13
    g4 g fis2      | % 14
    g4 g~ g8 fis g4~      | % 15
    g8 fis16 e fis4 d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    bes'8 c16 d ees8 d d4~ d8. c16      | % 1
    bes8 d c bes a4 fis      | % 2
    g g'8 f ees16 d c8~ c bes      | % 3
    a d d4 d2      | % 4
    a4 g8 d' d4 d      | % 5
    d e8 a, a4 fis      | % 6
    f8 bes d c bes4 c~      | % 7
    c8 bes~ bes a f2      | % 8
    d'8 c bes4~ bes8 a bes4~      | % 9
    bes8 a bes4~ bes8 a a4      | % 10
    a bes~ bes8 a bes4      | % 11
    c c c a      | % 12
    a d d d      | % 13
    d ees a,2      | % 14
    bes4 d ees8 d e4      | % 15
    a,8 d d8. c16 bes2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    g'4. fis8 g4 d      | % 1
    g, c d d,      | % 2
    g8 a bes g c d ees4      | % 3
    fis, g d'2      | % 4
    d4 e8 fis g4 d      | % 5
    g cis, d d,      | % 6
    bes' bes'8 a g4 a      | % 7
    bes f bes,2      | % 8
    bes'8 a g4 d g      | % 9
    c, d8 ees f4 f,      | % 10
    f'8 ees d4 c g'8 f      | % 11
    ees4 e f f,      | % 12
    fis'8 e fis d g4 d      | % 13
    g8 f ees4 d2      | % 14
    g4 bes, c cis      | % 15
    d d, g2 \bar "|."\bar "|." 
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
