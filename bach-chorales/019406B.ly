
% BWV 194 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 194"
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
    bes'4 c d c      | % 1
    bes a g f\fermata       | % 2
    bes c d ees      | % 3
    d c bes2\fermata       | % 4
    bes4 c d c      | % 5
    bes a g f\fermata       | % 6
    bes c d ees      | % 7
    d c bes2\fermata       | % 8
    d4 ees f ees      | % 9
    d c d2\fermata       | % 10
    f4 f g f      | % 11
    ees d c2\fermata       | % 12
    d8 ees f4 ees d      | % 13
    bes c d2      | % 14
    bes\fermata  d4 f      | % 15
    ees d c d      | % 16
    c2 bes\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    f4 f f4. e8      | % 1
    d4 c8 f f e f4      | % 2
    d f f f      | % 3
    f f f2      | % 4
    f4 f f4. e8      | % 5
    d4 c8 f f e f4      | % 6
    d f f f      | % 7
    f f f2      | % 8
    bes4 bes a g8 a      | % 9
    bes4 a bes2      | % 10
    bes4 bes bes a      | % 11
    g f f2      | % 12
    f4 bes8 aes g4 f      | % 13
    g8 fis g4~ g8 fis16 e fis4      | % 14
    d2 g4 aes      | % 15
    g d8 ees f4 f      | % 16
    f2 f \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    d'4 a bes8 a g4      | % 1
    f8 g a8. bes16 c8 g a4      | % 2
    bes a bes c      | % 3
    c8 bes bes a d2      | % 4
    d4 a bes8 a g4      | % 5
    f8 g a8. bes16 c8 g a4      | % 6
    bes a bes c      | % 7
    c8 bes bes a d2      | % 8
    f4 g c,8 d ees4      | % 9
    f f f2      | % 10
    d4 d ees c      | % 11
    bes bes a2      | % 12
    bes8 c d4~ d8 c4 bes8~      | % 13
    bes a g a bes a16 g a4      | % 14
    g2 bes4 bes      | % 15
    bes bes a bes~      | % 16
    bes8 a16 g a4 d2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    bes'4 f bes, c      | % 1
    d8 e f4 c f,      | % 2
    g' f8 ees d c bes a      | % 3
    bes4 f bes2      | % 4
    bes'4 f bes, c      | % 5
    d8 e f4 c f,      | % 6
    g' f8 ees d c bes a      | % 7
    bes4 f bes2      | % 8
    bes'8 a g4 f c      | % 9
    d8 ees f4 bes,2      | % 10
    bes8 c d bes ees d ees f      | % 11
    g a bes4 f2      | % 12
    bes4 bes, c d      | % 13
    ees ees d2      | % 14
    g g8 f ees d      | % 15
    ees f g f ees d c bes      | % 16
    f'4 f, bes2 \bar "|."\bar "|." 
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
