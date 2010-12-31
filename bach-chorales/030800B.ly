
% BWV 308 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 308"
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
    bes'4     bes a8 g f4 bes      | % 1
    c d bes\fermata  f      | % 2
    bes c d ees      | % 3
    c8 bes c4 bes\fermata  bes      | % 4
    bes a8 g f4 bes      | % 5
    c d bes\fermata  f      | % 6
    bes c d ees      | % 7
    c8 bes c4 bes\fermata  bes      | % 8
    g a bes8 a g4      | % 9
    f e f\fermata  f      | % 10
    bes c d ees      | % 11
    d c d\fermata  c      | % 12
    d ees f8 ees d4      | % 13
    c8 bes c4 bes\fermata  s4 \bar "|." 
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
    f4     f ees d d      | % 1
    ees f ees c      | % 2
    f f f g      | % 3
    f2 f4 f      | % 4
    f ees d d      | % 5
    ees f ees c      | % 6
    f f f g      | % 7
    f2 f4 f      | % 8
    e f2 e8 d      | % 9
    c4 c c c      | % 10
    f8 g a4 bes c~      | % 11
    c8 bes~ bes a bes4 f      | % 12
    f g a f      | % 13
    f2 f4 s4 \bar "|." 
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
    d'4     d c~ c8 bes bes4~      | % 1
    bes8 a bes aes g4 a      | % 2
    bes ees d8 c bes4~      | % 3
    bes8 a16 g a4 d d      | % 4
    d c~ c8 bes bes4~      | % 5
    bes8 a bes aes g4 a      | % 6
    bes ees d8 c bes4~      | % 7
    bes8 a16 g a4 d d      | % 8
    c c d g,8 a16 bes      | % 9
    c8 bes16 a g8 a16 bes a4 a      | % 10
    bes ees f g8 f      | % 11
    f4 f f f8 ees      | % 12
    d c bes4 c~ c8 bes~      | % 13
    bes a16 g a4 d s4 \bar "|." 
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
    bes4     bes c d g      | % 1
    f bes, ees ees      | % 2
    d a bes ees      | % 3
    f2 bes,4 bes      | % 4
    bes c d g      | % 5
    f bes, ees ees      | % 6
    d a bes ees      | % 7
    f2 bes,4 bes~      | % 8
    bes a g c8 bes      | % 9
    a bes c4 f, f'8 ees      | % 10
    d ees d c bes bes'~ bes a      | % 11
    bes4 f bes, a'      | % 12
    bes8 a g4 f bes      | % 13
    f2 bes,4 s4 \bar "|." 
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
