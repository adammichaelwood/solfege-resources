
% BWV 412 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 412"
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
    bes'4     d4. c8 bes4\fermata  d      | % 1
    c bes bes a      | % 2
    bes2\fermata  r4 d      | % 3
    f4. ees8 d4\fermata  d8 c      | % 4
    bes a g4 a4. g8      | % 5
    fis4 d\fermata  r a'      | % 6
    c4. bes8 a4 bes      | % 7
    bes a g4. g8      | % 8
    a2\fermata  r4 a      | % 9
    bes c d\fermata  d8 e16 f      | % 10
    e4. d8 cis4 d      | % 11
    d4. cis8 d4\fermata  fis,      | % 12
    g a bes\fermata  g8 a16 bes      | % 13
    a4. g8 fis4 g      | % 14
    g4. fis8 g4\fermata  s4 \bar "|." 
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
    g'4     a8 g a4 g g      | % 1
    g f ees8 d ees4      | % 2
    d2 r4 f      | % 3
    f4. f8 f4 d      | % 4
    d g8 f g4 ees      | % 5
    d a r f'      | % 6
    g8 f g4 f8 a g f      | % 7
    e4 f~ f~ f8 e      | % 8
    f2 r4 f      | % 9
    f f f f      | % 10
    bes8 a b4 a a      | % 11
    a a a d,      | % 12
    d d d g8 f      | % 13
    ees d e4 d d      | % 14
    d2 d4 s4 \bar "|." 
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
    d'4     d d d bes      | % 1
    c d g, f8 ees      | % 2
    f2 r4 bes      | % 3
    c8 bes c4 bes a      | % 4
    g8 a bes4 ees8 d c bes      | % 5
    a4 fis r d'      | % 6
    c c c d      | % 7
    g, a8 bes c4. c8      | % 8
    c2 r4 c      | % 9
    d c bes d      | % 10
    g8 f e4 e f      | % 11
    e8 d e4 fis a,      | % 12
    bes a g bes      | % 13
    c8 bes a4 a bes      | % 14
    a8 g a4 b s4 \bar "|." 
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
    g'4     fis4. fis8 g4 g8 f      | % 1
    ees4 d c4. c8      | % 2
    bes2 r4 bes'      | % 3
    a4. a8 bes4 fis      | % 4
    g8 f ees d c4 c      | % 5
    d d, r d'      | % 6
    e4. e8 f4 bes,      | % 7
    c f c4. c8      | % 8
    f,2 r4 f'8 ees      | % 9
    d c bes a bes4 bes8 a      | % 10
    g4 gis a d      | % 11
    a2 d4 d8 c      | % 12
    bes a g fis g4 ees'8 d      | % 13
    c4 cis d8 c bes g      | % 14
    d'2 g,4 s4 \bar "|." 
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
