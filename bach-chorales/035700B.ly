
% BWV 357 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 357"
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
    g'4. c8 b4 c      | % 1
    d ees8 d d2\fermata       | % 2
    ees4 c f ees      | % 3
    d d8. ees16 c4 c\fermata       | % 4
    g g c bes      | % 5
    aes g8 f f2\fermata       | % 6
    bes4 g c8 d ees4      | % 7
    g, f8 ees ees4 ees\fermata       | % 8
    g4. a8 b4 b\fermata       | % 9
    c d b b      | % 10
    c d ees c      | % 11
    f ees d d\fermata       | % 12
    c g aes g      | % 13
    g4. f8 g2\fermata       | % 14
    c4 g aes8 g f ees16 d      | % 15
    ees4 d8 c c2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    ees4 g f g      | % 1
    g g g2      | % 2
    g4 g f8 g aes4~      | % 3
    aes8 d, g f ees4 ees      | % 4
    ees8 f g4 c,8 d ees4      | % 5
    f ees d2      | % 6
    f4. ees8 ees f g f      | % 7
    ees4 d bes bes      | % 8
    ees ees f g      | % 9
    g aes g g      | % 10
    g g g g      | % 11
    f g g g      | % 12
    g g~ g8 f4 ees8      | % 13
    ees d c4 d2      | % 14
    g8 f g ees f4 c      | % 15
    c b g2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    c'4 c d ees      | % 1
    d c c b      | % 2
    c ees8 d c4 c      | % 3
    c b g g      | % 4
    c d ees bes      | % 5
    bes bes bes2      | % 6
    bes4 bes c8 bes~ bes c      | % 7
    bes4 bes8. aes16 g4 g      | % 8
    bes c8 ees d4 d      | % 9
    ees f d d      | % 10
    ees d c8 d ees d      | % 11
    c4 c c b      | % 12
    c ees c b      | % 13
    c8 b c4 b2      | % 14
    c4 c c aes      | % 15
    g g8. f16 e2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    c4 ees d c      | % 1
    b c g2      | % 2
    c4 c'8 bes aes4. g8      | % 3
    f4 g c,2      | % 4
    c'4 bes aes g8 f      | % 5
    ees d ees4 bes2      | % 6
    d8 bes ees4 aes, g8 aes      | % 7
    bes aes bes4 ees, ees      | % 8
    ees'8 d ees c d aes' g f      | % 9
    ees c f, f' g g, g' f      | % 10
    ees d c b c g' c bes      | % 11
    aes4 g8 f g4 g,      | % 12
    ees' c f g      | % 13
    aes2 g      | % 14
    ees8 d ees c f g aes f      | % 15
    g4 g, c2 \bar "|."\bar "|." 
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
