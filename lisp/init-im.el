;; pyim + pyim-wbdict
(require-package 'pyim)
(require-package 'pyim-wbdict)
(require-package 'posframe)

(setq pyim-page-tooltip 'posframe)
(setq pyim-page-length 5)
(setq pyim-default-scheme 'wubi)
(pyim-wbdict-v98-enable)
(setq default-input-method "pyim")

(provide 'init-im)
