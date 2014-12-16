# NAME

git-reply-to-commit - Easily compose an email reply to a git commit

# USAGE

Takes a single commit SHA as the first argument.  Your MUA is then opened for
composing a reply to the quoted commit.

# CONFIGURATION

Requires `xdg-open` to handle the `mailto:...` link on all operating systems
other than "darwin", where `open` is used instead.

I configure this for tig with:

    bind generic r !git reply-to-commit %(commit)

which lets me hit "r" to reply to the commit I'm looking at in tig, whether I'm
viewing the log or a diff.

# COPYRIGHT

Copyright (c) 2011-2014 Thomas Sibley

# LICENSE

This library is free software; you can redistribute it and/or modify it under
the GNU General Public License, version 2.
