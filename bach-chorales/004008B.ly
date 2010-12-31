
% BWV 40 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 40"
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
    c'4 c bes aes      | % 1
    g4. f8 f4 f\fermata       | % 2
    aes4. bes8 c4 c      | % 3
    bes4. aes8 aes2\fermata       | % 4
    aes4 bes bes aes      | % 5
    g4. f8 f2\fermata       | % 6
    c'4 c des des      | % 7
    bes bes c c\fermata       | % 8
    aes aes des des      | % 9
    c c bes2\fermata       | % 10
    g4 aes bes aes      | % 11
    g g f2\fermata       | % 12
    f'4 f ees ees      | % 13
    d d c c\fermata       | % 14
    c c des c      | % 15
    bes4. aes8 aes4 aes\fermata       | % 16
    aes aes des des      | % 17
    bes bes ees ees      | % 18
    c c f f      | % 19
    e e f f\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    f4 f f8 e f4      | % 1
    f8 g e4 f c      | % 2
    f4. g8 aes4 aes      | % 3
    aes8 f g4 ees2      | % 4
    f4 g e f      | % 5
    f e c2      | % 6
    f4 f f f      | % 7
    g8 aes bes g aes4 aes      | % 8
    f f bes bes      | % 9
    bes a f2      | % 10
    e4 f f8 e f4      | % 11
    f e c2      | % 12
    aes'4 aes g g      | % 13
    g8 aes g f e4 e      | % 14
    f f f8 g aes4      | % 15
    aes8 f g4 ees ees      | % 16
    f f bes bes      | % 17
    g g c c      | % 18
    aes8 g aes bes c4 bes8 aes      | % 19
    g4 g a a \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    aes'4 a bes c      | % 1
    des c8 bes aes4 aes      | % 2
    c4. bes8 ees4 ees      | % 3
    f ees8 des c2      | % 4
    des4 des g, f8 aes      | % 5
    des4 c8 bes aes2      | % 6
    a8 bes c a bes4 bes      | % 7
    bes ees ees ees      | % 8
    des des f f      | % 9
    ges f8 ees des2      | % 10
    c4 c bes c      | % 11
    des c8 bes aes2      | % 12
    c4 c c c      | % 13
    c b c g      | % 14
    a a bes ees,      | % 15
    ees'4. des8 c4 c      | % 16
    des des f f      | % 17
    ees ees g g      | % 18
    f f c f,      | % 19
    c' c c c \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    f4 ees des c      | % 1
    bes c f, f      | % 2
    f' ees8 des c bes aes4      | % 3
    des ees aes,2      | % 4
    des4 c8 bes c4 des      | % 5
    bes c f,2      | % 6
    f'8 g a f bes c des bes      | % 7
    ees, f g ees aes4 aes      | % 8
    des,8 ees f des bes c des bes      | % 9
    ees c f4 bes,2      | % 10
    bes'4 aes g f      | % 11
    bes, c f,2      | % 12
    f8 g aes bes c d ees f      | % 13
    g4 g, c c      | % 14
    f8 ees des c bes4 c8 des      | % 15
    ees4 ees aes, aes      | % 16
    des8 ees des c bes c des bes      | % 17
    ees f ees des c des ees c      | % 18
    f e f g aes g aes bes      | % 19
    c4 c, f f \bar "|."\bar "|." 
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
