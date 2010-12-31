
% BWV 79 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 79"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    b'4. c8 b a b c      | % 1
    d c b2 d4      | % 2
    e8 d c2 e4      | % 3
    d8 c b2 b8 c      | % 4
    d e f2 e8 d      | % 5
    c4 c8 b c4 d8 c      | % 6
    b c d2 c8 b      | % 7
    a4 c8 a b4 d8 b      | % 8
    c4 a r b8 c      | % 9
    d c d e d e d c      | % 10
    b4 d8 c b4 g'      | % 11
    a, a8 g a4 c8 a      | % 12
    b d c a b d c a      | % 13
    b4 b8 c16 d c8 b a g      | % 14
    g d g a b a b c      | % 15
    d c b2 d4      | % 16
    e8 d c2 e4      | % 17
    d8 c b2 b8 c      | % 18
    d e f2 e8 d      | % 19
    c4 c8 b c4 d8 c      | % 20
    b c d2 c8 b      | % 21
    a4 c8 a b4 d8 b      | % 22
    c4 a r b8 c      | % 23
    d c d e d e d c      | % 24
    b4 d8 c b4 g'      | % 25
    a, a8 g a4 c8 a      | % 26
    b d c a b d c a      | % 27
    b4 b8 c16 d c8 b a g      | % 28
    g d g a b cis d e      | % 29
    fis4. g8 fis e fis e      | % 30
    fis e d2 fis4      | % 31
    g d2 g4      | % 32
    fis8 e d2 d8 e      | % 33
    fis e fis g fis g fis g      | % 34
    e4 e8 dis e4 fis8 e      | % 35
    d e fis2 e8 d      | % 36
    cis b cis4 r d8 cis      | % 37
    b d cis e d fis e g      | % 38
    fis4 fis8 e g4 fis8 e      | % 39
    fis e d2 a8 b      | % 40
    c4 c8 b c4 d8 c      | % 41
    b c d2 c8 b      | % 42
    a c b g a c b g      | % 43
    a4. c8 b a b c      | % 44
    d c b2 d4      | % 45
    e8 d c4 r b8 g      | % 46
    c4 c8 g d'4 d8 g,      | % 47
    e' f g2 f8 e      | % 48
    d4 d8 c d4 f8 d      | % 49
    e g f d e g f d      | % 50
    e4 e8 f16 g e4 d8 c      | % 51
    c e d c b d c b      | % 52
    a4 a8 c b4 b8 d      | % 53
    c b c2 d8 c      | % 54
    b a g a b a b c      | % 55
    d c b2 d4      | % 56
    e8 d c2 e4      | % 57
    d8 c b2 g'4      | % 58
    a, a8 g a4 c8 a      | % 59
    b d c a b d c a      | % 60
    b4 b8 c16 d b4 a8 g      | % 61
    g1\fermata  \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #""
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4. a8 g d g a      | % 1
    b a g2 b4      | % 2
    c g2 c4      | % 3
    b8 a g2 g8 a      | % 4
    b c d2 c8 b      | % 5
    a4 a8 g a4 b8 a      | % 6
    g a b2 a8 g      | % 7
    d4 a'8 d, g4 b8 g      | % 8
    a4 d, r g      | % 9
    a b8 c a2      | % 10
    g4 b8 a g2~      | % 11
    g1~      | % 12
    g~      | % 13
    g4 g8 a16 b a8 g d b      | % 14
    b g b d g d g a      | % 15
    b a g2 b4      | % 16
    c g2 c4      | % 17
    b8 a g2 g8 a      | % 18
    b c d2 c8 b      | % 19
    a4 a8 g a4 b8 a      | % 20
    g a b2 a8 g      | % 21
    d4 a'8 d, g4 b8 g      | % 22
    a4 d, r g      | % 23
    a b8 c a2      | % 24
    g4 b8 a g2~      | % 25
    g1~      | % 26
    g~      | % 27
    g4 g8 a16 b a8 g d b      | % 28
    b g b d g a b g      | % 29
    a4. b8 a g fis g      | % 30
    a g a2 a4      | % 31
    b8 a g2 b4      | % 32
    a8 g a2 a8 g      | % 33
    a g a b a b a b      | % 34
    g4 g8 fis g4 a      | % 35
    a1~      | % 36
    a2 r4 a      | % 37
    g r r2      | % 38
    r4 d'8 cis e4 d8 cis      | % 39
    d4 a2 d,4      | % 40
    a' a8 g a4 b8 a      | % 41
    g a b2 a8 g      | % 42
    d4 g,8 b d4 g,8 b      | % 43
    d4. d8 g d g a      | % 44
    b a g2 b4      | % 45
    c g r g8 d      | % 46
    g4 r g r      | % 47
    g r c2~      | % 48
    c1~      | % 49
    c~      | % 50
    c4 c g g      | % 51
    g2~ g8 b a g      | % 52
    d4 d8 a' g4 g8 b      | % 53
    a g a2 b8 a      | % 54
    g d b d g d g a      | % 55
    b a g2 b4      | % 56
    c g2 c4      | % 57
    b8 a g2.~      | % 58
    g1~      | % 59
    g~      | % 60
    g4 g d8 b d4      | % 61
    b1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceCA = \relative c{
    \set Staff.instrumentName = #"Timpani"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r8 g g g g g g g      | % 1
    g g g g g g g g      | % 2
    g g g g g g g g      | % 3
    g g g g g4 r      | % 4
    R1 *2  | % 
    r8 d' d d d d d d      | % 7
    d d d d d d d d      | % 8
    d d d d d d d d      | % 9
    d d d d d d d d      | % 10
    g,4 r r2      | % 11
    R1  | % 
    r8 d' d d d d d d      | % 13
    g,4 g d' d      | % 14
    g,8 g g g g g g g      | % 15
    g g g g g g g g      | % 16
    g g g g g g g g      | % 17
    g g g g g4 r      | % 18
    R1 *2  | % 
    r8 d' d d d d d d      | % 21
    d d d d d d d d      | % 22
    d d d d d d d d      | % 23
    d d d d d d d d      | % 24
    g,4 r r2      | % 25
    R1  | % 
    r8 d' d d d d d d      | % 27
    g,4 g d' d      | % 28
    g, r r2      | % 29
    r8 d' d d d d d d      | % 30
    d d d d d d d d      | % 31
    d d d d d d d d      | % 32
    d d d d d4 r      | % 33
    R1 *3  | % 
    r2 r8 d d d      | % 37
    d d d d d4 r      | % 38
    R1  | % 
    r8 d d d d d d d      | % 40
    d d d d d d d d      | % 41
    d d d d d d d d      | % 42
    d4 r d r      | % 43
    d r r2      | % 44
    r8 g, g g g g g g      | % 45
    g g g g g g g g      | % 46
    g g g g g4 r      | % 47
    R1 *4  | % 
    r2 r8 d' d d      | % 52
    d d d d d d d d      | % 53
    d4 r d r      | % 54
    r8 g, g g g g g g      | % 55
    g g g g g g g g      | % 56
    g g g g g g g g      | % 57
    g g g g g4 r      | % 58
    R1  | % 
    r8 d' d d d d d d      | % 60
    g,4 g d' d      | % 61
    g,1 \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r2 d'      | % 1
    d d      | % 2
    e e      | % 3
    d1      | % 4
    R1 *2  | % 
    r2 b      | % 7
    c b      | % 8
    a b      | % 9
    a1      | % 10
    g      | % 11
    R1 *3  | % 
    r2 d'      | % 15
    d d      | % 16
    e e      | % 17
    d1      | % 18
    R1 *2  | % 
    r2 b      | % 21
    c b      | % 22
    a b      | % 23
    a1      | % 24
    g      | % 25
    R1 *4  | % 
    r2 a      | % 30
    a a      | % 31
    b b      | % 32
    a r      | % 33
    R1 *3  | % 
    r2 a      | % 37
    b4 cis d2      | % 38
    d cis      | % 39
    d1      | % 40
    R1 *4  | % 
    r2 d      | % 45
    e d      | % 46
    c b      | % 47
    c1      | % 48
    R1 *3  | % 
    r2 b      | % 52
    a b      | % 53
    a a      | % 54
    g1      | % 55
    R1 *7  | % 
    \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r2 g'      | % 1
    g b      | % 2
    c c      | % 3
    b1      | % 4
    R1 *2  | % 
    r2 g      | % 7
    a g      | % 8
    fis g      | % 9
    g fis      | % 10
    d1      | % 11
    R1 *3  | % 
    r2 g      | % 15
    g b      | % 16
    c c      | % 17
    b1      | % 18
    R1 *2  | % 
    r2 g      | % 21
    a g      | % 22
    fis g      | % 23
    g fis      | % 24
    d1      | % 25
    R1 *4  | % 
    r2 fis      | % 30
    fis fis      | % 31
    g g      | % 32
    a r      | % 33
    R1 *3  | % 
    r2 a      | % 37
    g a      | % 38
    a a      | % 39
    a1      | % 40
    R1 *4  | % 
    r2 b      | % 45
    c b      | % 46
    g g      | % 47
    g1      | % 48
    R1 *3  | % 
    r2 g      | % 52
    fis g      | % 53
    g fis      | % 54
    d1      | % 55
    R1 *7  | % 
    \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceFA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef "treble_8"
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r2 b'      | % 1
    b4 d g2      | % 2
    g g      | % 3
    g1      | % 4
    R1 *2  | % 
    r2 d      | % 7
    d d      | % 8
    d d      | % 9
    d2. a4      | % 10
    b1      | % 11
    R1 *3  | % 
    r2 b      | % 15
    b4 d g2      | % 16
    g g      | % 17
    g1      | % 18
    R1 *2  | % 
    r2 d      | % 21
    d d      | % 22
    d d      | % 23
    d2. a4      | % 24
    b1      | % 25
    R1 *4  | % 
    r2 d      | % 30
    d d      | % 31
    d d4 e      | % 32
    fis2 r      | % 33
    R1 *3  | % 
    r2 d      | % 37
    d4 e fis2      | % 38
    e e      | % 39
    fis1      | % 40
    R1 *4  | % 
    r2 g      | % 45
    g f      | % 46
    e d      | % 47
    e1      | % 48
    R1 *3  | % 
    r2 d      | % 52
    d d      | % 53
    d d      | % 54
    b1      | % 55
    R1 *7  | % 
    \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceGA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    r2 g'      | % 1
    g g      | % 2
    c c,      | % 3
    g'1      | % 4
    R1 *2  | % 
    r2 g      | % 7
    fis g      | % 8
    d4 c b g      | % 9
    d'1      | % 10
    g,      | % 11
    R1 *3  | % 
    r2 g'      | % 15
    g g      | % 16
    c c,      | % 17
    g'1      | % 18
    R1 *2  | % 
    r2 g      | % 21
    fis g      | % 22
    d4 c b g      | % 23
    d'1      | % 24
    g,      | % 25
    R1 *4  | % 
    r2 d'      | % 30
    d d      | % 31
    g g,      | % 32
    d' r      | % 33
    R1 *3  | % 
    r2 fis      | % 37
    g fis4 g      | % 38
    a2 a,      | % 39
    d1      | % 40
    R1 *4  | % 
    r2 g      | % 45
    c, d      | % 46
    e4 f g2      | % 47
    c,1      | % 48
    R1 *3  | % 
    r2 g'      | % 52
    d' g,      | % 53
    d d      | % 54
    g1      | % 55
    R1 *7  | % 
    \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AvoiceHA = \relative c{
    \set Staff.instrumentName = #"Continuo"
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key g \major 
    %bartimesig: 
    \time 4/4 
    g'4 r g, r      | % 1
    g' r g, r      | % 2
    c r e r      | % 3
    g r b r      | % 4
    gis r e r      | % 5
    a r fis r      | % 6
    g r g, r      | % 7
    fis r g r      | % 8
    d' r g r      | % 9
    d r d, r      | % 10
    g r b r      | % 11
    c r a r      | % 12
    d r b r      | % 13
    e c d d,      | % 14
    g r g' r      | % 15
    g r g, r      | % 16
    c r e r      | % 17
    g r b r      | % 18
    gis r e r      | % 19
    a r fis r      | % 20
    g r g, r      | % 21
    fis r g r      | % 22
    d' r g r      | % 23
    d r d, r      | % 24
    g r b r      | % 25
    c r a r      | % 26
    d r b r      | % 27
    e c d d,      | % 28
    g r e r      | % 29
    d r d' r      | % 30
    d, r d' r      | % 31
    g, r b r      | % 32
    d r fis r      | % 33
    dis r b r      | % 34
    e r cis r      | % 35
    fis r d r      | % 36
    a' r fis r      | % 37
    g r d r      | % 38
    a' r a, r      | % 39
    d r fis r      | % 40
    a r fis r      | % 41
    g r g, r      | % 42
    d' r d, r      | % 43
    d' r c r      | % 44
    b r g r      | % 45
    c r d r      | % 46
    e r g r      | % 47
    c r e, r      | % 48
    f r d r      | % 49
    g r e r      | % 50
    a f g g,      | % 51
    c r g r      | % 52
    d' r g r      | % 53
    d r d, r      | % 54
    g r g' r      | % 55
    g, r g' r      | % 56
    c, r e r      | % 57
    g r b, r      | % 58
    c r a r      | % 59
    d r b r      | % 60
    e c d d,      | % 61
    g1 \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AvoiceAA { \AvoiceAA } { \transpose g c \AvoiceAA }
\part AvoiceBA { \quotearticulations \AvoiceBA \AvoiceAA } { \transpose g c \AvoiceBA }
\part AvoiceCA { \quotearticulations \AvoiceCA \AvoiceAA } { \transpose g c \AvoiceCA }
\part ASvoiceDA { \quotearticulations \ASvoiceDA \AvoiceAA } { \transpose g c \ASvoiceDA }
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

#(define output-suffix "Hor")
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
#(define output-suffix "Hor")
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
\part ASvoiceDA { \quotearticulations \ASvoiceDA \AvoiceAA } { \transpose g c \ASvoiceDA }
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
