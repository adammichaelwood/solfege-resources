
% BWV 299 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 299"
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
    \time 3/4 
    \partial 4
    f4     bes d8 c d bes      | % 1
    g'4 ees2      | % 2
    f4 bes, ees      | % 3
    c2 bes4\fermata       | % 4
    c ees d      | % 5
    c d8 c d bes      | % 6
    a bes bes4. c8      | % 7
    c2\fermata  f,4      | % 8
    bes d8 c d bes      | % 9
    g'4 ees2      | % 10
    f4 bes, ees      | % 11
    c2 bes4\fermata       | % 12
    c ees d      | % 13
    c d8 c d bes      | % 14
    a bes bes4. c8      | % 15
    c2\fermata  a4      | % 16
    bes c d      | % 17
    g, g'8 ees c b      | % 18
    c d d4. ees8      | % 19
    ees2\fermata  c4      | % 20
    a bes8 a g f      | % 21
    f'4. bes,8 g'4~      | % 22
    g8 f ees d c bes      | % 23
    bes2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    d4     f bes8 a bes4      | % 1
    bes g2      | % 2
    f4 g8 a bes4      | % 3
    bes a f      | % 4
    f f4. g8      | % 5
    a4 bes8 a bes4      | % 6
    ees, f8 ees f e      | % 7
    f2 d4      | % 8
    f bes8 a bes4      | % 9
    bes g2      | % 10
    f4 g8 a bes4      | % 11
    bes a f      | % 12
    f f4. g8      | % 13
    a4 bes8 a bes4      | % 14
    ees, f8 ees f e      | % 15
    f2 f4      | % 16
    f2 f4      | % 17
    ees4. g8 ees d      | % 18
    ees4 aes g      | % 19
    g2 g4      | % 20
    f g a      | % 21
    bes4. bes8 bes4~      | % 22
    bes bes a      | % 23
    f2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    bes'4     bes f'8 ees f4      | % 1
    ees bes8 a bes c      | % 2
    d2 g4      | % 3
    f4. ees8 d4      | % 4
    c8 bes c a bes4      | % 5
    c f, f      | % 6
    c' bes f8 g      | % 7
    a2 bes4      | % 8
    bes f'8 ees f4      | % 9
    ees bes8 a bes c      | % 10
    d2 g4      | % 11
    f4. ees8 d4      | % 12
    c8 bes c a bes4      | % 13
    c f, f      | % 14
    c' bes f8 g      | % 15
    a2 c4      | % 16
    f, a bes      | % 17
    bes4. bes8 c4~      | % 18
    c8 c c4 b      | % 19
    c2 c4      | % 20
    c2 c4      | % 21
    d4. d8 ees4      | % 22
    bes f' ees8 d      | % 23
    d2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    bes'4     d, c bes      | % 1
    ees g8 f g ees      | % 2
    bes' a g4 ees      | % 3
    f2 bes,4      | % 4
    a'8 g a f bes4      | % 5
    f ees d      | % 6
    c d8 c d bes      | % 7
    f2 bes'4      | % 8
    d, c bes      | % 9
    ees g8 f g ees      | % 10
    bes' a g4 ees      | % 11
    f2 bes,4      | % 12
    a'8 g a f bes4      | % 13
    f ees d      | % 14
    c d8 c d bes      | % 15
    f2 f'8 ees      | % 16
    d4 ees8 d c bes      | % 17
    ees4. ees8 aes4~      | % 18
    aes8 g f4 g      | % 19
    c,2 ees4      | % 20
    f2 ees4      | % 21
    d g8 f ees d      | % 22
    ees4 f f,      | % 23
    bes2 s4 \bar "|." 
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
