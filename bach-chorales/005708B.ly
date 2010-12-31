
% BWV 57 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 57"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes'4 bes f'      | % 1
    d4. c8 bes4      | % 2
    a bes8 a g f      | % 3
    bes4 c d8 ees      | % 4
    c2 bes4\fermata       | % 5
    bes bes f'      | % 6
    d4. c8 bes4      | % 7
    a bes8 a g f      | % 8
    bes4 c d8 ees      | % 9
    c2 bes4\fermata       | % 10
    f' ees8 d c bes      | % 11
    g'2\fermata  r4      | % 12
    d ees f      | % 13
    f g8 f ees d      | % 14
    c2\fermata  r4      | % 15
    f, g a      | % 16
    bes c d8 ees      | % 17
    c2 bes4\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    f4 f f      | % 1
    f4. f8 g4      | % 2
    c, c c      | % 3
    f g8 a bes c      | % 4
    a2 f4      | % 5
    f f f      | % 6
    f4. f8 g4      | % 7
    c, c c      | % 8
    f g8 a bes c      | % 9
    a2 f4      | % 10
    bes a f      | % 11
    bes2 r4      | % 12
    bes bes a8 g      | % 13
    f4 bes g      | % 14
    a2 r4      | % 15
    f c c      | % 16
    bes f' f      | % 17
    f4. ees8 d4 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #""
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    d'4 d c      | % 1
    bes4. c8 d e      | % 2
    f4 f a,      | % 3
    bes ees, f      | % 4
    f' ees d      | % 5
    d d c      | % 6
    bes4. c8 d e      | % 7
    f4 f a,      | % 8
    bes ees, f      | % 9
    f' ees d      | % 10
    d ees f      | % 11
    ees2 r4      | % 12
    f g c,      | % 13
    c bes bes      | % 14
    f'2 r4      | % 15
    bes, a8 g ees'4      | % 16
    d c bes      | % 17
    bes a f \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 3/4 
    bes'4 bes a      | % 1
    bes4. a8 g4      | % 2
    f c ees      | % 3
    d c bes      | % 4
    f'2 bes,4      | % 5
    bes' bes a      | % 6
    bes4. a8 g4      | % 7
    f c ees      | % 8
    d c bes      | % 9
    f'2 bes,4      | % 10
    bes c d      | % 11
    ees2 r4      | % 12
    bes' a8 g f ees      | % 13
    d4 d ees      | % 14
    f2 r4      | % 15
    d e fis      | % 16
    g a bes      | % 17
    f2 bes,4 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose bes c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose bes c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose bes c \AvoiceCA }
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose bes c \AvoiceDA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = AvoiceDA \AvoiceDA
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
#(define output-suffix "Alto")
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
#(define output-suffix "Tenor")
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
#(define output-suffix "Bass")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose bes c \AvoiceDA }
>>
}
\score {
<<
\new Voice = AvoiceDA \AvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
