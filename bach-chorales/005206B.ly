
% BWV 52 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 52"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     f c' c bes8 a      | % 1
    g4 a bes8 a g4      | % 2
    f2\fermata  r4 f      | % 3
    g a bes g      | % 4
    c8 d b4 c2\fermata       | % 5
    r4 a a8 bes c4      | % 6
    bes a8 g f g a4      | % 7
    g2\fermata  r4 a8 g      | % 8
    f4 g8 a bes2\fermata       | % 9
    r4 a g a      | % 10
    bes2\fermata  r4 a      | % 11
    g f c' bes8 a      | % 12
    g4 a8 bes g2      | % 13
    f2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a8 c     f4 g a g8 f      | % 1
    c4 c f c      | % 2
    a2 r4 a      | % 3
    c f f c      | % 4
    g'8 a g4 g2      | % 5
    r4 f f8 g a4      | % 6
    g8 f c4 a8 c f f,      | % 7
    c'2 r4 f,      | % 8
    f c' g'2      | % 9
    r4 f g f8 ees      | % 10
    f2 r4 c      | % 11
    c a c f,8 a      | % 12
    c4 c8 f c a c4      | % 13
    a2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f4     f c' c bes8 a      | % 1
    g4 a bes8 a g4      | % 2
    f2\fermata  r4 f      | % 3
    g a bes g      | % 4
    c8 d b4 c2\fermata       | % 5
    r4 a a8 bes c4      | % 6
    bes a8 g f g a4      | % 7
    g2\fermata  r4 a8 g      | % 8
    f4 g8 a bes2\fermata       | % 9
    r4 a g a      | % 10
    bes2\fermata  r4 a      | % 11
    g f c' bes8 a      | % 12
    g4 a8 bes g2      | % 13
    f2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    c4     d e f8 e d4      | % 1
    e f f e      | % 2
    c2 r4 c      | % 3
    c c d g8 f      | % 4
    e f d g g2      | % 5
    r4 a8 g f4 f8 e      | % 6
    d4 e f8 d16 c c8 d      | % 7
    e2 r4 f8 e      | % 8
    d4 e8 fis g2      | % 9
    r4 f ees ees      | % 10
    d2 r4 c      | % 11
    c d8 e16 f g4 f      | % 12
    e f2 e4      | % 13
    f2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceEA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #""
    \clef "treble_8"
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    a'4     a8 bes c4 f, g      | % 1
    c2 d4 g,      | % 2
    a2 r4 a      | % 3
    g f f' e8 f      | % 4
    g f f e16 d e2      | % 5
    r4 c d c      | % 6
    d c8 a d e f4      | % 7
    c2 r4 c      | % 8
    d c d2      | % 9
    r4 d8 c bes4 c      | % 10
    f,2 r4 f      | % 11
    g a g c      | % 12
    c1      | % 13
    c2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceFA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    f8 e     d4 c8 bes a4 bes      | % 1
    c f d8 bes c4      | % 2
    f,2 r4 f'      | % 3
    e f8 e d4 e8 d      | % 4
    c f g4 c,2      | % 5
    r4 f8 e d4 a      | % 6
    bes c d8 c16 bes a8 bes      | % 7
    c2 r4 f      | % 8
    bes a g2      | % 9
    r4 d ees d8 c      | % 10
    bes2 r4 f'      | % 11
    e d e f      | % 12
    c f8 bes, c2      | % 13
    f,2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose f c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose f c \AvoiceBA }
\part AvoiceCA { \AvoiceCA } { \transpose f c \AvoiceCA }
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose f c \AvoiceDA }
\part AvoiceEA { \quotearticulations \AvoiceEA \AvoiceAA } { \transpose f c \AvoiceEA }
\part AvoiceFA { \quotearticulations \AvoiceFA \AvoiceAA } { \transpose f c \AvoiceFA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = AvoiceDA \AvoiceDA
\new Voice = AvoiceEA \AvoiceEA
\new Voice = AvoiceFA \AvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose f c \AvoiceAA }
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
#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose f c \AvoiceBA }
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
\part AvoiceCA { \AvoiceCA } { \transpose f c \AvoiceCA }
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
#(define output-suffix "Alto")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose f c \AvoiceDA }
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
#(define output-suffix "Tenor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceEA { \quotearticulations \AvoiceEA \AvoiceAA } { \transpose f c \AvoiceEA }
>>
}
\score {
<<
\new Voice = AvoiceEA \AvoiceEA
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
\part AvoiceFA { \quotearticulations \AvoiceFA \AvoiceAA } { \transpose f c \AvoiceFA }
>>
}
\score {
<<
\new Voice = AvoiceFA \AvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
