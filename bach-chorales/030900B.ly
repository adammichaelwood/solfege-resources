
% BWV 309 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 309"
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
    \partial 4
    g'4     bes g fis g      | % 1
    a2 bes4\fermata  bes      | % 2
    a bes c a      | % 3
    bes2 a4\fermata  bes      | % 4
    a g g fis      | % 5
    g2.\fermata  g4      | % 6
    bes g fis g      | % 7
    a2 bes4\fermata  bes      | % 8
    a bes c a      | % 9
    bes2 a4\fermata  bes      | % 10
    a g g fis      | % 11
    g2.\fermata  bes4      | % 12
    bes bes a bes      | % 13
    g2 fis4\fermata  bes      | % 14
    bes bes a bes      | % 15
    g2 fis4\fermata  g      | % 16
    a8 b c4 c b      | % 17
    c\fermata  a bes a      | % 18
    g fis g\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     g d d8 c bes4      | % 1
    ees d d g~      | % 2
    g8 fis g4~ g8 e d fis      | % 3
    d4 e fis g      | % 4
    g8 fis e4 d2      | % 5
    d2. d4      | % 6
    g d d8 c bes4      | % 7
    ees d d g~      | % 8
    g8 fis g4~ g8 e d fis      | % 9
    d4 e fis g      | % 10
    g8 fis e4 d2      | % 11
    d2. g4      | % 12
    g g~ g8 f f4~      | % 13
    f8 ees16 d c4 d d      | % 14
    e8 f g4 g f~      | % 15
    f8 ees16 d ees4 d g      | % 16
    f g8 aes g4 g      | % 17
    g g fis8 g a4      | % 18
    d,8 ees d4 d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     d bes a g      | % 1
    g4. fis8 g4 d'      | % 2
    d d e8 c d c      | % 3
    bes a g4 d' d      | % 4
    ees8 a, bes4~ bes8 a16 g a4      | % 5
    bes2. bes4      | % 6
    d bes a g      | % 7
    g4. fis8 g4 d'      | % 8
    d d e8 c d c      | % 9
    bes a g4 d' d      | % 10
    ees8 a, bes4~ bes8 a16 g a4      | % 11
    bes2. d4      | % 12
    d d d d~      | % 13
    d8 c16 bes a8 g a4 g8 a      | % 14
    bes d c4 c d      | % 15
    bes a a c      | % 16
    c8 d ees4 d8 c d4      | % 17
    ees e d~ d8 c      | % 18
    bes4 a8 c b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g4     g8 a bes c d4 ees8 d      | % 1
    c4 d g, g'      | % 2
    d g8 f e a fis d      | % 3
    g4 cis, d g,      | % 4
    c cis d d,      | % 5
    g2. g4      | % 6
    g8 a bes c d4 ees8 d      | % 7
    c4 d g, g'      | % 8
    d g8 f e a fis d      | % 9
    g4 cis, d g,      | % 10
    c cis d d,      | % 11
    g2. g4      | % 12
    g8 a bes c d4 bes      | % 13
    ees2 d4 g~      | % 14
    g8 f e c f ees d bes      | % 15
    ees d c a d4 e      | % 16
    f ees8 f g4 g,      | % 17
    c cis d8 e fis4      | % 18
    g8 c, d4 g, s4 \bar "|." 
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
