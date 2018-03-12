(load-theme 'wombat t)
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
;; (require 'init-exwm)
(require 'init-better)
(require 'init-org)
(require 'init-slime)
(require 'init-smex)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-window-numbering)
(require 'init-multiple-cursors)
(require 'init-ggtags)
;; (require 'init-im)

(provide 'init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ggtags multiple-cursors window-numbering common-lisp-snippets slime-company company-c-headers company-auctex smex slime company auctex))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
