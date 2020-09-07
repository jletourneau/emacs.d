(defun jal/kill-current-buffer ()
  "Safe version (without menu-bar-related checks) of `kill-this-buffer'."
  (interactive)
  (kill-buffer (current-buffer)))

(defun jal/first-available-font (font-list)
  (seq-find (lambda (f) (not (null (x-list-fonts f)))) font-list))
