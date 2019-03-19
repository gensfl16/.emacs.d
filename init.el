(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
;; (require 'init-exwm)
(require 'init-better)
(require 'init-ui)
;; (require 'init-org)
(require 'init-sly)
(require 'init-smex)
(require 'init-company)
(require 'init-yasnippet)
;; (require 'init-window-numbering)
(require 'init-multiple-cursors)
;; (require 'init-ggtags)
;; (require 'init-im)
;; (require 'init-lsp)
;; (require 'init-eglot)

(provide 'init)
