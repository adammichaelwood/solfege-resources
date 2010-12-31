
% BWV 384 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 384"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    ees'4 d8 c     g'4 f8 ees d4 ees8 f      | % 1
    b,2\fermata  c8 d ees4      | % 2
    aes, g f bes      | % 3
    g2\fermata  ees'4 d8 c      | % 4
    g'4 f8 ees d4 ees8 f      | % 5
    b,2\fermata  c8 d ees4      | % 6
    aes, g f bes      | % 7
    g2\fermata  g'4 bes,      | % 8
    a bes ees d8 c      | % 9
    d2\fermata  d4 ees8 f      | % 10
    b,4 g' ees d8. c16      | % 11
    c2\fermata  s2 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    g'4 f     ees8 f g4 aes g8 f      | % 1
    g2 g4 g      | % 2
    f bes, bes f'      | % 3
    ees2 g4 f      | % 4
    ees8 f g4 aes g8 f      | % 5
    g2 g4 g      | % 6
    f bes, bes f'      | % 7
    ees2 ees4 ees      | % 8
    f f g f      | % 9
    f2 f4 f      | % 10
    g g g f8. ees16      | % 11
    ees2 s2 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    c'4 b     c c c b8 c      | % 1
    d2 c4 c      | % 2
    c8 d ees4 ees d      | % 3
    bes2 c4 b      | % 4
    c c c b8 c      | % 5
    d2 c4 c      | % 6
    c8 d ees4 ees d      | % 7
    bes2 bes4 bes      | % 8
    c bes bes a      | % 9
    bes2 bes4 c      | % 10
    d c c4. b8      | % 11
    g2 s2 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    \partial 2
    c4 d     ees c f g8 aes      | % 1
    g2 ees8 d c4      | % 2
    f g8 aes bes4 bes,      | % 3
    ees2 c4 d      | % 4
    ees c f g8 aes      | % 5
    g2 ees8 d c4      | % 6
    f g8 aes bes4 bes,      | % 7
    ees2 ees4 g      | % 8
    f8 ees d4 c f      | % 9
    bes,2 bes'4 aes      | % 10
    g8 f ees f g4 g,      | % 11
    c2 s2 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
