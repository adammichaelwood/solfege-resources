
% BWV 195 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 195"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     d' d d d      | % 1
    e d8 c b4\fermata  a      | % 2
    b8 cis d4 d cis      | % 3
    d2.\fermata  d4      | % 4
    d d d8 c b c      | % 5
    d4 c8 b a4\fermata  d      | % 6
    c b a a16 g a8      | % 7
    g a b c d4\fermata  d      | % 8
    c b a8 b16 c a4      | % 9
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Trumpet 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     r a'8 b16 c b8 a g4~      | % 1
    g d16 b d8 d4 d      | % 2
    d8 a' r a b g a4      | % 3
    a2. a4      | % 4
    g a b8 a g4~      | % 5
    g8 d g, g' d4 r      | % 6
    r2 r4 r8 b      | % 7
    b4 r r b'~      | % 8
    b8 a4 g8 g16 fis g a d, b c8      | % 9
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     r d g, r      | % 1
    r d' g, d'      | % 2
    g,8 r r4 r2      | % 3
    d'2. d4      | % 4
    g, d' g, r      | % 5
    r g d' r      | % 6
    R1  | % 
    r2 r4 r8 d      | % 8
    g, d' g, r r4 d'8 d16 d      | % 9
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    g'4     d' d d d      | % 1
    e d8 c b4\fermata  a      | % 2
    b8 cis d4 e e      | % 3
    d2.\fermata  d4      | % 4
    d d d8 c b c      | % 5
    d4 c8 b a4\fermata  d      | % 6
    c b a a16 g a8      | % 7
    g a b c d4\fermata  d      | % 8
    c b a8 b16 c a4      | % 9
    g2.\fermata  s4 \bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     r fis g4. f8      | % 1
    e e fis16 e fis8 g4 a8 fis      | % 2
    g4. fis8 g b a g      | % 3
    fis2. a4      | % 4
    b a g8 a b a      | % 5
    g4 g16 fis g8 fis4 fis      | % 6
    g8 d d g e16 dis e8 fis dis      | % 7
    b c d g, g'4 fis8 g      | % 8
    g d d e e4 d      | % 9
    d2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     r a' b8 c d4~      | % 1
    d8 c b a g4 d'8 c      | % 2
    b a d fis b, e cis4      | % 3
    d2. fis4      | % 4
    g d b8 c d4      | % 5
    d8 b e4 a, b      | % 6
    b8 a b e cis16 b cis8 dis fis      | % 7
    e4 f8 e d4 d8 b      | % 8
    g a b4 e,8 a fis4      | % 9
    b2. s4 \bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     r d g8 a b g      | % 1
    c a d d, g4 fis8 d      | % 2
    g a b a g e a a,      | % 3
    d2. d'8 c      | % 4
    b a g fis g4. a8      | % 5
    b g e c d4 b      | % 6
    e8 fis g2 fis8 b      | % 7
    e, e' d c b4 b8 g      | % 8
    e fis g e c a d4      | % 9
    g,2. s4 \bar "|." 
}% end of last bar in partorvoice

 

AvoiceHA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    \partial 4
    r4     r d, g8 a b g      | % 1
    c a d d, g4 fis'8 d      | % 2
    g a b a g e a a,      | % 3
    d2. d'8 c      | % 4
    b a g fis g4 g,8 a      | % 5
    b g e' c d4 b      | % 6
    e8 fis g2 fis8 b,      | % 7
    e4 d8 c b4 b'8 g      | % 8
    e fis g e c a d d,      | % 9
    g2. s4 \bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose g c \AAvoiceEA }
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose g c \ATvoiceFA }
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose g c \ABvoiceGA }
\part AvoiceHA { \quotearticulations \AvoiceHA \AvoiceAA } { \transpose g c \AvoiceHA }
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
\new Voice = AvoiceHA \AvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book

#(define output-suffix "Trumpe")
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
#(define output-suffix "Trumpe")
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
#(define output-suffix "Timpani")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
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
\part ASvoiceDA { \ASvoiceDA } { \transpose g c \ASvoiceDA }
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
\part AAvoiceEA { \quotearticulations \AAvoiceEA \AvoiceAA } { \transpose g c \AAvoiceEA }
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
\part ATvoiceFA { \quotearticulations \ATvoiceFA \AvoiceAA } { \transpose g c \ATvoiceFA }
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
\part ABvoiceGA { \quotearticulations \ABvoiceGA \AvoiceAA } { \transpose g c \ABvoiceGA }
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
#(define output-suffix "Continuo")
\book {
\layout { \partpaper }
\score {
<<
\part AvoiceHA { \quotearticulations \AvoiceHA \AvoiceAA } { \transpose g c \AvoiceHA }
>>
}
\score {
<<
\new Voice = AvoiceHA \AvoiceHA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
