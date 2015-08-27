(defmacro after-load (mode &rest body)
  "Simple wrapper around `eval-after-load' + `progn' pattern."
  (declare (indent defun))
  `(eval-after-load ,mode
     '(progn ,@body)))

(defun pallet-bootstrap-packages ()
  "Install `pallet' from Emacs' package system and install packages from
this repository's Caskfile."
  (interactive)
  (require 'package)
  (package-refresh-contents)
  (package-install 'pallet)
  ;; FIXME: need to (require 'pallet) to make this function def available,
  ;; but dropping it in here doesn't seem to work (function hangs). Fix TBD.
  (pallet-install))

(defun unfill-paragraph (current-point)
  "Unfill the paragraph containing point; i.e. remove all newlines between
the paragraph separator prior to point and the one after it."
  (interactive "d")
  (let ((fill-column (point-max)))
    (mark-paragraph)
    (fill-region (point) (mark))
    (goto-char current-point)))

(defun beginning-of-line-dwim ()
  "Move point to the beginning of the line, unless it is already there,
in which case move point to the first non-whitespace character on the line."
  (interactive)
  (if (bolp)
      (back-to-indentation)
    (beginning-of-line)))

(defun dired-system-open ()
  "Use the built-in `open' command in OS X to open the selected file(s) in
a Dired buffer in the associated system application(s)."
  (interactive)
  (save-window-excursion
    (dired-do-shell-command
     "open" current-prefix-arg
     (dired-get-marked-files t current-prefix-arg))))

;; http://emacs-fu.blogspot.co.uk/2009/11/copying-lines-without-selecting-them.html
(defadvice kill-region (before slick-cut activate compile)
  "When called interactively with no active region, kill a single line instead."
  (interactive
   (if mark-active (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; Helper function for highlighting CoffeeScript blocks in Haml
(defun haml-fontify-region-as-coffeescript (beg end)
  "Fontify CoffeeScript region from BEG to END."
  (if (boundp 'coffee-font-lock-keywords)
    (haml-fontify-region
     beg end
     coffee-font-lock-keywords
     nil nil
     (when (fboundp 'coffee-syntax-propertize-function)
       #'coffee-syntax-propertize-function))))

(define-minor-mode shifted-numbers-mode
  "Toggle shifted numbers mode. When enabled, the number keys will output their
corresponding symbols when pressed on their own, and will output digits when
pressed along with Shift."
  nil " shifted"
  '(("1" . (lambda () (interactive) (insert-char ?!)))
    ("2" . (lambda () (interactive) (insert-char ?@)))
    ("3" . (lambda () (interactive) (insert-char ?#)))
    ("4" . (lambda () (interactive) (insert-char ?$)))
    ("5" . (lambda () (interactive) (insert-char ?%)))
    ("6" . (lambda () (interactive) (insert-char ?^)))
    ("7" . (lambda () (interactive) (insert-char ?&)))
    ("8" . (lambda () (interactive) (insert-char ?*)))
    ("9" . (lambda () (interactive) (insert-char ?\()))
    ("0" . (lambda () (interactive) (insert-char ?\))))
    ("!" . (lambda () (interactive) (insert-char ?1)))
    ("@" . (lambda () (interactive) (insert-char ?2)))
    ("#" . (lambda () (interactive) (insert-char ?3)))
    ("$" . (lambda () (interactive) (insert-char ?4)))
    ("%" . (lambda () (interactive) (insert-char ?5)))
    ("^" . (lambda () (interactive) (insert-char ?6)))
    ("&" . (lambda () (interactive) (insert-char ?7)))
    ("*" . (lambda () (interactive) (insert-char ?8)))
    ("(" . (lambda () (interactive) (insert-char ?9)))
    (")" . (lambda () (interactive) (insert-char ?0)))))
