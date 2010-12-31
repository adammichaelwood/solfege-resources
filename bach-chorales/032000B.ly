
% BWV 320 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 320"
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
    f4 a b      | % 1
    c2.\fermata       | % 2
    c4 bes c      | % 3
    d c d      | % 4
    e d e      | % 5
    f2.\fermata       | % 6
    a,2 bes4      | % 7
    c bes a      | % 8
    g2 a4      | % 9
    bes a g      | % 10
    f2 g4      | % 11
    a2 g4      | % 12
    a2 b4      | % 13
    c2.\fermata       | % 14
    e2 f4      | % 15
    d2 f4      | % 16
    e2 d4      | % 17
    cis2 a4      | % 18
    d2 a4      | % 19
    bes a g      | % 20
    f2 e8 f      | % 21
    d2.\fermata       | % 22
    fis2 fis4      | % 23
    g fis g      | % 24
    a bes c      | % 25
    bes a8 bes g4      | % 26
    c2 c4      | % 27
    c d e      | % 28
    f e d      | % 29
    e2 c4\fermata       | % 30
    f c a      | % 31
    d2 c4      | % 32
    bes c a      | % 33
    g2.      | % 34
    c4 a f      | % 35
    d' e f      | % 36
    a,2 g8 f      | % 37
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
    c4 f f      | % 1
    g2.      | % 2
    f4 g f      | % 3
    f2 f4      | % 4
    g8 a bes2      | % 5
    a2.      | % 6
    f2 f4      | % 7
    f8 d e4 f      | % 8
    e2 fis4      | % 9
    g f e      | % 10
    f8 e d4 e      | % 11
    f2 g4      | % 12
    f2 f4      | % 13
    g2.      | % 14
    c2 c4      | % 15
    bes f bes      | % 16
    bes2 bes4      | % 17
    a2 e4      | % 18
    a4. g8 f e      | % 19
    d4~ d8 cis d4      | % 20
    d2 cis4      | % 21
    a2.      | % 22
    c4 a d      | % 23
    d c bes      | % 24
    d2 d4      | % 25
    d c bes      | % 26
    g' e f      | % 27
    g f e      | % 28
    d e8 f g4      | % 29
    g2 e4      | % 30
    f2 f4      | % 31
    f2 f4      | % 32
    g2 f4      | % 33
    f e2      | % 34
    f f4      | % 35
    f g a      | % 36
    f2 e4      | % 37
    c2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    a'4 c d      | % 1
    e2.      | % 2
    c4 d c      | % 3
    bes f bes      | % 4
    bes8 c d4 c      | % 5
    c2.      | % 6
    d2 d4      | % 7
    c2 c4      | % 8
    c2 c4      | % 9
    d c c      | % 10
    c bes8 a bes4      | % 11
    c2 c4      | % 12
    c2 d4      | % 13
    e2.      | % 14
    g2 f4      | % 15
    f8 e d cis d4      | % 16
    g2 f4      | % 17
    e2 cis4      | % 18
    d2 c4      | % 19
    bes f'8 e d e      | % 20
    f4 d a      | % 21
    f2.      | % 22
    a2 a4      | % 23
    bes c d      | % 24
    a g fis      | % 25
    g fis g      | % 26
    g2 a4      | % 27
    c b c      | % 28
    c2 b4      | % 29
    c2 g4      | % 30
    c2 c4      | % 31
    bes2 c4      | % 32
    d c c      | % 33
    c2.      | % 34
    c2 c4      | % 35
    bes bes c      | % 36
    c d8 c bes c      | % 37
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
    f,4 f' d      | % 1
    c c' bes      | % 2
    a g a      | % 3
    bes a bes      | % 4
    g2 c,4      | % 5
    f2 f,4      | % 6
    d' c bes      | % 7
    a g f      | % 8
    c' bes a      | % 9
    g a bes      | % 10
    a bes g      | % 11
    f f' e      | % 12
    f e d      | % 13
    c2.      | % 14
    c'4 bes a      | % 15
    bes bes, a'      | % 16
    g f g      | % 17
    a a, g'      | % 18
    f e d      | % 19
    g a bes      | % 20
    a g a      | % 21
    d,2.      | % 22
    a4 d c      | % 23
    bes a g      | % 24
    fis' e d      | % 25
    g d g,      | % 26
    e' c f      | % 27
    e d c      | % 28
    d g g,      | % 29
    c2 c4      | % 30
    a2 f4      | % 31
    bes bes' a      | % 32
    g e f      | % 33
    c c' bes      | % 34
    a f a      | % 35
    bes g f~      | % 36
    f8 a, bes4 c      | % 37
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
