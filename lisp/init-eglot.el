(require-package 'eglot)

(add-to-list 'eglot-server-programs '((c++-mode c-mode) . (eglot-cquery "clangd")))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(provide 'init-eglot)
