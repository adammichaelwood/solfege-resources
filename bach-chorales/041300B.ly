
% BWV 413 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 413"
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
    d4. e8 f g      | % 1
    a2 d4      | % 2
    d e cis      | % 3
    d2 d4\fermata       | % 4
    f2 e4      | % 5
    d2 c4      | % 6
    d8 c bes2      | % 7
    a2.\fermata       | % 8
    d,4. e8 f g      | % 9
    a2 d4      | % 10
    d e cis      | % 11
    d2 d4\fermata       | % 12
    f2 e4      | % 13
    d2 c4      | % 14
    d8 c bes2      | % 15
    a2.\fermata       | % 16
    a2 a8 bes      | % 17
    c2 f,4      | % 18
    bes2 a4      | % 19
    g2 g4\fermata       | % 20
    g2 a4      | % 21
    bes2 c4      | % 22
    bes a bes      | % 23
    g2.\fermata       | % 24
    a2 a8 bes      | % 25
    c2 a4      | % 26
    bes a2      | % 27
    g2.\fermata       | % 28
    f2 f4      | % 29
    f e f      | % 30
    g f g      | % 31
    a2 a4\fermata       | % 32
    a2 g4      | % 33
    a2 g4      | % 34
    a b2      | % 35
    c2.\fermata       | % 36
    d2 e4      | % 37
    f4. e8 d4      | % 38
    d e cis      | % 39
    d2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    a4 d8 cis d e      | % 1
    f e f g a4~      | % 2
    a bes a      | % 3
    a2 a4      | % 4
    a2 a4      | % 5
    f2 f4      | % 6
    f f8 g f e      | % 7
    f2.      | % 8
    a,4 d8 cis d e      | % 9
    f e f g a4~      | % 10
    a bes a      | % 11
    a2 a4      | % 12
    a2 a4      | % 13
    f2 f4      | % 14
    f f8 g f e      | % 15
    f2.      | % 16
    f2 f4~      | % 17
    f8 g f e f4      | % 18
    f2 f4~      | % 19
    f e8 d e4      | % 20
    e d d      | % 21
    d g8 fis g4      | % 22
    g g fis      | % 23
    d2.      | % 24
    f8 e f g d f      | % 25
    g e f g a g      | % 26
    f2 f4~      | % 27
    f e2      | % 28
    f4 c2      | % 29
    d4 e d8 c      | % 30
    d4 c8 d e4      | % 31
    f2 f4      | % 32
    f2 g4      | % 33
    g f e      | % 34
    f2 g4      | % 35
    g2.      | % 36
    g4 a2      | % 37
    a4. g8 f4~      | % 38
    f e e8 g      | % 39
    fis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    f4. g8 a4~      | % 1
    a d~ d8 e      | % 2
    f4 g e8 g~      | % 3
    g4 f8 e f4      | % 4
    d2 c4~      | % 5
    c bes~ bes8 a      | % 6
    bes c d4 c      | % 7
    c2.      | % 8
    f,4. g8 a4~      | % 9
    a d~ d8 e      | % 10
    f4 g e8 g~      | % 11
    g4 f8 e f4      | % 12
    d2 c4~      | % 13
    c bes~ bes8 a      | % 14
    bes c d4 c      | % 15
    c2.      | % 16
    d2 d4      | % 17
    c2 a4      | % 18
    d c2      | % 19
    c c4      | % 20
    c d a~      | % 21
    a g c8 d      | % 22
    ees d ees c a d      | % 23
    bes2.      | % 24
    d4 d d      | % 25
    c2 c4      | % 26
    d c2      | % 27
    c2.      | % 28
    c4~ c8 bes a g      | % 29
    a2 a4      | % 30
    g a bes      | % 31
    c2 c4      | % 32
    c2 c4      | % 33
    c2 c4      | % 34
    c d2      | % 35
    e2.      | % 36
    bes4 f' e~      | % 37
    e d8 cis d c      | % 38
    bes4 bes a      | % 39
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
    d4 d, d'      | % 1
    d8 cis d e f g      | % 2
    a4 g a      | % 3
    d,2 d,4      | % 4
    d'8 e f g a a,      | % 5
    bes c d e f f,      | % 6
    bes a g4 c      | % 7
    f,2.      | % 8
    d'4 d, d'      | % 9
    d8 cis d e f g      | % 10
    a4 g a      | % 11
    d,2 d,4      | % 12
    d'8 e f g a a,      | % 13
    bes c d e f f,      | % 14
    bes a g4 c      | % 15
    f,2.      | % 16
    d'4 d' c8 bes      | % 17
    a a, bes c d c      | % 18
    d e f g a bes      | % 19
    c2 c,4      | % 20
    c' bes8 a g fis      | % 21
    g f ees d ees d      | % 22
    c bes c4 d      | % 23
    g,2.      | % 24
    d'8 cis d e f d      | % 25
    e c d e f e      | % 26
    d e f g a bes      | % 27
    c2.      | % 28
    a8 bes a g f e      | % 29
    d e d c bes a      | % 30
    g a f bes a g      | % 31
    f2 f4      | % 32
    f8 a c f~ f e      | % 33
    f g a bes c c,      | % 34
    f e d g f g      | % 35
    c,2.      | % 36
    g8 g' f e d cis      | % 37
    d f g a bes a      | % 38
    g f g e a a,      | % 39
    d2. \bar "|."\bar "|." 
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
