
% BWV 400 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 400"
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
    \time 3/4 
    bes'4 g c      | % 1
    bes2\fermata  ees,4      | % 2
    f2 g4      | % 3
    aes2 bes4      | % 4
    g ees2\fermata       | % 5
    f4 g a      | % 6
    bes2\fermata  d4      | % 7
    c d ees      | % 8
    d c2      | % 9
    bes2.\fermata       | % 10
    bes4 b b      | % 11
    c2\fermata  d4      | % 12
    ees4. ees8 f4      | % 13
    ees d2      | % 14
    c\fermata  bes4      | % 15
    c4. d8 ees4      | % 16
    ees2 d4      | % 17
    ees2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 3/4 
    ees4 ees ees      | % 1
    d2 ees4      | % 2
    d8 c bes2      | % 3
    f' f4      | % 4
    ees bes2      | % 5
    d4 ees ees      | % 6
    d2 f4      | % 7
    f f ees      | % 8
    f g f8 ees      | % 9
    d2.      | % 10
    f4 g g8 f      | % 11
    ees2 g4      | % 12
    g g f      | % 13
    g aes g8 f      | % 14
    ees2 ees4      | % 15
    ees f g~      | % 16
    g f8 ees f aes      | % 17
    g2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 3/4 
    g'4 bes aes8 g      | % 1
    f2 bes4      | % 2
    aes2 g4      | % 3
    c bes bes      | % 4
    bes g2      | % 5
    bes4 bes c      | % 6
    f,2 bes4      | % 7
    c bes bes~      | % 8
    bes2 a4      | % 9
    f2.      | % 10
    d'4 d g,      | % 11
    g2 d'4      | % 12
    c c c      | % 13
    c~ c b      | % 14
    g2 des'4      | % 15
    c8 bes c4 bes      | % 16
    bes2 bes4      | % 17
    bes2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 3/4 
    ees4 ees aes,      | % 1
    aes2 g'4      | % 2
    f8 ees d4 ees~      | % 3
    ees d8 c d4      | % 4
    ees ees,2      | % 5
    bes'4 ees8 d c4      | % 6
    bes2 bes'4      | % 7
    a aes g      | % 8
    f ees f      | % 9
    f2.      | % 10
    bes8 aes g f ees d      | % 11
    c2 b4      | % 12
    c4. bes8 aes4      | % 13
    g f g      | % 14
    c2 g4      | % 15
    aes2 g8 aes      | % 16
    bes2.      | % 17
    ees,2. \bar "|."\bar "|." 
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
