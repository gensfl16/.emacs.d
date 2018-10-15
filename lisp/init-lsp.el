(require-package 'lsp-mode)
(require-package 'lsp-clangd)

(with-eval-after-load 'lsp-mode
  (require 'lsp-clangd)
  (add-hook 'c-mode-hook #'lsp-clangd-enable)
  (add-hook 'c++-mode-hook #'lsp-clangd-c++-enable))

(provide 'init-lsp)
