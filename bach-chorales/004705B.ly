
% BWV 47 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 47"
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
    g'4     g8 a bes4 a d8 d      | % 1
    c4 bes a\fermata  bes8 a      | % 2
    g4 d' c d      | % 3
    g,8 a b4 c\fermata  bes      | % 4
    a d c bes      | % 5
    a2\fermata  r4 g8 a      | % 6
    bes4 bes c c      | % 7
    d d bes\fermata  d      | % 8
    c bes a g8 a      | % 9
    bes4 a g\fermata  s4 \bar "|." 
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
    d4     ees d8 e fis4 g8 g      | % 1
    a4 g fis g      | % 2
    g f8 g a4 b      | % 3
    c g8 g g4 g      | % 4
    fis g a d,      | % 5
    d2 r4 d      | % 6
    g g8 f ees4 f8 g      | % 7
    aes4 g8 f g4 g      | % 8
    g8 fis g4 fis g      | % 9
    g fis d s4 \bar "|." 
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
    g'4     c bes8 c d4 d8 d      | % 1
    d4 d d d8 c      | % 2
    bes c d ees f4 f      | % 3
    g d8 d ees4 d      | % 4
    d d fis, g      | % 5
    fis2 r4 bes8 c      | % 6
    d4 des c8 bes aes g      | % 7
    f4 f' ees f      | % 8
    ees e a,8 bes c4      | % 9
    d8 e a, c b4 s4 \bar "|." 
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
    b4     c8 c g4 d' bes'8 bes      | % 1
    fis4 g d g,      | % 2
    g'8 a bes4 f d      | % 3
    ees8 f g4 c, g'      | % 4
    d8 c bes4 a g      | % 5
    d'2 r4 g,      | % 6
    g'8 f ees4 aes8 g f4      | % 7
    bes bes, ees b      | % 8
    c cis d ees      | % 9
    d8 cis d4 g, s4 \bar "|." 
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
