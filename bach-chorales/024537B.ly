
% BWV 245 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 245"
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
    f'4 f f f      | % 1
    ees des c2\fermata       | % 2
    des4 ees f f      | % 3
    ees des c2\fermata       | % 4
    bes4 c des bes      | % 5
    bes8 aes ges4 f2\fermata       | % 6
    ges4 aes bes bes      | % 7
    aes ges f2\fermata       | % 8
    bes4 a bes c      | % 9
    des c8 bes bes2\fermata       | % 10
    des4 ees f f      | % 11
    ees des8 c c2\fermata       | % 12
    bes4 c des8 c bes4      | % 13
    bes8 aes ges4 f2\fermata       | % 14
    ges4 aes bes bes      | % 15
    aes ges f2~      | % 16
    f1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    a'4 a bes c      | % 1
    bes bes a2      | % 2
    f4 ges aes aes      | % 3
    ges f f2      | % 4
    f4 f f ges      | % 5
    f ees d2      | % 6
    ees4 ees fes fes      | % 7
    ees2 d      | % 8
    f4 ees f ges      | % 9
    f f ges2      | % 10
    aes4 aes aes bes      | % 11
    bes2 a      | % 12
    f4 f f ges      | % 13
    f ees d2      | % 14
    ees4 f ges ges      | % 15
    f ees2 des4      | % 16
    c1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    c'4 c des c8 des      | % 1
    ees f ges4 c,2      | % 2
    bes4 bes ces bes      | % 3
    bes2 a      | % 4
    des4 c bes8 c des ees      | % 5
    f bes, bes4 bes2      | % 6
    bes4 ces des des      | % 7
    ces8 des ees4 bes2      | % 8
    des4 c bes bes      | % 9
    bes8 aes des4 des2      | % 10
    f4 c des des      | % 11
    ees8 f ges4 f2      | % 12
    bes,4 a bes8 c des ees      | % 13
    f bes, bes4 bes2      | % 14
    bes4 des des des      | % 15
    des8 ces bes4 a bes      | % 16
    a1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    f4 f bes aes      | % 1
    ges f8 ees f2      | % 2
    bes4 ges d d      | % 3
    ees bes f'2      | % 4
    bes4 a bes ges      | % 5
    d ees bes2      | % 6
    ees4 ces g g      | % 7
    aes a bes2      | % 8
    bes4 c des ees      | % 9
    f des ges2      | % 10
    f4 aes des8 c bes aes      | % 11
    ges4 f8 ees f2      | % 12
    des4 f bes8 aes ges4      | % 13
    d ees bes2      | % 14
    ees4 des ges,8 aes bes ces      | % 15
    des4 ees f2~      | % 16
    f1 \bar "|."\bar "|." 
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
