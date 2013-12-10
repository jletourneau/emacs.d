(setq package-enable-at-startup nil)

;; Defer most customization work until basic initialization is complete, so
;; that Emacs will come up as quickly as possible.
(add-hook
 'after-init-hook
 (lambda ()
   (add-to-list 'load-path (expand-file-name "~/.emacs.d"))
   (load "_settings" t)
   (load "_utilities" t)
   (load "_font" t)
   (load "_defuns" t)
   (load "_packages" t)
   (load "_keybindings" t)
   (if (display-graphic-p)
       (load "_gui" t)
     (load "_terminal" t))))
