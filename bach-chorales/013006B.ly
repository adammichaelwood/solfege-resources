
% BWV 130 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 130"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r2 c'8 d      | % 2
    e f g a b4      | % 3
    c2\fermata  r4      | % 4
    R2.  | % 
    r2 c,8 b      | % 6
    c d e f g a      | % 7
    b2\fermata  r4      | % 8
    R2.  | % 
    r2 c,8 d      | % 10
    e f g a g f      | % 11
    e2\fermata  r4      | % 12
    R2.  | % 
    r2 c8 d      | % 14
    e f g a b4      | % 15
    c2\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r2 g'4      | % 2
    c e d      | % 3
    e2 r4      | % 4
    R2.  | % 
    r2 e4      | % 6
    f c8 d e f      | % 7
    g2 r4      | % 8
    R2.  | % 
    r2 c,8 b      | % 10
    c d e f e d      | % 11
    c2 r4      | % 12
    R2.  | % 
    r2 c4~      | % 14
    c d g      | % 15
    g2 s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Horn 3"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r2 e4      | % 2
    e c g'      | % 3
    g2 r4      | % 4
    R2.  | % 
    r2 e4      | % 6
    c' c, c'      | % 7
    d2 r4      | % 8
    R2.  | % 
    r2 e,8 g      | % 10
    c4 r g      | % 11
    g2 r4      | % 12
    R2.  | % 
    r2 c,4      | % 14
    g' g d'      | % 15
    e2. \bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    r4     R2.  | % 
    r2 c4      | % 2
    c c g      | % 3
    c2 r4      | % 4
    R2.  | % 
    r2 c4      | % 6
    c c c      | % 7
    g2 r4      | % 8
    R2.  | % 
    r2 c4      | % 10
    c r g      | % 11
    c2 r4      | % 12
    c2 r4      | % 13
    r2 c4      | % 14
    c g g      | % 15
    c2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    c'4     c2 b4      | % 1
    a2 g4      | % 2
    c2 d4      | % 3
    e2\fermata  e4      | % 4
    e2 e4      | % 5
    d2 c4      | % 6
    f2 e4      | % 7
    d2\fermata  c4      | % 8
    d2 e4      | % 9
    d2 c4      | % 10
    a b2      | % 11
    c\fermata  g'4      | % 12
    e4. d8 c4      | % 13
    d4. e8 f4      | % 14
    e d2      | % 15
    c\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    g'4     g2 g8 f      | % 1
    e4. f8 g4      | % 2
    e c' b      | % 3
    g2 g4      | % 4
    g2 g4      | % 5
    f e e      | % 6
    a g8 f c'4      | % 7
    b2 e,8 fis      | % 8
    g2 g4      | % 9
    gis2 a4      | % 10
    a g8 f g4      | % 11
    g2 g4      | % 12
    g4. f8 g4      | % 13
    a g c      | % 14
    c b8 a g4      | % 15
    g2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceGA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    e'4     e2 d4      | % 1
    c2 c4      | % 2
    c g g'      | % 3
    e2 c4      | % 4
    c2 b8 a      | % 5
    b2 c4      | % 6
    c4. b8 g'4      | % 7
    g2 c,4      | % 8
    b2 c4      | % 9
    b2 c4      | % 10
    c b8 c d4      | % 11
    e2 d4      | % 12
    c g c      | % 13
    c b a      | % 14
    g g'4. f8      | % 15
    e2 s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceHA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    \partial 4
    c4     c8 d e f g4      | % 1
    a,8 b c d e4      | % 2
    a e g      | % 3
    c,2 c4      | % 4
    c8 d e f g a      | % 5
    gis fis gis e a g      | % 6
    f4 e8 d c4      | % 7
    g'2 a4      | % 8
    g8 f e d c d      | % 9
    e d c b a4      | % 10
    f' d g      | % 11
    c,2 b4      | % 12
    c8 b c d e c      | % 13
    f e f g a b      | % 14
    c4 g2      | % 15
    c, s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose c c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose c c \AvoiceCA }
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose c c \AvoiceDA }
\part ASvoiceEA { \ASvoiceEA } { \transpose c c \ASvoiceEA }
\part AAvoiceFA { \quotearticulations \AAvoiceFA \AvoiceAA } { \transpose c c \AAvoiceFA }
\part ATvoiceGA { \quotearticulations \ATvoiceGA \AvoiceAA } { \transpose c c \ATvoiceGA }
\part ABvoiceHA { \quotearticulations \ABvoiceHA \AvoiceAA } { \transpose c c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = AvoiceAA \AvoiceAA
\new Voice = AvoiceBA \AvoiceBA
\new Voice = AvoiceCA \AvoiceCA
\new Voice = AvoiceDA \AvoiceDA
\new Voice = ASvoiceEA \ASvoiceEA
\new Voice = AAvoiceFA \AAvoiceFA
\new Voice = ATvoiceGA \ATvoiceGA
\new Voice = ABvoiceHA \ABvoiceHA
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
\part AvoiceAA { \AvoiceAA } { \transpose c c \AvoiceAA }
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
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose c c \AvoiceBA }
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
#(define output-suffix "Hor")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose c c \AvoiceCA }
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
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceDA { \quotearticulations \AvoiceDA \AvoiceAA } { \transpose c c \AvoiceDA }
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
#(define output-suffix "Soprano")
\book {
\layout { \partpaper }
\score {
<<
\part ASvoiceEA { \ASvoiceEA } { \transpose c c \ASvoiceEA }
>>
}
\score {
<<
\new Voice = ASvoiceEA \ASvoiceEA
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
\part AAvoiceFA { \quotearticulations \AAvoiceFA \AvoiceAA } { \transpose c c \AAvoiceFA }
>>
}
\score {
<<
\new Voice = AAvoiceFA \AAvoiceFA
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
\part ATvoiceGA { \quotearticulations \ATvoiceGA \AvoiceAA } { \transpose c c \ATvoiceGA }
>>
}
\score {
<<
\new Voice = ATvoiceGA \ATvoiceGA
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
\part ABvoiceHA { \quotearticulations \ABvoiceHA \AvoiceAA } { \transpose c c \ABvoiceHA }
>>
}
\score {
<<
\new Voice = ABvoiceHA \ABvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
