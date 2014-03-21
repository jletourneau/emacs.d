(when (require 'package nil t)
  (package-initialize)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.milkbox.net/packages/") t))

(when (require 'cask (expand-file-name "~/.cask/cask") t)
  (cask-initialize))
