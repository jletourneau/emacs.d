(defun jal/kill-current-buffer ()
  "Safe version (without menu-bar-related checks) of `kill-this-buffer'."
  (interactive)
  (kill-buffer (current-buffer)))

(defun jal/kill-buffer-query ()
  "Bury *scratch* and *Messages* buffers rather than letting them be killed."
  (if (or (eq (current-buffer) (get-buffer "*scratch*"))
          (eq (current-buffer) (get-buffer "*Messages*")))
      (progn (bury-buffer) nil)
    t))

(defun jal/first-available-font (font-list)
  (seq-find (lambda (f) (not (null (x-list-fonts f)))) font-list))

(defun jal/macos-open ()
  (interactive)
  (let ((filename (dired-get-file-for-visit)))
    (start-process "default-app" nil "open" filename)))
