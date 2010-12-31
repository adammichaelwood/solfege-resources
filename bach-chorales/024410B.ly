
% BWV 244 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 244"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c'4     aes bes c8 des ees4      | % 1
    des2 c4\fermata  c8 des      | % 2
    ees4 ees bes c      | % 3
    aes2 g4\fermata  ees      | % 4
    aes bes c c      | % 5
    bes2.\fermata  c4      | % 6
    aes bes c8 des ees4      | % 7
    des2 c4\fermata  c8 des      | % 8
    ees4 ees bes c      | % 9
    aes2 g4\fermata  ees      | % 10
    aes bes c des      | % 11
    c bes aes\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    aes'4     f g aes8 bes c4      | % 1
    c bes aes aes      | % 2
    aes8 g aes f g f ees4      | % 3
    ees d ees bes      | % 4
    ees des c8 des ees4      | % 5
    ees2. g4      | % 6
    f ees ees f      | % 7
    f8 ees f g a4 aes      | % 8
    bes aes8 g f4 g      | % 9
    g f e ees      | % 10
    ees8 f ees des c ees f g      | % 11
    aes4 g ees s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    ees'4     des des ees8 des c bes      | % 1
    aes4 ees' ees f      | % 2
    ees ees ees g,      | % 3
    aes8 g aes4 bes g8 f      | % 4
    ees4 f8 g aes4 aes      | % 5
    g2. c4      | % 6
    c8 des c bes aes bes c4      | % 7
    bes8 c des ees f4 f      | % 8
    ees8 des c4 d g,      | % 9
    c2 c4 c      | % 10
    c8 des c bes aes4 aes      | % 11
    f' bes,8 c16 des c4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    aes'4     des8 c bes4 aes4. g8      | % 1
    f4 g aes f      | % 2
    c8 bes c des ees des c4      | % 3
    f2 ees4 des      | % 4
    c bes aes8 bes c des      | % 5
    ees2. e4      | % 6
    f g aes a      | % 7
    bes bes, f' f      | % 8
    g aes aes8 g f e      | % 9
    f g aes bes c4 c,      | % 10
    f g aes8 g f ees      | % 11
    des4 ees aes, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose as c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose as c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose as c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose as c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose as c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose as c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose as c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose as c \ABvoiceDA }
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
