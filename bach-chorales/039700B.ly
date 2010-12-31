
% BWV 397 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 397"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f4. g8 a4 bes      | % 1
    c c d e      | % 2
    f2\fermata  f,4. g8      | % 3
    a4 bes c c      | % 4
    bes a g2\fermata       | % 5
    a f4 f      | % 6
    bes a g2      | % 7
    f1\fermata       | % 8
    f4. g8 a4 bes      | % 9
    c c d e      | % 10
    f2\fermata  f,4. g8      | % 11
    a4 bes c c      | % 12
    bes a g2\fermata       | % 13
    a f4 f      | % 14
    bes a g2      | % 15
    f1\fermata       | % 16
    c'2 g4 a      | % 17
    bes bes a4. g8      | % 18
    g2\fermata  c      | % 19
    d4 e f a,      | % 20
    g4. g8 f2\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    c4 d8 e f4 f      | % 1
    f8 g a4 a8 g bes a      | % 2
    f2 d4. e8      | % 3
    f4 g fis8 g a4      | % 4
    a8 g~ g f c2      | % 5
    c d8 e f4      | % 6
    f8 e f4 f e      | % 7
    c1      | % 8
    c4 d8 e f4 f      | % 9
    f8 g a4 a8 g bes a      | % 10
    f2 d4. e8      | % 11
    f4 g fis8 g a4      | % 12
    a8 g~ g f c2      | % 13
    c d8 e f4      | % 14
    f8 e f4 f e      | % 15
    c1      | % 16
    f2 f8 e ees d      | % 17
    d4 g g fis      | % 18
    d2 f4. ees8      | % 19
    d f bes4 a8 g f4      | % 20
    f e c2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    a'4 bes c d      | % 1
    c f f8 g g cis,      | % 2
    d2 a4 bes      | % 3
    f d' ees d      | % 4
    d c8 d e2      | % 5
    f4 ees d d8 c      | % 6
    bes c d4 d c8 bes      | % 7
    a1      | % 8
    a4 bes c d      | % 9
    c f f8 g g cis,      | % 10
    d2 a4 bes      | % 11
    f d' ees d      | % 12
    d c8 d e2      | % 13
    f4 ees d d8 c      | % 14
    bes c d4 d c8 bes      | % 15
    a1      | % 16
    a8 bes c2 c4      | % 17
    bes bes ees d8. c16      | % 18
    bes2 a8 c f4~      | % 19
    f g f8 e d4      | % 20
    d c8 bes a2 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    f,4 f'2 d4      | % 1
    a a' b cis8 a      | % 2
    d2 d,      | % 3
    d'4 c8 bes a g fis d      | % 4
    g4 a8 bes c2      | % 5
    f, bes8 c bes a      | % 6
    g4 d8 c bes4 c      | % 7
    f,1      | % 8
    f4 f'2 d4      | % 9
    a a' b cis8 a      | % 10
    d2 d,      | % 11
    d'4 c8 bes a g fis d      | % 12
    g4 a8 bes c2      | % 13
    f, bes8 c bes a      | % 14
    g4 d8 c bes4 c      | % 15
    f,1      | % 16
    a'4. bes8 c4 fis,      | % 17
    g8 f ees d c4 d      | % 18
    g,2 a      | % 19
    bes8 bes' a g d' d, d' c      | % 20
    bes g c c, f2 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose f c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose f c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose f c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose f c \ABvoiceDA }
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
