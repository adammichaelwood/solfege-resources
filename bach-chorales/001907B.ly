
% BWV 19 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 19"
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
    g''2 g4      | % 1
    g r r      | % 2
    r r g      | % 3
    g fis2      | % 4
    g2.\fermata       | % 5
    r4 g g      | % 6
    e g f      | % 7
    g a b      | % 8
    c2.\fermata       | % 9
    g2 g4      | % 10
    g r r      | % 11
    r r g      | % 12
    g fis2      | % 13
    g2.\fermata       | % 14
    r4 g g      | % 15
    e g f      | % 16
    g a b      | % 17
    c2.\fermata       | % 18
    r4 g f      | % 19
    r g a      | % 20
    g a b      | % 21
    c2.\fermata       | % 22
    c,2.~      | % 23
    c2.~      | % 24
    c8 d e d e f      | % 25
    g2.\fermata       | % 26
    e8 f e d c4~      | % 27
    c d e      | % 28
    f g f      | % 29
    e8 f g a f g      | % 30
    a2.\fermata       | % 31
    g8 a g f e4      | % 32
    f g2      | % 33
    a4 b c~      | % 34
    c b2      | % 35
    c2.\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    e'2 d4      | % 1
    c r r      | % 2
    r2 d4      | % 3
    e d2      | % 4
    d2.      | % 5
    r4 e d      | % 6
    c2 c8 d      | % 7
    e4 f d      | % 8
    e2.      | % 9
    e2 d4      | % 10
    c r r      | % 11
    r2 d4      | % 12
    e d2      | % 13
    d2.      | % 14
    r4 e d      | % 15
    c2 c8 d      | % 16
    e4 f d      | % 17
    e2.      | % 18
    c2.~      | % 19
    c2.      | % 20
    c4 f f      | % 21
    e2.      | % 22
    r4 e e      | % 23
    f r r      | % 24
    r c c      | % 25
    d2.      | % 26
    c2 g4      | % 27
    c,2 g'4      | % 28
    c g d'      | % 29
    c8 d e f d e      | % 30
    f2.      | % 31
    e8 f e d c4      | % 32
    d2 e4      | % 33
    f2 e8 f      | % 34
    g2.      | % 35
    g2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Horn 3"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c'4 g g      | % 1
    e r r      | % 2
    R2. *4  | % 
    r4 c' c,      | % 7
    c c8 c g' g      | % 8
    g2.      | % 9
    c4 g g      | % 10
    e r r      | % 11
    R2. *4  | % 
    r4 c' c,      | % 16
    c c8 c g' g      | % 17
    g2.      | % 18
    R2. *2  | % 
    r4 c, g'      | % 21
    g2.      | % 22
    r4 c c      | % 23
    c, r r      | % 24
    r g' g      | % 25
    g2.      | % 26
    r4 g c      | % 27
    f r r      | % 28
    R2.  | % 
    r4 c c      | % 30
    c2.      | % 31
    r4 c g      | % 32
    g2 g4      | % 33
    d'2 c4      | % 34
    d2.      | % 35
    e2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceDA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c4 c g      | % 1
    c r r      | % 2
    R2. *4  | % 
    r4 c c      | % 7
    c c g      | % 8
    c2.      | % 9
    c4 c g      | % 10
    c r r      | % 11
    R2. *4  | % 
    r4 c c      | % 16
    c c g      | % 17
    c2.      | % 18
    R2. *2  | % 
    r4 c g      | % 21
    c2.      | % 22
    r4 c c      | % 23
    c r r      | % 24
    r c c      | % 25
    g2.      | % 26
    r4 c c      | % 27
    c r r      | % 28
    R2.  | % 
    r4 c c      | % 30
    c2.      | % 31
    r4 c c      | % 32
    g g c      | % 33
    r g c      | % 34
    g2.      | % 35
    c2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c'2 d4      | % 1
    e2 d4      | % 2
    c2 b4      | % 3
    a2.      | % 4
    g2.\fermata       | % 5
    c2 d4      | % 6
    e2 f4      | % 7
    e d2      | % 8
    c2.\fermata       | % 9
    c2 d4      | % 10
    e2 d4      | % 11
    c2 b4      | % 12
    a2.      | % 13
    g2.      | % 14
    c2 d4      | % 15
    e2 f4      | % 16
    e d2      | % 17
    c2.      | % 18
    e2 f4      | % 19
    g2 f4      | % 20
    e d2      | % 21
    e2.      | % 22
    g4 g2      | % 23
    a g4      | % 24
    f e2      | % 25
    d2.      | % 26
    e2 g4      | % 27
    f2 e4      | % 28
    c d2      | % 29
    e2.      | % 30
    c2.      | % 31
    e2 g4      | % 32
    f2 e4      | % 33
    d2 e4      | % 34
    d2.      | % 35
    c2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    g'2 g4      | % 1
    g2 fis4      | % 2
    g a g      | % 3
    e fis2      | % 4
    d2.      | % 5
    c2 g'4      | % 6
    g2 a4      | % 7
    e a g      | % 8
    g2.      | % 9
    g2 g4      | % 10
    g2 fis4      | % 11
    g a g      | % 12
    e fis2      | % 13
    d2.      | % 14
    c2 g'4      | % 15
    g2 a4      | % 16
    e a g      | % 17
    g2.      | % 18
    g2 a4      | % 19
    bes2 a4      | % 20
    e a g      | % 21
    g2.      | % 22
    c4 bes2      | % 23
    a4 b c      | % 24
    c g2      | % 25
    g2.      | % 26
    g2 g4      | % 27
    a2 g4      | % 28
    f d g      | % 29
    g2.      | % 30
    f2.      | % 31
    g2 g4      | % 32
    g2 g4      | % 33
    f d g      | % 34
    g2.      | % 35
    g2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceGA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    e'2 b4      | % 1
    c b a      | % 2
    e' d d      | % 3
    c a2      | % 4
    b2.      | % 5
    g2 b4      | % 6
    c2 c4      | % 7
    c2 b4      | % 8
    g2.      | % 9
    e'2 b4      | % 10
    c b a      | % 11
    e' d d      | % 12
    c a2      | % 13
    b2.      | % 14
    g2 b4      | % 15
    c2 c4      | % 16
    c2 b4      | % 17
    g2.      | % 18
    c2 c4      | % 19
    g2 c4      | % 20
    c2 b4      | % 21
    g2.      | % 22
    e'4 e2      | % 23
    c4 d e      | % 24
    c2 c4      | % 25
    b2.      | % 26
    c2 c4      | % 27
    c2 b4      | % 28
    c b2      | % 29
    c bes4      | % 30
    a2.      | % 31
    c2 e4      | % 32
    d2 c4      | % 33
    a g2      | % 34
    g8 d' f e f4      | % 35
    e2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceHA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key c \major 
    %bartimesig: 
    \time 3/4 
    c'2 g4      | % 1
    c,2 d4      | % 2
    e fis g      | % 3
    c, d2      | % 4
    g,2.      | % 5
    e'2 g4      | % 6
    c b a      | % 7
    g f g      | % 8
    c,2.      | % 9
    c'2 g4      | % 10
    c,2 d4      | % 11
    e fis g      | % 12
    c, d2      | % 13
    g,2.      | % 14
    e'2 g4      | % 15
    c b a      | % 16
    g f g      | % 17
    c,2.      | % 18
    c'2 a4      | % 19
    e2 f4      | % 20
    g f g      | % 21
    c,2.      | % 22
    c4 c'8 bes a g      | % 23
    f2 e4      | % 24
    a8 b c4 c,      | % 25
    g'2.      | % 26
    c2 e,4      | % 27
    f2 g4      | % 28
    a b g      | % 29
    c2 c,4      | % 30
    f2.      | % 31
    c2 c'4      | % 32
    c b c      | % 33
    f, g c,      | % 34
    g2.      | % 35
    c2. \bar "|."\bar "|." 
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
