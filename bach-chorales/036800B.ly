
% BWV 368 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 368"
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
    \partial 4
    f4     f2 f4      | % 1
    a2 bes4      | % 2
    c2 d4      | % 3
    c2.\fermata       | % 4
    f,2 f4      | % 5
    a2 bes4      | % 6
    c2 d4      | % 7
    c2.\fermata       | % 8
    c2 d4      | % 9
    c2 bes4      | % 10
    a4. bes8 a g      | % 11
    f2\fermata  f4      | % 12
    g2 g4      | % 13
    a2 g4      | % 14
    f2 g4      | % 15
    a2.\fermata       | % 16
    c2 d4      | % 17
    c2 bes4      | % 18
    a4. bes8 a g      | % 19
    f2\fermata  f4      | % 20
    g2 g4      | % 21
    a2 g4      | % 22
    f2 g4      | % 23
    a2.\fermata       | % 24
    d,2 d4      | % 25
    e2 e4      | % 26
    f8 e f g a bes      | % 27
    c2.\fermata       | % 28
    a2 a4      | % 29
    g2 g4      | % 30
    f2.~      | % 31
    f2.\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    c4     d2 d4      | % 1
    e2 e4      | % 2
    f2.      | % 3
    f2.      | % 4
    f4 e d      | % 5
    c2 d4      | % 6
    c e g      | % 7
    e2.      | % 8
    f2 f4      | % 9
    e f g      | % 10
    cis, d e      | % 11
    d2 f4      | % 12
    f e8 d e4      | % 13
    f2 e4      | % 14
    f4. g8 f e      | % 15
    f2.      | % 16
    f2 f4      | % 17
    g f g      | % 18
    g f e      | % 19
    d2 f4~      | % 20
    f e8 d e4      | % 21
    f2 e4~      | % 22
    e a, d      | % 23
    cis2.      | % 24
    d2 d4~      | % 25
    d c8 d e4~      | % 26
    e d2      | % 27
    c2.      | % 28
    c4 f8 e f4      | % 29
    f2 e4      | % 30
    f8 ees d c d bes      | % 31
    c2. \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    a'4     a2 bes4      | % 1
    c2 bes4      | % 2
    a2 bes4      | % 3
    a2.      | % 4
    a2 bes4      | % 5
    a g f      | % 6
    g c b      | % 7
    g2.      | % 8
    a2 bes4      | % 9
    c d e      | % 10
    a, b cis      | % 11
    a2 c4      | % 12
    d bes c      | % 13
    c2 c4      | % 14
    c a c      | % 15
    c2.      | % 16
    a2 bes4      | % 17
    g2 e'4      | % 18
    e d cis      | % 19
    a2 c4      | % 20
    d bes c      | % 21
    c2 c4      | % 22
    a2 bes4      | % 23
    e,2.      | % 24
    r8 f g a bes a      | % 25
    g4 a8 bes c bes      | % 26
    a4. g8 f4      | % 27
    g2.      | % 28
    a4 bes c      | % 29
    d bes c~      | % 30
    c bes8 a bes g      | % 31
    a2. \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    f4     d c bes      | % 1
    a bes8 a g a      | % 2
    f f' ees d c bes      | % 3
    f'2.      | % 4
    d4 c bes      | % 5
    f' e d      | % 6
    e c g      | % 7
    c2.      | % 8
    f2 bes4~      | % 9
    bes a g~      | % 10
    g f e      | % 11
    d2 a4      | % 12
    bes g c      | % 13
    f,8 g a bes c bes      | % 14
    a4 f c      | % 15
    f2.      | % 16
    f'4 e d      | % 17
    e d c      | % 18
    f8 g a4 a,      | % 19
    d2 a4      | % 20
    bes g c      | % 21
    f,8 g a bes c a      | % 22
    d4 c bes      | % 23
    a2.      | % 24
    bes4 a g      | % 25
    c bes a      | % 26
    d8 c d e f d      | % 27
    e2.      | % 28
    f,4 g a      | % 29
    bes g c      | % 30
    a bes2      | % 31
    f2. \bar "|." 
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
