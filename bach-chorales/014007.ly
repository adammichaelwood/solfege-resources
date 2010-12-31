
% BWV 140 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 140"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees2 g      | % 1
    bes2. bes4      | % 2
    bes2 bes      | % 3
    c1      | % 4
    bes\fermata       | % 5
    r2 bes      | % 6
    ees bes      | % 7
    ees4 f g2      | % 8
    f ees      | % 9
    d c      | % 10
    bes1\fermata       | % 11
    r2 bes      | % 12
    ees bes      | % 13
    c g      | % 14
    aes4 g f2      | % 15
    ees1\fermata       | % 16
    ees2 g      | % 17
    bes2. bes4      | % 18
    bes2 bes      | % 19
    c1      | % 20
    bes\fermata       | % 21
    r2 bes      | % 22
    ees bes      | % 23
    ees4 f g2      | % 24
    f ees      | % 25
    d c      | % 26
    bes1\fermata       | % 27
    r2 bes      | % 28
    ees bes      | % 29
    c g      | % 30
    aes4 g f2      | % 31
    ees1\fermata       | % 32
    r2 bes'      | % 33
    bes2. aes4      | % 34
    g2 f      | % 35
    ees1\fermata       | % 36
    r2 bes'      | % 37
    bes2. aes4      | % 38
    g2 f      | % 39
    ees1\fermata       | % 40
    r2 f      | % 41
    g aes      | % 42
    g1\fermata       | % 43
    r2 bes      | % 44
    c d      | % 45
    ees\fermata  ees4 f      | % 46
    g2 f      | % 47
    ees\fermata  bes      | % 48
    ees bes      | % 49
    c g      | % 50
    aes4 g f2      | % 51
    ees1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    bes2 ees      | % 1
    g f      | % 2
    g f      | % 3
    g f      | % 4
    f1      | % 5
    r2 f      | % 6
    bes2. aes4      | % 7
    g aes bes2      | % 8
    bes c      | % 9
    c4 bes2 a4      | % 10
    f1      | % 11
    r2 g      | % 12
    aes g      | % 13
    ees ees      | % 14
    ees d      | % 15
    bes1      | % 16
    bes2 ees      | % 17
    g f      | % 18
    g f      | % 19
    g f      | % 20
    f1      | % 21
    r2 f      | % 22
    bes2. aes4      | % 23
    g aes bes2      | % 24
    bes c      | % 25
    c4 bes2 a4      | % 26
    f1      | % 27
    r2 g      | % 28
    aes g      | % 29
    ees ees      | % 30
    ees d      | % 31
    bes1      | % 32
    r2 f'      | % 33
    g2. f4      | % 34
    bes, c d2      | % 35
    c1      | % 36
    r2 d4 ees      | % 37
    f2 f      | % 38
    f4 ees2 d4      | % 39
    bes1      | % 40
    r2 d      | % 41
    ees2. d4      | % 42
    ees1      | % 43
    r2 g      | % 44
    g4 f f g      | % 45
    g2 g4 aes      | % 46
    bes2. aes4      | % 47
    g2 g4 aes      | % 48
    bes aes bes g      | % 49
    aes2 ees      | % 50
    ees d      | % 51
    bes1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    g'2 bes      | % 1
    ees d      | % 2
    ees bes      | % 3
    bes a      | % 4
    d1      | % 5
    r2 d      | % 6
    ees ees      | % 7
    bes ees      | % 8
    f f      | % 9
    f2. c4      | % 10
    d1      | % 11
    r2 ees      | % 12
    ees ees4 des      | % 13
    c2 c      | % 14
    c4 bes aes2      | % 15
    g1      | % 16
    g2 bes      | % 17
    ees d      | % 18
    ees bes      | % 19
    bes a      | % 20
    d1      | % 21
    r2 d      | % 22
    ees ees      | % 23
    bes ees      | % 24
    f f      | % 25
    f2. c4      | % 26
    d1      | % 27
    r2 ees      | % 28
    ees ees4 des      | % 29
    c2 c      | % 30
    c4 bes aes2      | % 31
    g1      | % 32
    r2 bes      | % 33
    ees4 d c d      | % 34
    ees2 bes4 aes      | % 35
    g1      | % 36
    r2 bes      | % 37
    bes4 c d2      | % 38
    bes4 c2 bes4      | % 39
    g1      | % 40
    r2 bes      | % 41
    bes c4 aes      | % 42
    bes1      | % 43
    r2 ees      | % 44
    ees d      | % 45
    c ees      | % 46
    ees d      | % 47
    ees ees      | % 48
    bes ees      | % 49
    ees2. c4      | % 50
    c bes aes2      | % 51
    g1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key es \major 
    %bartimesig: 
    \time 4/4 
    ees1~      | % 1
    ees4 g bes aes      | % 2
    g f ees d      | % 3
    ees c f2      | % 4
    bes,1      | % 5
    r2 bes'4 aes      | % 6
    g aes g f      | % 7
    ees2 ees'      | % 8
    d4 c bes a      | % 9
    bes2 f      | % 10
    bes,1      | % 11
    r2 ees4 des      | % 12
    c d ees2      | % 13
    aes4 bes c2      | % 14
    f, bes,      | % 15
    ees1      | % 16
    ees~      | % 17
    ees4 g bes aes      | % 18
    g f ees d      | % 19
    ees c f2      | % 20
    bes,1      | % 21
    r2 bes'4 aes      | % 22
    g aes g f      | % 23
    ees2 ees'      | % 24
    d4 c bes a      | % 25
    bes2 f      | % 26
    bes,1      | % 27
    r2 ees4 des      | % 28
    c d ees2      | % 29
    aes4 bes c2      | % 30
    f, bes,      | % 31
    ees1      | % 32
    r2 d      | % 33
    ees f      | % 34
    g4 aes bes bes,      | % 35
    c1      | % 36
    r2 g'      | % 37
    d4 c bes2      | % 38
    ees4 c aes bes      | % 39
    ees1      | % 40
    r2 bes'4 aes      | % 41
    g2 f      | % 42
    ees1      | % 43
    r2 ees'      | % 44
    a, b      | % 45
    c c      | % 46
    g4 aes bes2      | % 47
    c, ees4 f      | % 48
    g f g ees      | % 49
    aes, bes c2      | % 50
    f bes,      | % 51
    ees1 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose es c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose es c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose es c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose es c \ABvoiceDA }
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
