# Twenty Sided Tale E-book

http://www.shamusyoung.com/twentysidedtale/?cat=1

The intention is to capture Shamus and Heather Young's *Twenty Sided
Tale* in conventional e-book formats comfortable for reading as a
novel. The original publication was in serial form on Shamus's blog,
including re-caps and schedule information. Read as a whole years
after the campaign was completed, neither of those are relavent and
are omitted from the e-book version.

The source text has been converted to Markdown, to be used as input to
Pandoc to output into various formats. The primary targets are ePub
and HTML. A PDF version should be produced using the browser print
feature on the HTML version.

## Markdown Conventions

The original text will be left intact except for correcting spelling
and grammar mistakes. In Markdown form, special characters (quotes,
ellipsis, etc.) are replaced by their simple counterparts. These are
converted *back* into the special form by Pandoc (`--smart`).

Text is wrapped to 72 columns. It should be comfortable to read in
Markdown form.

DM notes are written as blockquotes (`>`).

For now, in-game documents are wrapped in a `.document` div. I'd like
to find something better. Normally a blockquote might be used here,
but that's reserved for DM notes.
