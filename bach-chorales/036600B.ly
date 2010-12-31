
% BWV 366 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 366"
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
    d2 e4      | % 1
    f2 g4      | % 2
    a2 d4      | % 3
    cis2 cis4\fermata       | % 4
    d2 e4      | % 5
    f2.      | % 6
    f,4 g4. g8      | % 7
    f2.\fermata       | % 8
    d2 e4      | % 9
    f2 g4      | % 10
    a2 d4      | % 11
    cis2 cis4\fermata       | % 12
    d2 e4      | % 13
    f2.      | % 14
    f,4 g4. g8      | % 15
    f2.\fermata       | % 16
    g2 g4      | % 17
    a2 c4      | % 18
    bes2 g4      | % 19
    a2 a4\fermata       | % 20
    c2 c4      | % 21
    d2 f4      | % 22
    e d cis      | % 23
    d2 d4\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    a2 cis4      | % 1
    d2 e4      | % 2
    f4. g8 a4      | % 3
    a2 a4      | % 4
    a2 a4      | % 5
    a4. g8 f e      | % 6
    f2 e4      | % 7
    c2.      | % 8
    a2 cis4      | % 9
    d2 e4      | % 10
    f4. g8 a4      | % 11
    a2 a4      | % 12
    a2 a4      | % 13
    a4. g8 f e      | % 14
    f2 e4      | % 15
    c2.      | % 16
    e4 f g      | % 17
    g8 f~ f e f4      | % 18
    f e8 d e4      | % 19
    f2 f4      | % 20
    a2 a8 g      | % 21
    f e f g a4      | % 22
    bes8 g f e e g      | % 23
    fis2 fis4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    f8 g a4 g      | % 1
    a2 bes4      | % 2
    c d8 e f4      | % 3
    e2 e4      | % 4
    f2 e4      | % 5
    d8 cis d e d c      | % 6
    bes a d4 c8. bes16      | % 7
    a2.      | % 8
    f8 g a4 g      | % 9
    a2 bes4      | % 10
    c d8 e f4      | % 11
    e2 e4      | % 12
    f2 e4      | % 13
    d8 cis d e d c      | % 14
    bes a d4 c8. bes16      | % 15
    a2.      | % 16
    c2 c4      | % 17
    c4. bes8 a4      | % 18
    d2 c4      | % 19
    c2 c4      | % 20
    f2 f8 ees      | % 21
    d2 c4      | % 22
    bes b a      | % 23
    a2 a4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    d8 e f g f e      | % 1
    d4 c8 bes a g      | % 2
    f g f e d4      | % 3
    a'2 a4      | % 4
    d8 e f e d cis      | % 5
    d2.~      | % 6
    d8 c bes4 c      | % 7
    f,2.      | % 8
    d'8 e f g f e      | % 9
    d4 c8 bes a g      | % 10
    f g f e d4      | % 11
    a'2 a4      | % 12
    d8 e f e d cis      | % 13
    d2.~      | % 14
    d8 c bes4 c      | % 15
    f,2.      | % 16
    c'4 d e      | % 17
    f g a      | % 18
    g g, c      | % 19
    f2 f4      | % 20
    f f,8 g a4      | % 21
    bes bes' a      | % 22
    g gis a      | % 23
    d,2 d4 \bar "|."\bar "|." 
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
