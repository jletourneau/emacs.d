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
