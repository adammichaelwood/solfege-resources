
% BWV 229 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 229"
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
    d'4 ees d8 c      | % 1
    d4 g, c~      | % 2
    c bes8 a bes c      | % 3
    a2 g4      | % 4
    d' ees8 f g4      | % 5
    a, g8 f f'4~      | % 6
    f8 g ees4. d8      | % 7
    d2.      | % 8
    d4 ees8 d c bes      | % 9
    c4 f, bes~      | % 10
    bes a8 d c bes      | % 11
    a4 g f      | % 12
    f' e d      | % 13
    g a, f'~      | % 14
    f8 e cis4. d8      | % 15
    d2.      | % 16
    f4 d c      | % 17
    b2 c4      | % 18
    f8 g16 aes g4 f      | % 19
    ees d c      | % 20
    ees f8 ees d c      | % 21
    fis4 g g,      | % 22
    c2.~      | % 23
    c8 ees d c bes a      | % 24
    bes g a bes c d      | % 25
    ees c fis g16 a d,4~      | % 26
    d8 ees a,4. g8      | % 27
    g2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    g'4 g f      | % 1
    f e fis8 g      | % 2
    a4 g8 fis g a      | % 3
    fis2 d4      | % 4
    g bes bes      | % 5
    f2 a4      | % 6
    bes8 g a4. bes8      | % 7
    bes2.      | % 8
    f4 f g      | % 9
    g f e8 d      | % 10
    c4. e8 f4      | % 11
    f e c      | % 12
    d bes' a      | % 13
    g4. e8 f g      | % 14
    a bes a4 a      | % 15
    a2.      | % 16
    a4 f f      | % 17
    g2 c,4      | % 18
    aes'8 g16 f c'4 aes      | % 19
    g4. f8 ees4      | % 20
    g g8 bes a g      | % 21
    a4 d,2      | % 22
    g2.      | % 23
    a4 bes8 a g fis      | % 24
    g2 a8 b      | % 25
    c bes a g fis4      | % 26
    g g fis      | % 27
    d2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes'4 bes a      | % 1
    bes c8 d ees4      | % 2
    d4. c8 d ees      | % 3
    d4 c bes      | % 4
    bes c8 d ees4      | % 5
    ees d c      | % 6
    d c f      | % 7
    f2.      | % 8
    bes,4 c e8 d      | % 9
    c4 d8 c bes a      | % 10
    g4 a d      | % 11
    c bes a      | % 12
    a' g f      | % 13
    e8 d e4 d~      | % 14
    d8 g e2      | % 15
    fis2.      | % 16
    d4 a8 b c4      | % 17
    d8 ees f4 ees      | % 18
    d8 ees16 f ees4 c      | % 19
    c b g      | % 20
    c8 b c d ees4      | % 21
    d2 bes4      | % 22
    ees2.      | % 23
    ees4 fis,8 a d4      | % 24
    d2 ees8 f      | % 25
    g f ees d a'4      | % 26
    d, d8 bes c4      | % 27
    b2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    g'4 c, f      | % 1
    bes, bes' a8 g      | % 2
    fis4 g c,      | % 3
    d2 g,4      | % 4
    g' g8 f ees4      | % 5
    f4. ees8 ees d      | % 6
    d ees f2      | % 7
    bes,2.      | % 8
    bes'4 a g      | % 9
    a bes8 a g f      | % 10
    e4 f bes,      | % 11
    c2 f,4      | % 12
    d' g a      | % 13
    bes cis, d      | % 14
    g a a,      | % 15
    d2.      | % 16
    d8 ees f g aes4      | % 17
    g2 a4      | % 18
    b c f,      | % 19
    g2 c,4      | % 20
    c c'2~      | % 21
    c4 bes8 a g f      | % 22
    ees d f ees d c      | % 23
    fis4 d2      | % 24
    g4. f8 ees d      | % 25
    c4. bes8 c a      | % 26
    bes c d2      | % 27
    g,2. \bar "|."\bar "|." 
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
