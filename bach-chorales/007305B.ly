
% BWV 73 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 73"
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
    g'4     c d ees f      | % 1
    d2 bes4\fermata  bes      | % 2
    c c d d      | % 3
    g,2.\fermata  g4      | % 4
    c d ees f      | % 5
    d2 bes4\fermata  bes      | % 6
    c c d d      | % 7
    g,2.\fermata  g'4      | % 8
    f ees ees d      | % 9
    ees2.\fermata  d4      | % 10
    ees f g g      | % 11
    f2 d4\fermata  d      | % 12
    ees d c c      | % 13
    d c bes\fermata  aes      | % 14
    g c c b      | % 15
    c2.\fermata  s4 \bar "|." 
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
    ees4     g g g f      | % 1
    f8 g a4 g g      | % 2
    ees f f8 aes g f      | % 3
    ees2. ees4      | % 4
    g g g f      | % 5
    f8 g a4 g g      | % 6
    ees f f8 aes g f      | % 7
    ees2. c'4      | % 8
    c c bes bes      | % 9
    bes2. bes4      | % 10
    bes aes bes c8 bes      | % 11
    a g a4 f bes      | % 12
    bes g ees aes~      | % 13
    aes8 g a4 g f      | % 14
    ees f g g      | % 15
    g2. s4 \bar "|." 
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
    c'4     ees d c c      | % 1
    bes a d ees      | % 2
    c aes g g      | % 3
    c2. c4      | % 4
    ees d c c      | % 5
    bes a d ees      | % 6
    c aes g g      | % 7
    c2. ees4      | % 8
    f aes g f      | % 9
    g2. f4      | % 10
    ees4. d8~ d bes ees4      | % 11
    ees d8 c bes4 f'      | % 12
    ees bes c8 d ees4      | % 13
    f ees d bes      | % 14
    bes c8 d ees d16 c d8 d      | % 15
    e2. s4 \bar "|." 
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
    c4     c' b c a      | % 1
    bes fis g ees      | % 2
    aes f b, b      | % 3
    c2. c4      | % 4
    c' b c a      | % 5
    bes fis g ees      | % 6
    aes f b, b      | % 7
    c2. c'4      | % 8
    aes f bes bes,      | % 9
    ees2. bes'4      | % 10
    g f ees c      | % 11
    f2 bes,4 bes'      | % 12
    g ees aes g      | % 13
    f fis g d      | % 14
    ees aes g g,      | % 15
    c2. s4 \bar "|." 
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
