# Miscellaneous configuration files

This repository contains just a bunch of configuration files (e. g. for bash and vim) that I like to have everywhere I work. They are organized into sub-directories so I can use _GNU Stow_ to install them (see <http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html> for details). To get me set up on a new machine, I just need to do the following steps:

* install _GNU Stow_
* create a directory `config` in my home directory and change into it  
    `mkdir config && cd config`
* clone this repository  
    `git clone https://github.com/wiemerc/config.git .`
* install the files  
    `stow bash git screen ssh vim`
