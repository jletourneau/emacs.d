(when (locate-library "package")
  (require 'package)
  (package-initialize)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.milkbox.net/packages/") t))
