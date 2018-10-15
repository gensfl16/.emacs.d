(require-package 'lsp-mode)
(require-package 'lsp-clangd)

(setq lsp-enable-eldoc nil)
(setq lsp-message-project-root-warning t)
(setq create-lockfiles nil)

(add-hook 'c-mode-hook #'lsp-clangd-c-enable)
(add-hook 'c++-mode-hook #'lsp-clangd-c++-enable)

(provide 'init-lsp)
