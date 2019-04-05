(add-hook 'eshell-mode-hook
	  (lambda ()
	    (setq pcomplete-cycle-completions nil)
	    (setq eshell-cmpl-cycle-completions nil)))

(provide 'init-eshell)
