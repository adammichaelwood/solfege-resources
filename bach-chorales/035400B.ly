
% BWV 354 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 354"
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
    f'4 f c des      | % 1
    ees des8 c c4 bes\fermata       | % 2
    des des c bes      | % 3
    a bes c2\fermata       | % 4
    f4 f c des      | % 5
    ees des8 c c4 bes\fermata       | % 6
    des des c bes      | % 7
    a bes c2\fermata       | % 8
    c4 des ees8 des c4      | % 9
    des c8 bes bes4 aes\fermata       | % 10
    des ees f8 ees des4      | % 11
    ges f ees des\fermata       | % 12
    c des ees f      | % 13
    ees des c2\fermata       | % 14
    bes4 c des ees8 des      | % 15
    c4. c8 bes2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    bes'4 f8 g a4 f      | % 1
    ees8 f ges4 f8 ees des4      | % 2
    f bes8 aes ges f f ees      | % 3
    ees c f g a2      | % 4
    bes4 f8 g a4 f      | % 5
    ees8 f ges4 f8 ees des4      | % 6
    f bes8 aes ges f f ees      | % 7
    ees c f g a2      | % 8
    a4 bes bes aes      | % 9
    aes8 g aes4 g ees      | % 10
    bes' aes aes bes8 aes      | % 11
    bes c des4 aes8 ges f4      | % 12
    aes aes aes aes8 bes      | % 13
    c4 bes a2      | % 14
    bes4 f f ees8 f      | % 15
    ges4 f8 ees d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    des'8 c bes4 f'8 ees des c      | % 1
    bes4 c a f      | % 2
    bes bes bes8 a bes4      | % 3
    c bes8 des c2      | % 4
    des8 c bes4 f'8 ees des c      | % 5
    bes4 c a f      | % 6
    bes bes bes8 a bes4      | % 7
    c bes8 des c2      | % 8
    f4 f ees ees      | % 9
    des8 ees f4 ees8 des c4      | % 10
    f8 ges f ees des c bes4      | % 11
    ees aes,8 bes c4 des      | % 12
    ees f ees des      | % 13
    ges8 f f e f2      | % 14
    f4 f bes, bes      | % 15
    bes a f2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key as \major 
    %bartimesig: 
    \time 4/4 
    bes8 c des ees f4 bes8 aes      | % 1
    ges4 f8 ees f4 bes,      | % 2
    bes'8 aes ges f ees f ges4      | % 3
    c,8 ees des bes f'2      | % 4
    bes,8 c des ees f4 bes8 aes      | % 5
    ges4 f8 ees f4 bes,      | % 6
    bes'8 aes ges f ees f ges4      | % 7
    c,8 ees des bes f'2      | % 8
    f4 bes8 aes g ees aes g      | % 9
    f ees des4 ees aes,      | % 10
    bes c des ges8 f      | % 11
    ees4 f8 ges aes4 des,      | % 12
    aes'8 ges f ees des c des4      | % 13
    a bes f'2      | % 14
    des'8 c bes a bes aes ges f      | % 15
    ees4 f bes,2 \bar "|."\bar "|." 
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
