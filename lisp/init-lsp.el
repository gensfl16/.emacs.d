(require-package 'lsp-mode)
(require-package 'f)
(require-package 'ht)
;; (require-package 'lsp-clangd)
(require-package 'company-lsp)
(require-package 'lsp-ui)

;;; lsp-mode NEXT
(require 'lsp)
;;; (add-hook 'c-mode-hook 'lsp)
;;; (add-hook 'c++-mode-hook 'lsp)
(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "clangd")
		  :major-modes '(c-mode c++-mode)
		  :server-id 'clangd))
;;; (setq lsp-auto-configure nil)

;;; lsp-mode original
;;; (setq lsp-enable-eldoc nil)
;;; (setq lsp-message-project-root-warning t)
;;; (setq create-lockfiles nil)
;;; 
;;; ;; (push 'company-lsp company-backends)
;;; ;; (setq company-lsp-cache-candidates 'auto)
;;; ;; (setq company-lsp-async t)
;;; ;; (setq company-lsp-enable-snippet t)
;;; ;; (setq company-lsp-enable-recompletion t)
;;; 
;;; ;; refer lsp-clangd
;;; (lsp-define-stdio-client
;;;  lsp-c-mode
;;;  "c"
;;;  (lsp-make-traverser "compile_commands.json")
;;;  (list "clangd")
;;;  :ignore-regexps
;;;  '("^Error -[0-9]+: .+$"))
;;; 
;;; 
;;; (add-hook 'lsp-mode-hook 'lsp-ui-mode)
;;; (add-hook 'c-mode-hook #'lsp-c-mode-enable)
;;; (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

;;; eglot
;; (require-package 'eglot)
;; (add-to-list 'eglot-server-programs '((c++-mode c-mode) . (eglot-cquery "clangd")))
;; (add-hook 'c-mode-hook 'eglot-ensure)

(provide 'init-lsp)
