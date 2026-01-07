# Ansible playbook and miscellaneous configuration files

This repository used to contain just a bunch of configuration files (e. g. for ZSH and Git) that I like to have everywhere I work. Now in addition there is a whole Ansible playbook to completely set up a new Linux (Fedora) machine. The configuration files are organized into sub-directories so I can use _GNU Stow_ to install them (see <http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html> for details). To get me set up on a new machine, I just need to run the script `setup.sh`.
