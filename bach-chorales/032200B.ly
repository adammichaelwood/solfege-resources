
% BWV 322 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 322"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
ASvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     g g a2      | % 1
    g\fermata  c4 d      | % 2
    c b a2      | % 3
    g\fermata  a8 b c4      | % 4
    g8 f e4 f e      | % 5
    d2 c4\fermata  g'      | % 6
    g g a2      | % 7
    g\fermata  c4 d      | % 8
    c b a2      | % 9
    g\fermata  a8 b c4      | % 10
    g8 f e4 f e      | % 11
    d2 c4\fermata  g'      | % 12
    g g a4. g8      | % 13
    fis g a4 g2\fermata       | % 14
    g4 g a b      | % 15
    c b a2      | % 16
    g\fermata  b4 c      | % 17
    d d d a      | % 18
    g e d2\fermata       | % 19
    e4 fis g8 f e4      | % 20
    fis2 g\fermata       | % 21
    d8 e f4 e d      | % 22
    e d c2\fermata       | % 23
    r4 g' g g      | % 24
    a4. g8 fis g a4      | % 25
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    d4     g8 f e4~ e d      | % 1
    e2 g4 g~      | % 2
    g8 fis g4 g8 fis16 e fis4      | % 3
    d2 f4~ f8 e      | % 4
    d4 c~ c8 b c4~      | % 5
    c8 b16 a b4 g d'      | % 6
    g8 f e4~ e d      | % 7
    e2 g4 g~      | % 8
    g8 fis g4 g8 fis16 e fis4      | % 9
    d2 f4~ f8 e      | % 10
    d4 c~ c8 b c4~      | % 11
    c8 b16 a b4 g e'      | % 12
    d8 c d f e d16 c b8 cis      | % 13
    d g4 fis8 d2      | % 14
    d4 e fis g~      | % 15
    g8 fis g4 g8 fis16 e fis4      | % 16
    d2 g4 g      | % 17
    g g~ g8 fis16 e fis8 f      | % 18
    e d d cis a2      | % 19
    c4 c d c~      | % 20
    c8 e d c b2      | % 21
    b4 a g8 c b4      | % 22
    c4. b8 g2      | % 23
    r4 d' c g      | % 24
    c8 d e4 d2      | % 25
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceCA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    b'8 c     d4 c8 b c4 b8 a      | % 1
    b2 e4 f      | % 2
    e d d~ d8 c      | % 3
    b2 d4 c      | % 4
    d g, f g      | % 5
    a g8 f e4 b'8 c      | % 6
    d4 c8 b c4 b8 a      | % 7
    b2 e4 f      | % 8
    e d d~ d8 c      | % 9
    b2 d4 c      | % 10
    d g, f g      | % 11
    a g8 f e4 c'      | % 12
    g8 a b4 c8 fis, g a      | % 13
    b4 a16 b c8 b2      | % 14
    b4~ b8 cis d4 d      | % 15
    c d e8 c a d16 c      | % 16
    b2 d4 e      | % 17
    d8 c b4 c d8 c      | % 18
    bes4 a8. g16 f2      | % 19
    g4 a g g      | % 20
    a8 c b a g2      | % 21
    g4 c,8 d e g g4      | % 22
    g g8. f16 e2      | % 23
    r4 g8 f e4 d8 e      | % 24
    f4 c'8 b a g4 fis8      | % 25
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceDA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g8 a     b4 e8 d c4 f      | % 1
    e2 e8 d c b      | % 2
    c4 g d' d,      | % 3
    g2 d'4 a      | % 4
    b c8 b a4 g      | % 5
    f g c, g'8 a      | % 6
    b4 e8 d c4 f      | % 7
    e2 e8 d c b      | % 8
    c4 g d' d,      | % 9
    g2 d'4 a      | % 10
    b c8 b a4 g      | % 11
    f g c, c'      | % 12
    b8 a g4 c8 d e4      | % 13
    d d, g2      | % 14
    g'8 fis e4 d8 c b4      | % 15
    a b8 g c a d4      | % 16
    g,2 g'8 f e4      | % 17
    b4. e8 a,4 d      | % 18
    g, a d2      | % 19
    c8 b a4 b c8 b      | % 20
    a4 d g,2      | % 21
    g4 a8 b c e g f      | % 22
    e c g' g, c2      | % 23
    r4 b c b      | % 24
    a8 b c4 d2      | % 25
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \ASvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
\part ASvoiceAA { \ASvoiceAA } { \transpose c c \ASvoiceAA }
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
\part AAvoiceBA { \quotearticulations \AAvoiceBA \ASvoiceAA } { \transpose c c \AAvoiceBA }
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
\part ATvoiceCA { \quotearticulations \ATvoiceCA \ASvoiceAA } { \transpose c c \ATvoiceCA }
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
\part ABvoiceDA { \quotearticulations \ABvoiceDA \ASvoiceAA } { \transpose c c \ABvoiceDA }
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
