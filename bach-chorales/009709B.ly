
% BWV 97 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 97"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'8 c     d ees f4 g8 a bes4~      | % 1
    bes a bes\fermata  f8 ees      | % 2
    d c bes4~ bes8 a f'4~      | % 3
    f e f\fermata  f~      | % 4
    f8 bes4 a8 bes c16 d c8 bes      | % 5
    a2.\fermata  a4      | % 6
    g f8 ees d2~      | % 7
    d8 g, c4~ c8 b\fermata  bes4      | % 8
    c d8 e f4. a8      | % 9
    g f g4 f\fermata  f8 ees      | % 10
    d bes' a g f4 g8 a      | % 11
    bes4. a8 bes4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     f8 g a4 bes f'      | % 1
    g f f d8 c      | % 2
    bes4 f f4. f8      | % 3
    g2 a4 c      | % 4
    bes ees d g      | % 5
    f2. d4      | % 6
    d c bes8 c d b      | % 7
    g2 g4 g      | % 8
    f f8 g a4 d~      | % 9
    d c c d~      | % 10
    d8 ees f4~ f8 bes, ees c      | % 11
    f g f4 f s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #""
    \clef alto
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d8 ees     f4. a8 d,4 d      | % 1
    g, c d bes'      | % 2
    f8 ees d4 c8 f,4 a8      | % 3
    bes4 c c a'8 g      | % 4
    f4 ees f c8 g'      | % 5
    c2. a4      | % 6
    bes a8 g f ees d4      | % 7
    ees8 d c4 d d      | % 8
    c8 a f4~ f8 g a a'      | % 9
    bes a g4 a a~      | % 10
    a8 g a4 bes4. ees,8      | % 11
    f bes, f' c' d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     bes c d8 ees f4      | % 1
    ees2 d4\fermata  d8 ees      | % 2
    f4 f c d8 c      | % 3
    bes2 a4\fermata  f      | % 4
    bes c d8 ees16 f ees8 d      | % 5
    c2.\fermata  d4      | % 6
    bes c d8 ees f4      | % 7
    ees2 d4\fermata  d8 ees      | % 8
    f4 f c d      | % 9
    bes2 a4\fermata  f      | % 10
    bes c d ees      | % 11
    d c bes\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     f f bes bes8 a      | % 1
    g4 a f f      | % 2
    bes bes, f' a      | % 3
    g2 f4 c      | % 4
    f g8 ees bes' d, ees bes      | % 5
    f'2. a4      | % 6
    d, f f8 g aes g      | % 7
    g2 g4 bes      | % 8
    a8 c bes4 c8 bes a4      | % 9
    d, g c, f      | % 10
    f8 bes, f'4~ f c'8 a      | % 11
    f ees ees4 d s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f'4     d c bes8 c d4      | % 1
    d c bes bes8 c      | % 2
    d ees f4 f f8 ees      | % 3
    d4 c c a      | % 4
    bes8 d g, c f,4 g      | % 5
    a2. d4      | % 6
    g c, f,4. g8      | % 7
    g f ees16 f g8 g4 g'      | % 8
    c,8 ees d c16 bes f'4. f8      | % 9
    g4 c, f a,      | % 10
    bes8 ees a, c f, bes g ees'      | % 11
    bes g' c, f f4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes4     bes' a g d      | % 1
    ees f bes, bes'      | % 2
    bes,8 c d ees f4 d      | % 3
    g c, f f8 ees      | % 4
    d4 c bes ees      | % 5
    f2. fis4      | % 6
    g a bes b      | % 7
    c c, g' g      | % 8
    a8 f bes4 a8 g f4      | % 9
    f e f d      | % 10
    g f8 ees d4 c      | % 11
    d8 ees f4 bes, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose bes c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose bes c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose bes c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose bes c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose bes c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose bes c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose bes c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = ASvoiceDA \ASvoiceDA
\new Voice = AAvoiceEA \AAvoiceEA
\new Voice = ATvoiceFA \ATvoiceFA
\new Voice = ABvoiceGA \ABvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Violi")
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
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose bes c \AvoiceBA }
>>
}
\score {
<<
\new Voice = AvoiceBA \AvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Viola")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose bes c \AvoiceCA }
>>
}
\score {
<<
\new Voice = AvoiceCA \AvoiceCA
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
\part ASvoiceDA { \ASvoiceDA } { \transpose bes c \ASvoiceDA }
>>
}
\score {
<<
\new Voice = ASvoiceDA \ASvoiceDA
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose bes c \AAvoiceEA }
>>
}
\score {
<<
\new Voice = AAvoiceEA \AAvoiceEA
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose bes c \ATvoiceFA }
>>
}
\score {
<<
\new Voice = ATvoiceFA \ATvoiceFA
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose bes c \ABvoiceGA }
>>
}
\score {
<<
\new Voice = ABvoiceGA \ABvoiceGA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
