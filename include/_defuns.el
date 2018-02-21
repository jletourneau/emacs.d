(defun dir-join (root &rest dirs)
  "Joins a series of path components together.
  (dir-join \"/tmp\" \"a\" \"b\" \"c\") => \"/tmp/a/b/c\""
  (if (not dirs)
      root
    (apply 'dir-join
           (expand-file-name (car dirs) root)
           (cdr dirs))))

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

(defun unfill-region (start end)
  "Unfill the current region; i.e. remove all newlines within paragraphs.
If an active region is not present, unfill the entire buffer."
  (interactive "r")
  (let ((fill-column (point-max)))
    (if (use-region-p)
        (fill-region start end)
      (fill-region (point-min) (point-max)))))

;; http://endlessparentheses.com/fill-and-unfill-paragraphs-with-a-single-key.html
(defun fill-or-unfill-dwim ()
  "Like `fill-paragraph', but unfill if used twice consecutively."
  (interactive)
  (let ((fill-column
         (if (eq last-command 'fill-or-unfill-dwim)
             (progn (setq this-command nil)
                    (point-max))
           fill-column)))
    (call-interactively #'fill-paragraph)))

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
   (if mark-active
       (list (region-beginning) (region-end))
     (list (line-beginning-position)
           (line-beginning-position 2)))))

;; Helper function for highlighting CoffeeScript blocks in Haml
(defun haml-fontify-region-as-coffeescript (beg end)
  "Fontify CoffeeScript region from BEG to END."
  (when (boundp 'coffee-font-lock-keywords)
    (haml-fontify-region
     beg end
     coffee-font-lock-keywords
     nil nil
     (when (fboundp 'coffee-syntax-propertize-function)
       #'coffee-syntax-propertize-function))))

;; Modified version of haml-mark-sexp-but-not-next-line in haml-mode.el
(defun haml-mark-block ()
  (interactive)
  (beginning-of-line)
  (haml-mark-sexp)
  (set-mark
   (save-excursion
     (goto-char (mark))
     (unless (eobp)
       (forward-line -1)
       (end-of-line))
     (point))))

(defun cleanup-windows (&optional arg)
  "Clean up after a buffer that splits a frame into two windows, by switching
to the next window, killing its buffer, then killing its window, leaving the
original window and buffer in place. When called with ARG, do the reverse, i.e.
kill the buffer and window currently in focus, and leave the next buffer and
window in place."
  (interactive "P")
  (when (null arg)
    (other-window 1))
  (kill-this-buffer)
  (when (not (one-window-p))
    (delete-window)))
