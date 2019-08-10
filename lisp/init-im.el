;; pyim + pyim-wbdict
(require 'pyim)
(require 'pyim-wbdict)
(require 'posframe)

(setq pyim-page-tooltip 'posframe)
(setq pyim-page-length 5)
(setq pyim-default-scheme 'wubi)
(pyim-wbdict-v98-enable)
(setq default-input-method "pyim")

(setq-default pyim-english-input-switch-functions
	      '(
		;; pyim-probe-dynamic-english
		;; pyim-probe-isearch-mode
		pyim-probe-program-mode
		pyim-probe-org-structure-template))

(setq-default pyim-punctuation-half-width-functions
	      '(pyim-probe-punctuation-line-beginning
		pyim-probe-punctuation-after-punctuation))

(setq pyim-punctuation-translate-p '(auto yes no))

(global-set-key (kbd "s-j") 'pyim-convert-string-at-point)

(provide 'init-im)
