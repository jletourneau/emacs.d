;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;;
;; (package-initialize)

(setq package-enable-at-startup nil)

;; Defer most customization work until basic initialization is complete, so
;; that Emacs will come up as quickly as possible.
(add-hook
 'after-init-hook
 (lambda ()
   (add-to-list
    'load-path
    (concat (file-name-as-directory user-emacs-directory) "include"))
   (load "_local_custom" t)
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
   (load "_theme" t)
   (load "_local_post_init" t)))
