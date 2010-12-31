
% BWV 333 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 333"
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
    \partial 4
    g'4     g8 a bes4 a8 g f4      | % 1
    bes a bes\fermata  bes      | % 2
    a g c bes      | % 3
    a2 g4\fermata  g      | % 4
    g8 a bes4 a8 g f4      | % 5
    bes a bes\fermata  bes      | % 6
    a g c bes      | % 7
    a2 g4\fermata  d'      | % 8
    bes c d c      | % 9
    bes bes a\fermata  bes      | % 10
    bes a bes a      | % 11
    g g fis\fermata  bes      | % 12
    a g c bes      | % 13
    a2 g4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     ees f8 g f4 c      | % 1
    f f f g~      | % 2
    g8 fis g4~ g8 a~ a g      | % 3
    g fis16 e fis4 d d      | % 4
    ees f8 g f4 c      | % 5
    f f f g~      | % 6
    g8 fis g4~ g8 a~ a g      | % 7
    g fis16 e fis4 d a'~      | % 8
    a8 g~ g f f4 f8. ees16      | % 9
    d8 e16 fis g4 fis g      | % 10
    f~ f8 ees d g4 fis8      | % 11
    g fis g g, d'4 g,8 g'~      | % 12
    g fis g f ees4 d      | % 13
    ees8 c a d16 c b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     bes8 c d4 c8 bes a4      | % 1
    bes8 d c16 d ees8~ ees d d4      | % 2
    ees8 d16 c bes8 b c ees d4      | % 3
    ees8 c a d16 c bes4 bes      | % 4
    bes8 c d4 c8 bes a4      | % 5
    bes8 d c16 d ees8~ ees d d4      | % 6
    ees8 d16 c bes8 b c ees d4      | % 7
    ees8 c a d16 c bes4 d      | % 8
    d c~ c8 bes~ bes a      | % 9
    bes8. c16 d4 d d      | % 10
    d c bes8 d ees d~      | % 11
    d4. c8 a4 d      | % 12
    d8. c16 bes8 a g a~ a g~      | % 13
    g fis16 e fis4 d s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'8 f     ees4 d8 ees f4. ees8      | % 1
    d bes f'4 bes, g      | % 2
    c8 d ees d ees c g bes      | % 3
    c a d4 g, g'8 f      | % 4
    ees4 d8 ees f4. ees8      | % 5
    d bes f'4 bes, g      | % 6
    c8 d ees d ees c g bes      | % 7
    c a d4 g, fis'      | % 8
    g a bes f      | % 9
    g8. a16 bes8 g d4 g      | % 10
    d8 ees f fis g bes, c d      | % 11
    ees2 d4 g,      | % 12
    d' ees~ ees8 fis, g bes      | % 13
    c a d4 g, s4 \bar "|." 
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
