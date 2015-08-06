

**Solfege Resources is an effort to provide a comprehensive collection of high quality open-source music in [LilyPond](http://lilypond.org) format with automatically generated solfa syllables.**

### Present Status (2011.1.1) ###
The first version of `LilyPond` sources for 404 Bach chorales is available in the bach-chorales subdirectory of the main repository.  The voice notation is extracted from Margaret Greentree's musicXML files of the chorales at http://jsbchorales.net.

Each `LilyPond` file creates PDF and midi for the full score (typically SATB but some files also have
instrument voices) and each individual voice.  The `LilyPond NoteNames`
engraver is used to generate the solfege symbols as lyrics.  The files
are are offered under your choice of two open source licenses:
  * [Commons BY-NC-SA](http://creativecommons.org/licenses/by-nc-sa/3.0/legalcodeCreative)
  * [Free Art License](http://artlibre.org/licence/lal/en)
See "Why Two Licenses?" below for more information.

The layouts are somewhat sparse as these files are intended for
educational use.  There is a single include file, "common.ly" that can
be modified to change the layout, etc.

Three downloads are currently available (click the Downloads tab to access them):
  1. A sample containing one file and the PDF + MIDI output it generates
  1. An archive of all the `LilyPond` files.
  1. An 82Mb archive containing PDF+MIDI from all 404 chorales. 4224 files in all.

You don't need `LilyPond` to make use of the PDF and MID files.

You can always get the latest versions of the `LilyPond` files by cloning from the repository if you have Mercurial installed.

> `hg clone https://solfege-resources.googlecode.com/hg/ solfege-resources`


I'd welcome anyone who wants to collaborate.

Enjoy!
Michael Ellis

### Why Two Licenses? ###

The source files on this site are derived from music in the public domain.  In particular, the sequences of pitches and rhythms that comprise Bach's chorales are certainly available for free use since there exist editions of his work (e.g. Breitkopf) that are widely acknowledged to be in the public domain in all countries.  United States law appears to hold that minor changes to such public works do not constitute a new copyrightable work.

No copyright is asserted here with respect to the music of J. S. Bach.

The sources used for the pitches and rhythms of Bach's music are digital transcriptions made by Margaret Greentree from published editions.   Her website, http://jsbchorales.net, contains a notice that makes the transcriptions freely available for non-profit use but reserves rights with respect to use for financial profit.

No copyright is asserted here with respect to the work of Margaret Greentree.

_I urge you, as a moral matter, to accept the Creative Commons Non-Commercial license out of respect for her patient labor (and, to a lesser extent, mine) and refrain from using these files for financial profit._  Nonetheless  I reluctantly acknowledge that, from a strictly legalistic viewpoint, patient labor alone does not necessarily create a copyrightable work.  There is, under U.S. law, a requirement for originality that has been held, in some cases, to exclude minor modifications to public domain works from copyright protection.  Accordingly,  you may elect to accept instead the Free Art License which does not restrict commercial use. Both licenses require attribution and  sharing of derived works under the same license as the original.

Strictly speaking,  my understanding is that you are licensing only my contributions to the work, e.g, the transformation to LilyPond file format and the addition of solfege syllables. In other words, the license I offer does not in any way abrogate the rights of Ms. Greentree or those of copyright holders of any source material she used to create the transcriptions.

For more information on United States law regarding derivative works see the extensive article on that topic  [here in Wikipedia](http://en.wikipedia.org/wiki/Derivative_work).  If you live outside the United State, the rules may be different as copyright law varies widely from country to country.

None of the foregoing should be construed as legal advice.


