#port-wrapper

`port-wrapper` is a script for MacPorts, aimed mainly at maintainers, trying to ease their workflow.

## What's included?
Right now the wrapper supports:

  * Aliases, defined in `$XDG_CONFIG_DIR/port-wrapper/aliases.conf`
  * Auto-sudo on commands requiring it
  * Remembers last port expression, recall using '.'
  * Other scripts:
    * `port-copy-checksum`: prints and copies to system clipboard the port checksum
    * `port-exists`: Prints error message if supplied port does not exist (used for plumbing)
    * `port-lg`: Port log with pager
    * `port-maintainer-update`: This should streamline simple port updates
    * `port-svn-commit`: easy way to commit a port file
    * `port-svn-diff`: easy way to diff a port file
  * Shell functions:
    * `port-cd`: simple way to cd to port directory

## Installing
To install just execute:
```
make install
```

The default prefix is `/usr/local`.
