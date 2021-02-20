(require 'eglot)

(add-to-list 'eglot-server-programs '((c++-mode c-mode) . (eglot-cquery "/usr/lib/llvm/11/bin/clangd")))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(provide 'init-eglot)
