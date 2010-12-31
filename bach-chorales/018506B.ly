
% BWV 185 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 185"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a''4~     a8 g~ g fis g a bes c      | % 1
    d d, g a fis4\fermata  d'      | % 2
    c bes8 a g g, a b      | % 3
    c d ees f g4 a~      | % 4
    a8 g~ g fis g a bes c      | % 5
    d d, g a fis4\fermata  d'      | % 6
    c bes8 a g g, a b      | % 7
    c d ees f g4\fermata  f~      | % 8
    f8 ees d c bes2~      | % 9
    bes8 c a4 bes\fermata  f'      | % 10
    bes8 a g bes~ bes a~ a g~      | % 11
    g fis g4 c2~      | % 12
    c8 g c bes a4 a8 g      | % 13
    f ees d bes'~ bes a16 g a8 f16 g      | % 14
    aes4\fermata  g8 a bes c d4~      | % 15
    d8 c bes a~ a g~ g fis      | % 16
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'8 c     bes4 c bes8 a g a      | % 1
    bes c c8. bes32 c d4\fermata  d8 ees      | % 2
    f ees d c bes4 c8 d      | % 3
    ees2 d4\fermata  d8 c      | % 4
    bes4 c bes8 a g a      | % 5
    bes c c8. bes32 c d4\fermata  d8 ees      | % 6
    f ees d c bes4 c8 d      | % 7
    ees2 d4\fermata  f      | % 8
    g f8 ees d c bes c      | % 9
    d ees16 f c4 bes\fermata  d      | % 10
    d d c bes      | % 11
    a g\fermata  bes a      | % 12
    g2 f4\fermata  f      | % 13
    bes bes c c      | % 14
    d\fermata  ees d4. c8      | % 15
    bes a g a bes4 a      | % 16
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     bes a g d'8 c      | % 1
    bes a g4 a bes      | % 2
    a8 g f4 g4. f8      | % 3
    ees f g a bes4 a      | % 4
    bes a g d'8 c      | % 5
    bes a g4 a bes      | % 6
    a8 g f4 g4. f8      | % 7
    ees f g a bes4 bes8 a      | % 8
    g4 a bes8 g f ees      | % 9
    d c16 bes f'4 f f      | % 10
    g g8 f ees4 d      | % 11
    d d r8 g4 f8      | % 12
    f e16 d e4 f f      | % 13
    f bes8 a g4 f      | % 14
    f ees f8 g a4      | % 15
    d,4. c8 bes c d4      | % 16
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceDA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d d8 c bes a      | % 1
    g4 g d' bes      | % 2
    c d ees8 d ees f      | % 3
    g f ees d16 c d4 d      | % 4
    d d d8 c bes a      | % 5
    g4 g d' bes      | % 6
    c d ees8 d ees f      | % 7
    g f ees d16 c d4 d8 c      | % 8
    bes4 f' f8 ees d c      | % 9
    bes4 c d d8 c      | % 10
    bes4 bes a bes      | % 11
    c bes g a8 bes      | % 12
    c2 c4 c      | % 13
    d d c f8 ees      | % 14
    d4 c bes a      | % 15
    bes8 c d ees d4. c8      | % 16
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceEA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    fis4     g d g, g'      | % 1
    f ees d g      | % 2
    a bes ees, d      | % 3
    c2 g4 fis'      | % 4
    g d g, g'      | % 5
    f ees d g      | % 6
    a bes ees, d      | % 7
    c2 g4 d'      | % 8
    ees f bes,8 c d ees      | % 9
    f4 f, bes bes'8 a      | % 10
    g f e4 fis g      | % 11
    d g, e' f      | % 12
    c2 f,4 f'8 ees      | % 13
    d c bes4 ees f      | % 14
    b, c d8 e fis4      | % 15
    g8 a bes c d4 d,      | % 16
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose bes c \AvoiceAA }
\part ASvoiceBA { \ASvoiceBA } { \transpose bes c \ASvoiceBA }
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose bes c \AAvoiceCA }
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose bes c \ATvoiceDA }
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose bes c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = ASvoiceBA \ASvoiceBA
\new Voice = AAvoiceCA \AAvoiceCA
\new Voice = ATvoiceDA \ATvoiceDA
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Violin")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose bes c \AvoiceAA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
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
\part ASvoiceBA { \ASvoiceBA } { \transpose bes c \ASvoiceBA }
>>
}
\score {
<<
\new Voice = ASvoiceBA \ASvoiceBA
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
\part AAvoiceCA { \quotearticulations \AAvoiceCA \AvoiceAA } { \transpose bes c \AAvoiceCA }
>>
}
\score {
<<
\new Voice = AAvoiceCA \AAvoiceCA
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
\part ATvoiceDA { \quotearticulations \ATvoiceDA \AvoiceAA } { \transpose bes c \ATvoiceDA }
>>
}
\score {
<<
\new Voice = ATvoiceDA \ATvoiceDA
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
\part ABvoiceEA { \quotearticulations \ABvoiceEA \AvoiceAA } { \transpose bes c \ABvoiceEA }
>>
}
\score {
<<
\new Voice = ABvoiceEA \ABvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
