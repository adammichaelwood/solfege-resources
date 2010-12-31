
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
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
    \time 3/4 
    c'4 a2      | % 1
    g f4      | % 2
    bes c4. d16 ees      | % 3
    d2.      | % 4
    c2.\fermata       | % 5
    d4 bes2      | % 6
    c f,4      | % 7
    bes a2      | % 8
    g2.\fermata       | % 9
    c4 a2      | % 10
    g f4      | % 11
    bes c4. d16 ees      | % 12
    d2.      | % 13
    c2.\fermata       | % 14
    d4 bes2      | % 15
    c f,4      | % 16
    bes a2      | % 17
    g2.\fermata       | % 18
    e'4 c2      | % 19
    a d4      | % 20
    cis d4. e16 f      | % 21
    e2.      | % 22
    a,2.\fermata       | % 23
    d4 e f      | % 24
    g c, bes      | % 25
    a d bes      | % 26
    g2.      | % 27
    f2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    a'4 f2      | % 1
    f4 e f      | % 2
    d g f      | % 3
    f2.      | % 4
    f2.      | % 5
    a4 g2      | % 6
    g4 f f      | % 7
    f8 g g4 f      | % 8
    e2.      | % 9
    a4 f2      | % 10
    f4 e f      | % 11
    d g f      | % 12
    f2.      | % 13
    f2.      | % 14
    a4 g2      | % 15
    g4 f f      | % 16
    f8 g g4 f      | % 17
    e2.      | % 18
    g8 f g4 g      | % 19
    g f f      | % 20
    g a bes8 a      | % 21
    g f g4. e8      | % 22
    f2.      | % 23
    f4 g a      | % 24
    g8 f g4 e      | % 25
    c bes f'      | % 26
    f e8 d e4      | % 27
    c2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    f'4 c2      | % 1
    c4. bes8 a4      | % 2
    bes2 a8 bes16 c      | % 3
    c4 bes8 a bes4      | % 4
    a2.      | % 5
    f'4 d2      | % 6
    c8 bes a4 a      | % 7
    d8 c c2      | % 8
    c2.      | % 9
    f4 c2      | % 10
    c4. bes8 a4      | % 11
    bes2 a8 bes16 c      | % 12
    c4 bes8 a bes4      | % 13
    a2.      | % 14
    f'4 d2      | % 15
    c8 bes a4 a      | % 16
    d8 c c2      | % 17
    c2.      | % 18
    c2 e4      | % 19
    c2 bes4~      | % 20
    bes a d8 c      | % 21
    bes4 a8 g a4      | % 22
    a2.      | % 23
    bes4. g8 c4      | % 24
    c2 g4      | % 25
    f2 d'4      | % 26
    g, c bes      | % 27
    a2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    f8 g a4 f      | % 1
    c2 d4      | % 2
    g8 f ees4 f      | % 3
    bes,8 c d4 bes      | % 4
    f'2.      | % 5
    d4 g f      | % 6
    e f8 e d c      | % 7
    d e f4 f      | % 8
    c2.      | % 9
    f8 g a4 f      | % 10
    c2 d4      | % 11
    g8 f ees4 f      | % 12
    bes,8 c d4 bes      | % 13
    f'2.      | % 14
    d4 g f      | % 15
    e f8 e d c      | % 16
    d e f4 f      | % 17
    c2.      | % 18
    c8 d e4 c      | % 19
    f8 e f4 bes      | % 20
    e, f d      | % 21
    d cis8 b cis4      | % 22
    d2.      | % 23
    bes'8 a g4 f      | % 24
    e8 d e4 c      | % 25
    f bes,2      | % 26
    c8 bes c2      | % 27
    f,2. \bar "|."\bar "|." 
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
