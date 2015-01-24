(setq package-enable-at-startup nil)

;; Defer most customization work until basic initialization is complete, so
;; that Emacs will come up as quickly as possible.
(add-hook
 'after-init-hook
 (lambda ()
   (add-to-list 'load-path (expand-file-name "~/.emacs.d/include"))
   (load "_local_pre_init" t)
   (load "_defuns" t)
   (load "_packages" t)
   (load "_settings" t)
   (load "_utilities" t)
   (load "_keybindings" t)
   (if (display-graphic-p)
       (progn
         (load "_font" t)
         (load "_gui" t))
     (load "_terminal" t))
   (load "_local_post_init" t)))
