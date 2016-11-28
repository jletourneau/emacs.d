(add-to-list 'default-frame-alist '(font . "fontset-custom"))
(add-to-list 'default-frame-alist '(line-spacing . 2))
(add-to-list 'default-frame-alist '(width . 100))
(add-to-list 'default-frame-alist '(height . 50))

(setq
 mac-control-modifier 'control
 mac-option-modifier 'meta
 mac-command-modifier 'meta)

(add-hook
 'find-file-hook
 (lambda ()
   (when (fboundp 'hl-line-mode)
     (hl-line-mode 1))))
