(require-package 'lsp-mode)
(require-package 'company-lsp)
(require-package 'lsp-ui)
(require-package 'projectile)
(require-package 'flycheck)

(require 'lsp-mode)
;; (setq lsp-auto-guess-root t)
(setq lsp-prefer-flymake nil)
(add-hook 'c-mode-common-hook 'lsp)
(add-hook 'c-mode-common-hook 'display-line-numbers-mode)
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "clangd")
		  :major-modes '(c-mode c++-mode)
		  :server-id 'clangd))
;; (setq lsp-auto-configure nil)

;;; eglot
;; (require-package 'eglot)
;; (add-to-list 'eglot-server-programs '((c++-mode c-mode) . (eglot-cquery "clangd")))
;; (add-hook 'c-mode-common-hook 'eglot-ensure)

(provide 'init-lsp)
