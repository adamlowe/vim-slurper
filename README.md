# Description

slurper.vim was written as a companion to the slurper gem (http://github.com/hashrocket/slurper). The slurper gem allows you compose stories in a plain text file and then slurp them into Pivotal Tracker through the api in bulk. You will need to install the slurper gem for slurper.vim to be useful.

slurper.vim turns on spell check and provides macros for generating story templates in the correct format to speed up your story writing even further. It also provides syntax highlighting and indenting for .slurper files.

If you find slurper.vim useful or have suggestions please let me know. Constructive input is greatly appreciated.

# Installation

Download the packaged file from www.vim.org/scripts/script.php?script_id=2890 extract and copy the slurper.vim files into their corresponding folders within your .vim directory.

Alternately my preferred method of installing vim plugins is to use Tim Pope's pathogen.vim plugin (http://www.vim.org/scripts/script.php?script_id=2332) and git clone plugins into my ~/.vimbundles directory.

# Usage

CTRL-h generates a new chore and puts you in insert mode on the name line.

    ==
    story_type:
      chore
    name:

    description:


    labels:

CTRL-j generates a new feature and puts you in insert mode on the name line.

    ==
    story_type:
      feature
    name:

    description:
      In order to
      As a
      I want

      -

    labels:

CTRL-k generates a new release and puts you in insert mode on the name line.

    ==
    story_type:
      release
    name:

    description:


    labels:

CTRL-l generates a new bug and puts you in insert mode on the name line.

    ==
    story_type:
      bug
    name:

    description:


    labels:


The macros work the same in insert or edit modes. They also work anywhere in a story file.

# Story Folding

We found that frequently we wanted to see just a list of all of the features in our file. To do this you can use the built in code folding key strokes.

Close all folds (Show just story names)

    zM

Open all folds (Show full stories)

    zR

For more on folding in Vim check out

    :help folding

# Patches/Pull Requests

* Fork the project.
* Make your feature addition or bug fix.
* Send me a pull request.
