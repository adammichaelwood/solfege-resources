
% BWV 159 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 159"
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
    g'4 f ees f      | % 1
    g aes bes2\fermata       | % 2
    c4 bes aes g8 f      | % 3
    f2 ees\fermata       | % 4
    g4 bes aes g      | % 5
    f ees d2\fermata       | % 6
    ees4 f g g      | % 7
    aes2 g\fermata       | % 8
    g4 aes bes aes      | % 9
    g f g2\fermata       | % 10
    f4 f g8 a bes4      | % 11
    bes a bes2\fermata       | % 12
    bes4 g c bes      | % 13
    aes g f2\fermata       | % 14
    g8 aes bes4 aes g8 f      | % 15
    f2 ees\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees4 d d8 c c bes      | % 1
    bes4 aes ees'2      | % 2
    ees8 aes aes g g f ees4      | % 3
    ees d bes2      | % 4
    ees4 f ees8 f g ees      | % 5
    d4 c b2      | % 6
    c4 d ees ees~      | % 7
    ees8 d16 ees f8 d ees2      | % 8
    ees4 ees e f      | % 9
    des8 c c d ees2      | % 10
    c4 c8 d ees4 des8 ees      | % 11
    f2 f      | % 12
    f4 ees8 f g4 g      | % 13
    ees8 f bes, c d2      | % 14
    ees4. bes8 ees f g c,      | % 15
    d ees16 c d4 bes2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    bes'4 bes8 aes g4 f      | % 1
    ees8 ees' ees des des2      | % 2
    c4 d ees8 d ees c      | % 3
    bes4. aes8 g2      | % 4
    bes4 bes c8 d ees c      | % 5
    aes g g4 g2      | % 6
    g4 bes bes bes      | % 7
    c8 aes f bes bes2      | % 8
    c4 c bes c      | % 9
    bes aes g2      | % 10
    aes8 bes c bes bes4. c8      | % 11
    des4 c d2      | % 12
    bes4 bes ees d8 bes      | % 13
    c d ees4 bes2      | % 14
    bes8 aes g f ees d ees4      | % 15
    bes'4. aes8 g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees4 bes c d      | % 1
    ees f g2      | % 2
    aes4 bes c bes8 aes      | % 3
    bes4 bes, ees2      | % 4
    ees8 d d c c2~      | % 5
    c8 b c ees g2      | % 6
    c,8 c' bes aes g f ees d      | % 7
    c f d bes ees2      | % 8
    c4 bes8 aes g g'4 f8      | % 9
    f e f4 c2      | % 10
    f8 g aes4 g ges      | % 11
    f8 ees f4 bes,2      | % 12
    d8 bes ees4 ees8 c g'4      | % 13
    g8 f g aes bes2      | % 14
    ees,4. d8 c c' bes aes      | % 15
    bes4 bes, ees2 \bar "|."\bar "|." 
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
