
% BWV 362 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 362"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d'4     d bes c d      | % 1
    ees d8 c c4\fermata  c      | % 2
    c bes bes8 g a4      | % 3
    bes2.\fermata  c4      | % 4
    c c c8 d16 ees d8 c      | % 5
    bes2 bes4\fermata  bes      | % 6
    a8 f bes ees d c c4      | % 7
    bes2.\fermata  d4      | % 8
    d bes c d      | % 9
    ees d8 c c4\fermata  c      | % 10
    c bes bes8 g a4      | % 11
    bes2.\fermata  c4      | % 12
    c c c8 d16 ees d8 c      | % 13
    bes2 bes4\fermata  bes      | % 14
    a8 f bes ees d c c4      | % 15
    bes2.\fermata  a4      | % 16
    a a a a      | % 17
    bes2 bes4\fermata  bes      | % 18
    a a a a      | % 19
    bes2 bes4\fermata  d      | % 20
    d8 c bes4 c d      | % 21
    ees2 d4\fermata  d      | % 22
    c8 b c f ees d d4      | % 23
    %bartimesig: 
    \time 3/4 
    c2 b4 
    \bar "||"     | % 24
    c2 c4      | % 25
    d2 d4      | % 26
    ees2.      | % 27
    d2 d4      | % 28
    c2 c4      | % 29
    c ees8 d c b      | % 30
    c2\fermata  b4      | % 31
    c2 c4      | % 32
    d2 d4      | % 33
    ees2.      | % 34
    d2 d4      | % 35
    c2 bes4      | % 36
    bes d8 c bes a      | % 37
    bes2.\fermata  \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     g8 fis g4 g8 a bes4      | % 1
    bes8 a bes4 a g      | % 2
    fis d g f      | % 3
    f2. f8 e      | % 4
    f g a g a4. fis8      | % 5
    d ees f4 ees g      | % 6
    f8 ees d ees f g f ees      | % 7
    d2. f4      | % 8
    g8 fis g4 g8 a bes4      | % 9
    bes8 a bes4 a g      | % 10
    fis d g f      | % 11
    f2. f8 e      | % 12
    f g a g a4. fis8      | % 13
    d ees f4 ees g      | % 14
    f8 ees d ees f g f ees      | % 15
    d2. c4      | % 16
    f f fis8 g a fis      | % 17
    g ees f4 ees g      | % 18
    f ees8 d c4 f      | % 19
    f ees d f8 g      | % 20
    a4 d, g8 f f4      | % 21
    ees8 d c f f4 f      | % 22
    f8 d ees f g aes g f      | % 23
    %bartimesig: 
    \time 3/4 
    ees2 f4 
    \bar "||"     | % 24
    g2 f8 ees      | % 25
    d4 d'8 c bes aes      | % 26
    g f ees g c bes      | % 27
    a4 d, g      | % 28
    g f ees8 f      | % 29
    g4 aes g      | % 30
    g2 g4      | % 31
    g f2~      | % 32
    f8 g aes4 g      | % 33
    g2 f4      | % 34
    f2 g4      | % 35
    g2 g4      | % 36
    f g f      | % 37
    f2. \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'4     bes8 c d4 c f      | % 1
    ees8 c f4 f c      | % 2
    d8 a bes4 c c      | % 3
    d2. a8 bes      | % 4
    c d ees4 d a      | % 5
    bes aes g c      | % 6
    c bes bes a      | % 7
    f2. bes4      | % 8
    bes8 c d4 c f      | % 9
    ees8 c f4 f c      | % 10
    d8 a bes4 c c      | % 11
    d2. a8 bes      | % 12
    c d ees4 d a      | % 13
    bes aes g c      | % 14
    c bes bes a      | % 15
    f2. f8 a      | % 16
    c4 c d d8 c      | % 17
    bes4 aes g c      | % 18
    c c f c      | % 19
    bes8 aes g4 f bes      | % 20
    a bes8 a g a bes4      | % 21
    bes a bes bes      | % 22
    c c c b      | % 23
    %bartimesig: 
    \time 3/4 
    g2 d'4 
    \bar "||"     | % 24
    c4 bes aes      | % 25
    a2 bes4      | % 26
    b c2~      | % 27
    c4 bes bes      | % 28
    bes aes8 bes c d      | % 29
    ees4 f d      | % 30
    ees2 d4      | % 31
    c f ees      | % 32
    d8 ees f4 ees8 d      | % 33
    c4 bes c      | % 34
    bes2 bes4      | % 35
    c d ees      | % 36
    d ees c      | % 37
    d2. \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key bes \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    bes'8 a     g a g f ees f ees d      | % 1
    c4 d8 ees f4 ees      | % 2
    d g8 f e4 f      | % 3
    bes,2. f'8 g      | % 4
    a bes c4 fis,4. d8      | % 5
    g f ees d ees4 e      | % 6
    f g f8 ees f4      | % 7
    bes,2. bes'8 a      | % 8
    g a g f ees f ees d      | % 9
    c4 d8 ees f4 ees      | % 10
    d g8 f e4 f      | % 11
    bes,2. f'8 g      | % 12
    a bes c4 fis,4. d8      | % 13
    g f ees d ees4 e      | % 14
    f g f8 ees f4      | % 15
    bes,2. f4      | % 16
    f'8 g f ees d e fis d      | % 17
    g f ees d ees4 e      | % 18
    f c8 d ees g f ees      | % 19
    d bes ees4 bes bes'      | % 20
    fis g8 f ees f ees d      | % 21
    c4 f bes, bes'      | % 22
    a aes g8 f g4      | % 23
    %bartimesig: 
    \time 3/4 
    c,2 d4 
    \bar "||"     | % 24
    ees4 e f      | % 25
    f fis g      | % 26
    g aes g      | % 27
    fis g f      | % 28
    e f8 g aes4      | % 29
    g f g      | % 30
    c,2 g'4      | % 31
    aes a2      | % 32
    bes4 b2      | % 33
    c4 g a      | % 34
    bes8 c bes a g f      | % 35
    ees g f ees d c      | % 36
    f4 ees f      | % 37
    bes,2. \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose bes c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose bes c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose bes c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose bes c \ABvoiceDA }
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
