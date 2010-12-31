
% BWV 12 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 12"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Oboe"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes''4     f4. ees8 d4 g      | % 1
    f a bes\fermata  bes,      | % 2
    f' bes~ bes8 a bes c      | % 3
    f,4 ees d\fermata  bes'      | % 4
    f4. ees8 d4 g      | % 5
    f a bes\fermata  bes,      | % 6
    f' bes~ bes8 a bes c      | % 7
    f,4 ees d\fermata  bes'8 aes      | % 8
    g4 g a8 bes a g      | % 9
    f4 f g8 a bes d,      | % 10
    e4 f8 g a f d g      | % 11
    c, d c bes a4\fermata  bes      | % 12
    ees bes' a8 g f4~      | % 13
    f8 g16 a a8. bes16 bes4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     bes c d ees      | % 1
    f4. ees8 d4\fermata  g      | % 2
    f ees d ees      | % 3
    c2 bes4\fermata  f      | % 4
    bes c d ees      | % 5
    f4. ees8 d4\fermata  g      | % 6
    f ees d ees      | % 7
    c2 bes4\fermata  f'      | % 8
    g g c, c      | % 9
    f f bes,\fermata  d      | % 10
    c bes a bes      | % 11
    g2 f4\fermata  f'      | % 12
    ees d c d      | % 13
    c2 bes4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     f f f bes      | % 1
    bes a f ees8 d      | % 2
    c4 g' f g      | % 3
    f2 f4 d      | % 4
    f f f bes      | % 5
    bes a f ees8 d      | % 6
    c4 g' f g      | % 7
    f2 f4 bes      | % 8
    bes c8 bes a4 a      | % 9
    bes4. aes8 g4 f      | % 10
    e d c d      | % 11
    c2 c4 bes      | % 12
    bes8 c d ees f4 f      | % 13
    f2 d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     d c bes bes8 c      | % 1
    d4 c bes bes      | % 2
    a bes8 c d4 c8 bes      | % 3
    bes4 a bes bes      | % 4
    d c bes bes8 c      | % 5
    d4 c bes bes      | % 6
    a bes8 c d4 c8 bes      | % 7
    bes4 a bes d      | % 8
    ees8 d c4 f f      | % 9
    f8 ees d c bes4 bes8 a      | % 10
    g4 f f8 a g f      | % 11
    f4 e f f      | % 12
    g f8 g a4 bes      | % 13
    bes a f s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes4     bes' a bes g      | % 1
    d f bes, ees      | % 2
    f g8 a bes4 ees,      | % 3
    f2 bes,4 bes      | % 4
    bes' a bes g      | % 5
    d f bes, ees      | % 6
    f g8 a bes4 ees,      | % 7
    f2 bes,4 bes'      | % 8
    ees, e f ees      | % 9
    d d ees bes      | % 10
    c d8 e f4 bes,      | % 11
    c2 f,4 d'      | % 12
    g8 a bes4 f8 ees d bes      | % 13
    f2 bes4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose bes c \AvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose bes c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose bes c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose bes c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose bes c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Oboe")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose bes c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose bes c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose bes c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose bes c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose bes c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
