
% BWV 248 with Moveable Do solfege
% Creates pdf and midi files for entire score and
% individual parts.
% Author: Michael F. Ellis
% License: Creative Commons Attribution-NonCommercial-ShareAlike
%     License terms at http://creativecommons.org/licenses/by-nc-sa/3.0/

\include "common.ly"
\header {
title = "Chorale"
subtitle = "BWV 248"
composer = "Johann Sebastien Bach"
tagline = "Created by Michael Ellis from digital transcriptions by Margaret Greentree (jsbchorales.net)"
}
AHvoiceAA = \relative c'{
    \set Staff.instrumentName = #"Horn 1"
    \set Staff.shortInstrumentName = #"H1"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    r8 c'16 bes c8 d d bes      | % 1
    c a a bes bes g      | % 2
    a4. f'16 e f8 a,      | % 3
    g4. c16 bes c bes a g      | % 4
    f4 r r      | % 5
    R2. *3  | % 
    r4 r8 f16 f f8 f      | % 9
    f c r c16 c c8 c      | % 10
    c a r f''16 e f8 a,      | % 11
    g4. a16 bes a8 g      | % 12
    f4 r r      | % 13
    R2. *2  | % 
    r8 g16 f g8 bes bes a      | % 16
    a c16 bes c8 d d bes      | % 17
    c a a bes bes g      | % 18
    a4. f'16 e f8 a,      | % 19
    g4. c16 bes c bes a g      | % 20
    f4 r r      | % 21
    R2. *3  | % 
    r4 r8 f16 f f8 f      | % 25
    f c r c16 c c8 c      | % 26
    c a r f''16 e f8 a,      | % 27
    g4. a16 bes a8 g      | % 28
    f4 r r      | % 29
    R2. *2  | % 
    r8 g16 f g8 bes bes a      | % 32
    a a16 g a8 c c b      | % 33
    b r r g16 f g8 g      | % 34
    g c, c c c c      | % 35
    c c c c c c      | % 36
    c4 r r      | % 37
    R2. *4  | % 
    r4 r8 a16 a a8 a      | % 42
    a f r4 r      | % 43
    r r8 f16 f f8 f      | % 44
    f4 r r      | % 45
    R2. *3  | % 
    r8 c''16 bes c8 d d bes      | % 49
    c a a bes bes g      | % 50
    a4. f'16 e f8 a,      | % 51
    g4. c16 bes c bes a g      | % 52
    f4\fermata  r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AHvoiceBA = \relative c'{
    \set Staff.instrumentName = #"Horn 2"
    \set Staff.shortInstrumentName = #"H2"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    r8 a'16 g a8 bes bes g      | % 1
    a f f g g c,      | % 2
    f c'16 bes c8 c, f4~      | % 3
    f8 bes16 a bes8 c, c c      | % 4
    a4 r r      | % 5
    R2. *3  | % 
    r4 r8 f'16 f f8 f      | % 9
    f c r c16 c c8 c      | % 10
    c a r4 f'~      | % 11
    f8 bes16 a bes8 a, a a      | % 12
    a4 r r      | % 13
    R2. *2  | % 
    r8 c16 c c8 g' g f      | % 16
    f a16 g a8 bes bes g      | % 17
    a f f g g c,      | % 18
    f c'16 bes c8 c, f4~      | % 19
    f8 bes16 a bes8 c, c c      | % 20
    a4 r r      | % 21
    R2. *3  | % 
    r4 r8 f'16 f f8 f      | % 25
    f c r c16 c c8 c      | % 26
    c a r4 f'~      | % 27
    f8 bes16 a bes8 a, a a      | % 28
    a4 r r      | % 29
    R2. *2  | % 
    r8 c16 c c8 g' g f      | % 32
    f f16 e f8 a a g      | % 33
    g r r g16 f g8 g      | % 34
    g c, c c c c      | % 35
    c c c c c c      | % 36
    c4 r r      | % 37
    R2. *4  | % 
    r4 r8 a16 a a8 a      | % 42
    a f r4 r      | % 43
    r r8 f16 f f8 f      | % 44
    f4 r r      | % 45
    R2. *3  | % 
    r8 a'16 g a8 bes bes g      | % 49
    a f f g g c,      | % 50
    f c'16 bes c8 c, f4~      | % 51
    f8 bes16 a bes8 c, c c      | % 52
    a4 r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AOvoiceCA = \relative c'{
    \set Staff.instrumentName = #"Oboe 1"
    \set Staff.shortInstrumentName = #"O1"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    R2. *2  | % 
    r8 f'16 e f8 a16 g a8 d,      | % 3
    d g16 f g8 e e f      | % 4
    f c a2      | % 5
    g f4      | % 6
    bes c4. d16 ees      | % 7
    d2.      | % 8
    c8 a'16 g a8 bes bes g      | % 9
    a f f g g e      | % 10
    f4 r8 a16 g a8 d,      | % 11
    d g16 f g8 e e f      | % 12
    f d16 c bes2      | % 13
    c f,4      | % 14
    bes a2      | % 15
    g4 r8 g'16 f g8 a      | % 16
    a r r4 r      | % 17
    R2.  | % 
    r8 f16 e f8 a16 g a8 d,      | % 19
    d g16 f g8 e e f      | % 20
    f c a2      | % 21
    g f4      | % 22
    bes c4. d16 ees      | % 23
    d2.      | % 24
    c8 a'16 g a8 bes bes g      | % 25
    a f f g g e      | % 26
    f4 r8 a16 g a8 d,      | % 27
    d g16 f g8 e e f      | % 28
    f d16 c bes2      | % 29
    c f,4      | % 30
    bes a2      | % 31
    g4 r8 g'16 f g8 a      | % 32
    a r r a,16 g a8 b      | % 33
    b d16 c d8 f f e      | % 34
    e4 r8 c16 b c8 c      | % 35
    c g r g16 f g8 g      | % 36
    g e c'2      | % 37
    a d4      | % 38
    cis d4. e16 f      | % 39
    e2.      | % 40
    a,8 a'16 g a8 bes bes g      | % 41
    a f r e16 d e8 g      | % 42
    f d16 c d8 f16 ees f8 bes,      | % 43
    bes ees16 d ees8 c c d      | % 44
    d4 e f      | % 45
    g c, bes      | % 46
    a d bes      | % 47
    g2.      | % 48
    f2 r4      | % 49
    R2.  | % 
    r8 f'16 e f8 a16 g a8 d,      | % 51
    d g16 f g8 e e f      | % 52
    f4 r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AOvoiceDA = \relative c'{
    \set Staff.instrumentName = #"Oboe 2"
    \set Staff.shortInstrumentName = #"O1"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    R2. *2  | % 
    r8 f'16 e f8 a16 g a8 d,      | % 3
    d g16 f g8 e e f      | % 4
    f c a2      | % 5
    g f4      | % 6
    bes c4. d16 ees      | % 7
    d2.      | % 8
    c8 c16 bes c8 d d bes      | % 9
    c a a bes bes g      | % 10
    a c16 bes a8 c f4~      | % 11
    f8 e16 d cis4. d8      | % 12
    d a bes2      | % 13
    c f,4      | % 14
    bes a2      | % 15
    g4 r8 e'16 d e8 f      | % 16
    f r r4 r      | % 17
    R2.  | % 
    r8 f16 e f8 a16 g a8 d,      | % 19
    d g16 f g8 e e f      | % 20
    f c a2      | % 21
    g f4      | % 22
    bes c4. d16 ees      | % 23
    d2.      | % 24
    c8 c16 bes c8 d d bes      | % 25
    c a a bes bes g      | % 26
    a c16 bes a8 c f4~      | % 27
    f8 e16 d cis4. d8      | % 28
    d a bes2      | % 29
    c f,4      | % 30
    bes a2      | % 31
    g4 r8 e'16 d e8 f      | % 32
    f r r fis,16 e fis8 g      | % 33
    g b16 a b8 d d c      | % 34
    c4 r8 c16 b c8 c      | % 35
    c g r g16 f g8 g      | % 36
    g e c'2      | % 37
    a d4      | % 38
    cis d4. e16 f      | % 39
    e2.      | % 40
    a,8 f'16 e f8 g g e      | % 41
    f d r cis16 b cis8 e      | % 42
    d d16 c d8 f16 ees f8 bes,      | % 43
    bes ees16 d ees8 c c d      | % 44
    d4 e f      | % 45
    g c, bes      | % 46
    a d bes      | % 47
    g2.      | % 48
    f2 r4      | % 49
    R2.  | % 
    r8 f'16 e f8 a16 g a8 d,      | % 51
    d g16 f g8 e e f      | % 52
    f4 r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AVnvoiceEA = \relative c'{
    \set Staff.instrumentName = #"Violin 1"
    \set Staff.shortInstrumentName = #"Vn1"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    r4 r8 f16 e f8 f      | % 1
    f c r c16 bes c8 c      | % 2
    c a r a''16 g a8 d,      | % 3
    d g16 f g8 e e f      | % 4
    f c a2      | % 5
    g f4      | % 6
    bes c4. d16 ees      | % 7
    d2.      | % 8
    c4 r2      | % 9
    R2.  | % 
    r8 f16 e f8 a16 g a8 d,      | % 11
    d g16 f g8 e e f      | % 12
    f d bes2      | % 13
    c f,4      | % 14
    bes a2      | % 15
    g4 r8 c,16 c c8 c      | % 16
    c f r f16 e f8 f      | % 17
    f c r c16 bes c8 c      | % 18
    c a r a''16 g a8 d,      | % 19
    d g16 f g8 e e f      | % 20
    f c a2      | % 21
    g f4      | % 22
    bes c4. d16 ees      | % 23
    d2.      | % 24
    c4 r2      | % 25
    R2.  | % 
    r8 f16 e f8 a16 g a8 d,      | % 27
    d g16 f g8 e e f      | % 28
    f d bes2      | % 29
    c f,4      | % 30
    bes a2      | % 31
    g4 r8 c,16 c c8 c      | % 32
    c f r d16 d d8 d      | % 33
    d g r b16 a b8 c      | % 34
    c g'16 f g8 a a f      | % 35
    g e e f f d      | % 36
    e4 c2      | % 37
    a d4      | % 38
    cis d4. e16 f      | % 39
    e2.      | % 40
    a,4 r8 d16 cis d8 d      | % 41
    d d16 cis d8 e e cis      | % 42
    d4 r8 d'16 c d8 g,      | % 43
    g c16 bes c8 a a bes      | % 44
    bes4 e, f      | % 45
    g c, bes      | % 46
    a d bes      | % 47
    g2.      | % 48
    f4 r8 f16 e f8 f      | % 49
    f c r c16 bes c8 c      | % 50
    c a r a''16 g a8 d,      | % 51
    d g16 f g8 e e f      | % 52
    f4\fermata  r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AVnvoiceFA = \relative c'{
    \set Staff.instrumentName = #"Violin 2"
    \set Staff.shortInstrumentName = #"Vn2"
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    r4 r8 f16 e f8 f      | % 1
    f c r c16 bes c8 c      | % 2
    c a r4 r8 f''16 e      | % 3
    f4 r r8 c      | % 4
    c a f2~      | % 5
    f4 e f      | % 6
    d g f      | % 7
    f2.      | % 8
    f4 r2      | % 9
    R2.  | % 
    r8 c'16 bes a8 c f4~      | % 11
    f8 e16 d cis4. d8      | % 12
    d a g2~      | % 13
    g4 f2~      | % 14
    f8 g~ g c, f4      | % 15
    e r8 c16 c c8 c      | % 16
    c f r f16 e f8 f      | % 17
    f c r c16 bes c8 c      | % 18
    c a r4 r8 f''16 e      | % 19
    f4 r r8 c      | % 20
    c a f2~      | % 21
    f4 e f      | % 22
    d g f      | % 23
    f2.      | % 24
    f4 r r      | % 25
    R2.  | % 
    r8 c'16 bes a8 c f4~      | % 27
    f8 e16 d cis4. d8      | % 28
    d a g2~      | % 29
    g4 f2~      | % 30
    f8 g~ g c, f4      | % 31
    e r8 c16 c c8 c      | % 32
    c f r d16 d d8 d      | % 33
    d g r g16 f g8 g      | % 34
    g e'16 d e8 f f d      | % 35
    e c c d d b      | % 36
    c2 g4~      | % 37
    g f2      | % 38
    g4 a bes8 a      | % 39
    g f g4. e8      | % 40
    f4 r8 d'16 cis d8 d      | % 41
    d f,16 e f8 g g e      | % 42
    f4 r r8 ees'16 d      | % 43
    ees4 r r8 d16 c      | % 44
    bes2 a4      | % 45
    g8 f g4 e      | % 46
    c bes f'~      | % 47
    f e8 d e4      | % 48
    c r8 f16 e f8 f      | % 49
    f c r c16 bes c8 c      | % 50
    c a r4 r8 f''16 e      | % 51
    f4 r r8 c      | % 52
    c4 r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AVlavoiceGA = \relative c'{
    \set Staff.instrumentName = #"Viola"
    \set Staff.shortInstrumentName = #"Vla"
    \clef alto
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    r4 r8 f16 e f8 f      | % 1
    f c r c16 bes c8 c      | % 2
    c a r4 r8 a'      | % 3
    d4 r r8 g,      | % 4
    a f c2      | % 5
    c4. bes8 a4      | % 6
    bes2 a8 bes16 c      | % 7
    c4 bes8 a bes4      | % 8
    a r2      | % 9
    R2.  | % 
    r8 f'16 g a8 a, d f      | % 11
    g bes e,4 a      | % 12
    a8 f d2      | % 13
    c8 bes a2      | % 14
    d8 c c2      | % 15
    c4 r8 c16 c c8 c      | % 16
    c f r f16 e f8 f      | % 17
    f c r c16 bes c8 c      | % 18
    c a r4 r8 a'      | % 19
    d4 r r8 g,      | % 20
    a f c2      | % 21
    c4. bes8 a4      | % 22
    bes2 a8 bes16 c      | % 23
    c4 bes8 a bes4      | % 24
    a r2      | % 25
    R2.  | % 
    r8 f'16 g a8 a, d f      | % 27
    g bes e,4 a      | % 28
    a8 f d2      | % 29
    c8 bes a2      | % 30
    d8 c c2      | % 31
    c4 r8 c16 c c8 c      | % 32
    c f r d16 d d8 d      | % 33
    d g d16 c d8 e      | % 34
    s2.      | % 35
    s2.      | % 36
    s2.      | % 37
    s2.      | % 38
    s2.      | % 39
    s2.      | % 40
    s2.      | % 41
    s2.      | % 42
    s2.      | % 43
    s2.      | % 44
    s2.      | % 45
    s2.      | % 46
    s2.      | % 47
    s2.      | % 48
    s2.      | % 49
    s2.      | % 50
    s2.      | % 51
    s2.      | % 52
    s2. \bar "|."     | % 53
    e4 r r      | % 54
    g r r      | % 55
    g8 f g4 e      | % 56
    c2 bes4~      | % 57
    bes a d8 c      | % 58
    bes4 a8 g a4      | % 59
    d r8 d'16 cis d8 d      | % 60
    d a r4 r      | % 61
    r8 a16 g f8 d bes bes'16 a      | % 62
    g8 g, f ees'16 d ees8 f16 ees      | % 63
    d4 g c,      | % 64
    c2 g4      | % 65
    f2 d'4      | % 66
    g, c bes      | % 67
    a r8 f'16 e f8 f      | % 68
    f c r c16 bes c8 c      | % 69
    c a r4 r8 a'      | % 70
    d4 r r8 g,      | % 71
    a4 r r \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ASvoiceHA = \relative c'{
    \set Staff.instrumentName = #"Soprano"
    \set Staff.shortInstrumentName = #"S."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    R2. *4  | % 
    c'4 a2      | % 5
    g f4      | % 6
    bes c4. d16 ees      | % 7
    d2.      | % 8
    c2.      | % 9
    R2. *3  | % 
    d4 bes2      | % 13
    c f,4      | % 14
    bes a2      | % 15
    g2.      | % 16
    R2. *4  | % 
    c4 a2      | % 21
    g f4      | % 22
    bes c4. d16 ees      | % 23
    d2.      | % 24
    c2.      | % 25
    R2. *3  | % 
    d4 bes2      | % 29
    c f,4      | % 30
    bes a2      | % 31
    g2.      | % 32
    R2.  | % 
    r4      | % 34
    R2. *2  | % 
    e'4 c2      | % 37
    a d4      | % 38
    cis d4. e16 f      | % 39
    e2.      | % 40
    a,2.      | % 41
    R2. *3  | % 
    d4 e f      | % 45
    g c, bes      | % 46
    a d bes      | % 47
    g2.      | % 48
    f2.      | % 49
    R2. *4  | % 
    \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AAvoiceIA = \relative c'{
    \set Staff.instrumentName = #"Alto"
    \set Staff.shortInstrumentName = #"A."
    \clef treble
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    R2. *4  | % 
    a'4 f2      | % 5
    f4 e f      | % 6
    d g f      | % 7
    f2.      | % 8
    f2.      | % 9
    R2. *3  | % 
    a4 g2      | % 13
    g4 f f      | % 14
    f8 g g4 f      | % 15
    e2.      | % 16
    R2. *4  | % 
    a4 f2      | % 21
    f4 e f      | % 22
    d g f      | % 23
    f2.      | % 24
    f2.      | % 25
    R2. *3  | % 
    a4 g2      | % 29
    g4 f f      | % 30
    f8 g g4 f      | % 31
    e2.      | % 32
    R2.  | % 
    r4      | % 34
    R2. *2  | % 
    g8 f g4 g      | % 37
    g f f      | % 38
    g a bes8 a      | % 39
    g f g4. e8      | % 40
    f2.      | % 41
    R2. *3  | % 
    f4 g a      | % 45
    g8 f g4 e      | % 46
    c bes f'      | % 47
    f e8 d e4      | % 48
    c2.      | % 49
    R2. *4  | % 
    \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ATvoiceJA = \relative c{
    \set Staff.instrumentName = #"Tenor"
    \set Staff.shortInstrumentName = #"T."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    R2. *4  | % 
    f'4 c2      | % 5
    c4. bes8 a4      | % 6
    bes2 a8 bes16 c      | % 7
    c4 bes8 a bes4      | % 8
    a2.      | % 9
    R2. *3  | % 
    f'4 d2      | % 13
    c8 bes a4 a      | % 14
    d8 c c2      | % 15
    c2.      | % 16
    R2. *4  | % 
    f4 c2      | % 21
    c4. bes8 a4      | % 22
    bes2 a8 bes16 c      | % 23
    c4 bes8 a bes4      | % 24
    a2.      | % 25
    R2. *3  | % 
    f'4 d2      | % 29
    c8 bes a4 a      | % 30
    d8 c c2      | % 31
    c2.      | % 32
    R2.  | % 
    r4      | % 34
    R2. *2  | % 
    c2 e4      | % 37
    c2 bes4~      | % 38
    bes a d8 c      | % 39
    bes4 a8 g a4      | % 40
    a2.      | % 41
    R2. *3  | % 
    bes4. g8 c4      | % 45
    c2 g4      | % 46
    f2 d'4      | % 47
    g, c bes      | % 48
    a2.      | % 49
    R2. *4  | % 
    \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

ABvoiceKA = \relative c{
    \set Staff.instrumentName = #"Bass"
    \set Staff.shortInstrumentName = #"B."
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    R2. *4  | % 
    f8 g a4 f      | % 5
    c2 d4      | % 6
    g8 f ees4 f      | % 7
    bes,8 c d4 bes      | % 8
    f'2.      | % 9
    R2. *3  | % 
    d4 g f      | % 13
    e f8 e d c      | % 14
    d e f4 f      | % 15
    c2.      | % 16
    R2. *4  | % 
    f8 g a4 f      | % 21
    c2 d4      | % 22
    g8 f ees4 f      | % 23
    bes,8 c d4 bes      | % 24
    f'2.      | % 25
    R2. *3  | % 
    d4 g f      | % 29
    e f8 e d c      | % 30
    d e f4 f      | % 31
    c2.      | % 32
    R2.  | % 
    r4      | % 34
    R2. *2  | % 
    c8 d e4 c      | % 37
    f8 e f4 bes      | % 38
    e, f d      | % 39
    d cis8 b cis4      | % 40
    d2.      | % 41
    R2. *3  | % 
    bes'8 a g4 f      | % 45
    e8 d e4 c      | % 46
    f bes,2      | % 47
    c8 bes c2      | % 48
    f,2.      | % 49
    R2. *4  | % 
    \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice

 

AOrgvoiceLA = \relative c{
    \set Staff.instrumentName = #"Organ"
    \set Staff.shortInstrumentName = #"Org"
    \clef bass
    %staffkeysig
    \key f \major 
    %bartimesig: 
    \time 3/4 
    f4 r r      | % 1
    f, r r      | % 2
    f'8 a16 g f8 e d c      | % 3
    bes g c4 c,      | % 4
    f8 g a g a f      | % 5
    c' bes c c, d d'      | % 6
    g f ees c f f,      | % 7
    bes c d c d bes      | % 8
    f'4 r r      | % 9
    f, r r      | % 10
    f'8 a16 g f8 e d c      | % 11
    bes g e a16 g a8 a      | % 12
    d, d' g a g f      | % 13
    e c f e d c      | % 14
    d e f e f f,      | % 15
    c' e16 d e8 g c c,      | % 16
    f4 r r      | % 17
    f, r r      | % 18
    f'8 a16 g f8 e d c      | % 19
    bes g c4 c,      | % 20
    f8 g a g a f      | % 21
    c' bes c c, d d'      | % 22
    g f ees c f f,      | % 23
    bes c d c d bes      | % 24
    f'4 r r      | % 25
    f, r r      | % 26
    f'8 a16 g f8 e d c      | % 27
    bes g e a16 g a8 a      | % 28
    d, d' g a g f      | % 29
    e c f e d c      | % 30
    d e f e f f,      | % 31
    c' e16 d e8 g c c,      | % 32
    f a d, a' d d,      | % 33
    g d g, d' g g,      | % 34
    c4 r r      | % 35
    c, r r      | % 36
    c'8 d e d e c      | % 37
    f e f f, bes bes'      | % 38
    e, g f e d4~      | % 39
    d cis8 b cis4      | % 40
    d r r      | % 41
    d, r r      | % 42
    d'8 f16 e d8 bes g g'      | % 43
    c, bes a c f, f'      | % 44
    bes, a g c a f      | % 45
    e d e c c' e      | % 46
    f f, bes c d bes      | % 47
    c bes c4 c,      | % 48
    f r r      | % 49
    f r r      | % 50
    f'8 a16 g f8 e d c      | % 51
    bes g c4 c,      | % 52
    f\fermata  r r \bar "|."     | % 53
    s2.      | % 54
    s2.      | % 55
    s2.      | % 56
    s2.      | % 57
    s2.      | % 58
    s2.      | % 59
    s2.      | % 60
    s2.      | % 61
    s2.      | % 62
    s2.      | % 63
    s2.      | % 64
    s2.      | % 65
    s2.      | % 66
    s2.      | % 67
    s2.      | % 68
    s2.      | % 69
    s2.      | % 70
    s2.      | % 71
    s2. \bar "|."\bar "|." 
}% end of last bar in partorvoice



\addQuote "articulations"   { \AHvoiceAA }
\book {
\layout { \scorepaper }
\score {
<<
\part AHvoiceAA { \AHvoiceAA } { \transpose f c \AHvoiceAA }
\part AHvoiceBA { \quotearticulations \AHvoiceBA \AHvoiceAA } { \transpose f c \AHvoiceBA }
\part AOvoiceCA { \quotearticulations \AOvoiceCA \AHvoiceAA } { \transpose f c \AOvoiceCA }
\part AOvoiceDA { \quotearticulations \AOvoiceDA \AHvoiceAA } { \transpose f c \AOvoiceDA }
\part AVnvoiceEA { \AVnvoiceEA } { \transpose f c \AVnvoiceEA }
\part AVnvoiceFA { \quotearticulations \AVnvoiceFA \AHvoiceAA } { \transpose f c \AVnvoiceFA }
\part AVlavoiceGA { \quotearticulations \AVlavoiceGA \AHvoiceAA } { \transpose f c \AVlavoiceGA }
\part ASvoiceHA { \quotearticulations \ASvoiceHA \AHvoiceAA } { \transpose f c \ASvoiceHA }
\part AAvoiceIA { \quotearticulations \AAvoiceIA \AHvoiceAA } { \transpose f c \AAvoiceIA }
\part ATvoiceJA { \quotearticulations \ATvoiceJA \AHvoiceAA } { \transpose f c \ATvoiceJA }
\part ABvoiceKA { \quotearticulations \ABvoiceKA \AHvoiceAA } { \transpose f c \ABvoiceKA }
\part AOrgvoiceLA { \AOrgvoiceLA } { \transpose f c \AOrgvoiceLA }
>>
}
\score {
<<
\new Voice = AHvoiceAA \AHvoiceAA
\new Voice = AHvoiceBA \AHvoiceBA
\new Voice = AOvoiceCA \AOvoiceCA
\new Voice = AOvoiceDA \AOvoiceDA
\new Voice = AVnvoiceEA \AVnvoiceEA
\new Voice = AVnvoiceFA \AVnvoiceFA
\new Voice = AVlavoiceGA \AVlavoiceGA
\new Voice = ASvoiceHA \ASvoiceHA
\new Voice = AAvoiceIA \AAvoiceIA
\new Voice = ATvoiceJA \ATvoiceJA
\new Voice = ABvoiceKA \ABvoiceKA
\new Voice = AOrgvoiceLA \AOrgvoiceLA
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
\part AHvoiceAA { \AHvoiceAA } { \transpose f c \AHvoiceAA }
>>
}
\score {
<<
\new Voice = AHvoiceAA \AHvoiceAA
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
\part AHvoiceBA { \quotearticulations \AHvoiceBA \AHvoiceAA } { \transpose f c \AHvoiceBA }
>>
}
\score {
<<
\new Voice = AHvoiceBA \AHvoiceBA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AOvoiceCA { \quotearticulations \AOvoiceCA \AHvoiceAA } { \transpose f c \AOvoiceCA }
>>
}
\score {
<<
\new Voice = AOvoiceCA \AOvoiceCA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Obo")
\book {
\layout { \partpaper }
\score {
<<
\part AOvoiceDA { \quotearticulations \AOvoiceDA \AHvoiceAA } { \transpose f c \AOvoiceDA }
>>
}
\score {
<<
\new Voice = AOvoiceDA \AOvoiceDA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AVnvoiceEA { \AVnvoiceEA } { \transpose f c \AVnvoiceEA }
>>
}
\score {
<<
\new Voice = AVnvoiceEA \AVnvoiceEA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Violi")
\book {
\layout { \partpaper }
\score {
<<
\part AVnvoiceFA { \quotearticulations \AVnvoiceFA \AHvoiceAA } { \transpose f c \AVnvoiceFA }
>>
}
\score {
<<
\new Voice = AVnvoiceFA \AVnvoiceFA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Viola")
\book {
\layout { \partpaper }
\score {
<<
\part AVlavoiceGA { \quotearticulations \AVlavoiceGA \AHvoiceAA } { \transpose f c \AVlavoiceGA }
>>
}
\score {
<<
\new Voice = AVlavoiceGA \AVlavoiceGA
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
\part ASvoiceHA { \quotearticulations \ASvoiceHA \AHvoiceAA } { \transpose f c \ASvoiceHA }
>>
}
\score {
<<
\new Voice = ASvoiceHA \ASvoiceHA
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
\part AAvoiceIA { \quotearticulations \AAvoiceIA \AHvoiceAA } { \transpose f c \AAvoiceIA }
>>
}
\score {
<<
\new Voice = AAvoiceIA \AAvoiceIA
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
\part ATvoiceJA { \quotearticulations \ATvoiceJA \AHvoiceAA } { \transpose f c \ATvoiceJA }
>>
}
\score {
<<
\new Voice = ATvoiceJA \ATvoiceJA
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
\part ABvoiceKA { \quotearticulations \ABvoiceKA \AHvoiceAA } { \transpose f c \ABvoiceKA }
>>
}
\score {
<<
\new Voice = ABvoiceKA \ABvoiceKA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
#(define output-suffix "Organ")
\book {
\layout { \partpaper }
\score {
<<
\part AOrgvoiceLA { \AOrgvoiceLA } { \transpose f c \AOrgvoiceLA }
>>
}
\score {
<<
\new Voice = AOrgvoiceLA \AOrgvoiceLA
>>

        \midi   { 
        \context { \Staff  \remove "Staff_performer" }
        \context { \Voice  \consists "Staff_performer" }
        } 
   }
} %%end of book
