# Jack's Emacs config

My [old Emacs config](https://code.google.com/p/letouj-emacs-cfg/) was starting to get crufty and unwieldy, so I declared [.emacs bankruptcy](http://emacsblog.org/2007/10/07/declaring-emacs-bankruptcy/) and am starting over with a fresh config and an overdue upgrade to Emacs 24.

## Installation

  1. Clone this repo to `~/.emacs.d`.
  2. Install [Cask](http://cask.github.io/) if necessary. Note that this config looks for it in `~/.cask/cask.el[c]`, so if Cask is installed in a location other than `~/.cask` you’ll need to symlink it there.
  3. Launch Emacs and run `M-x pallet-bootstrap-packages`.

All necessary packages should now be installed.
