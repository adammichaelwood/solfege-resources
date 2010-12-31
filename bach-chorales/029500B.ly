
% BWV 295 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 295"
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
    d4 d d      | % 1
    a'2 a4      | % 2
    bes2 bes4      | % 3
    a2.\fermata       | % 4
    f4 g a      | % 5
    bes2.      | % 6
    a4 g4. f8      | % 7
    f2\fermata  g4      | % 8
    a2 g4      | % 9
    g2 a4      | % 10
    f2 f4      | % 11
    e2.\fermata       | % 12
    d4 e f      | % 13
    g2.      | % 14
    f4 e4. d8      | % 15
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
    a4 a d      | % 1
    e d a'~      | % 2
    a g8 fis g4~      | % 3
    g f2      | % 4
    f4~ f8 e ees d      | % 5
    d4 e8 f g4~      | % 6
    g8 f f4 e      | % 7
    c2 e4      | % 8
    f2 e8 d      | % 9
    cis d e4 e~      | % 10
    e d8 cis d4      | % 11
    d cis2      | % 12
    d4 a d      | % 13
    e4. d8 e4~      | % 14
    e8 d d4 cis      | % 15
    a2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    f8 g a g a4~      | % 1
    a8 g f e d4      | % 2
    d'2 d4      | % 3
    d2.      | % 4
    a8 d~ d c c4      | % 5
    bes8 a g4 c      | % 6
    c d c8. bes16      | % 7
    a2 c4      | % 8
    c2 c8 bes      | % 9
    bes4 a8 b cis4      | % 10
    a a b      | % 11
    e, a2      | % 12
    a4 a a      | % 13
    bes a a      | % 14
    a bes a8. g16      | % 15
    fis2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    d8 e f e f d      | % 1
    cis4 d fis,      | % 2
    g8 a bes4 g      | % 3
    d'2.      | % 4
    d4 e fis      | % 5
    g c,8 d e4      | % 6
    f bes, c      | % 7
    f,2 c'4      | % 8
    f,8 g a bes c d      | % 9
    e d cis4 a      | % 10
    d8 e f4 gis,      | % 11
    a2.      | % 12
    f'8 e d cis d4      | % 13
    d cis8 b cis a      | % 14
    d4 g, a      | % 15
    d,2. \bar "|."\bar "|." 
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
