(add-to-list 'default-frame-alist '(font . "fontset-standard-12"))
(add-to-list 'default-frame-alist '(line-spacing . 2))
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 50))

(add-hook
 'find-file-hook
 (lambda ()
   (when (fboundp 'hl-line-mode)
     (hl-line-mode 1))))
