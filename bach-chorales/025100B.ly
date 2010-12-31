
% BWV 251 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 251"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Cornet 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d d8 e f4      | % 1
    e d c\fermata  d8 c      | % 2
    b a g a b4 cis      | % 3
    d e d\fermata  d      | % 4
    d d d8 e f4      | % 5
    e d c\fermata  d8 c      | % 6
    b a g a b4 cis      | % 7
    d e d\fermata  d      | % 8
    g fis e fis      | % 9
    g8 fis e4 d\fermata  d      | % 10
    g d e b8 c      | % 11
    d4 c b\fermata  b      | % 12
    a8 b c4 b a      | % 13
    g8. a16 a4 g\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Cornet 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     a8 b c4 b c8 d      | % 1
    g, c4 b8 a4 a      | % 2
    g8 fis b, d g a16 b a4~      | % 3
    a8 d, b' a a4 g      | % 4
    a8 b c4 b c8 d      | % 5
    g, c4 b8 a4 a      | % 6
    g8 fis b, d g a16 b a4~      | % 7
    a8 d, b' a a4 b8 c      | % 8
    d4 a8 b cis4 d      | % 9
    d4. cis8 a4 b      | % 10
    b8 a g4 g g      | % 11
    a8 b c d e4 d,~      | % 12
    d8 b g d' g4. d8      | % 13
    b16 d g8~ g d32 b d16 b4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d d d8 e f4      | % 1
    e d c\fermata  d8 c      | % 2
    b a g a b4 cis      | % 3
    d e d\fermata  d      | % 4
    d d d8 e f4      | % 5
    e d c\fermata  d8 c      | % 6
    b a g a b4 cis      | % 7
    d e d\fermata  d      | % 8
    g fis e fis      | % 9
    g8 fis e4 d\fermata  d      | % 10
    g d e b8 c      | % 11
    d4 c b\fermata  b      | % 12
    a8 b c4 b a      | % 13
    e16 fis g4 fis8 g4\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'4     a8 g fis4 g c,8 d      | % 1
    e f g4 c, a'      | % 2
    d, e8 fis g fis e4      | % 3
    fis g fis b      | % 4
    a8 g fis4 g c,8 d      | % 5
    e f g4 c, a'      | % 6
    d, e8 fis g fis e4      | % 7
    fis g fis b8 a      | % 8
    g4 d' cis8 b a4      | % 9
    b8 d a4 a g8 a      | % 10
    b c b a g4 g      | % 11
    fis8 e e fis gis4 g      | % 12
    a8 d, g a d, g4 fis8      | % 13
    g b, e d d4 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceEA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g''4     d a g8 b a g      | % 1
    c4 d8 e16 f e4 d      | % 2
    d8 c b4 e a,      | % 3
    a8 d4 cis8 d4 g      | % 4
    d a g8 b a g      | % 5
    c4 d8 e16 f e4 d      | % 6
    d8 c b4 e a,      | % 7
    a8 d4 cis8 d4 d      | % 8
    d8 e fis g a4 d,      | % 9
    d8 b e4 fis b,8 a      | % 10
    g4 g'8 fis e4 e      | % 11
    d8 b a4 b b8 g      | % 12
    d'4 c8 a b4 c8 a      | % 13
    e'4 a, b s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceFA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     fis8 e d4 g a8 b      | % 1
    c4 g a fis      | % 2
    g4. fis8 e fis g a      | % 3
    fis b g a d,4 g      | % 4
    fis8 e d4 g a8 b      | % 5
    c4 g a fis      | % 6
    g4. fis8 e fis g a      | % 7
    fis b g a d,4 g8 a      | % 8
    b cis d4 a8 b c4      | % 9
    b8 g a4 d, g8 fis      | % 10
    e4 b c8 d e4      | % 11
    fis8 gis a4 e g      | % 12
    fis8 g e fis g e c d      | % 13
    e4 c8 d g,4 s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AvoiceAA } { \transpose g c \AAvoiceDA }
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AvoiceAA } { \transpose g c \ATvoiceEA }
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = ASvoiceCA \ASvoiceCA
\new Voice = AAvoiceDA \AAvoiceDA
\new Voice = ATvoiceEA \ATvoiceEA
\new Voice = ABvoiceFA \ABvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Corne")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
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
#(define output-suffix "Corne")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
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
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceCA { \ASvoiceCA } { \transpose g c \ASvoiceCA }
>>
}
\score {
<<
\new Voice = ASvoiceCA \ASvoiceCA
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
\part AAvoiceDA { \quotearticulations \AAvoiceDA \AvoiceAA } { \transpose g c \AAvoiceDA }
>>
}
\score {
<<
\new Voice = AAvoiceDA \AAvoiceDA
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
\part ATvoiceEA { \quotearticulations \ATvoiceEA \AvoiceAA } { \transpose g c \ATvoiceEA }
>>
}
\score {
<<
\new Voice = ATvoiceEA \ATvoiceEA
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
\part ABvoiceFA { \quotearticulations \ABvoiceFA \AvoiceAA } { \transpose g c \ABvoiceFA }
>>
}
\score {
<<
\new Voice = ABvoiceFA \ABvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
