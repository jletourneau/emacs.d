(load "_font" t)

(add-to-list 'default-frame-alist '(line-spacing . 2))
(add-to-list 'default-frame-alist '(width . 95))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(right-fringe . 0))

(setq
 mac-control-modifier 'control
 mac-option-modifier 'meta
 mac-command-modifier 'meta)

(add-hook
 'find-file-hook
 (lambda ()
   (when (fboundp 'hl-line-mode)
     (hl-line-mode 1))))
