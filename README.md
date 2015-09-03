# Twenty-Sided Tale E-book

Original: http://www.shamusyoung.com/twentysidedtale/?cat=1

Download: [twenty-sided-tale.epub][download]

The intention is to capture Shamus and Heather Young's *Twenty-Sided
Tale* in a conventional e-book format comfortable for reading as a
novel. The original publication is in serial form on Shamus's blog,
including re-caps, session parts, and schedule information. Read as a
whole years after the campaign was completed, none of those are
relevant and are omitted from the e-book version.

The source text has been converted to Markdown, used as input to
Pandoc to output into various formats. The primary targets are ePub
and HTML. A PDF version could be produced using the browser print
feature on the HTML version.

Shamus linked to the book in [his tenth anniversary
post](http://www.shamusyoung.com/twentysidedtale/?p=23755).

## Markdown Conventions

The original text will be left intact except for correcting spelling
and grammar mistakes. In Markdown form, special characters (quotes,
ellipsis, etc.) are replaced by their simple counterparts. These are
converted *back* into the special form by Pandoc (`--smart`).

Text is wrapped to 72 columns. It should be comfortable to read in
Markdown form.

DM notes are written as blockquotes (`>`).

In-game documents are wrapped in a `.document` div. I'd like to find
something better. Normally a blockquote might be used here, but that's
reserved for DM notes.

Session parts are combined under a first level session heading, like a
chapter. Dates are level 3 headings and tagged a `.date`.


[download]: http://nullprogram.s3.amazonaws.com/tst/twenty-sided-tale.epub
