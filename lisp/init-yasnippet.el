(require 'yasnippet)
(require 'common-lisp-snippets)
;; (require 'yasnippet-snippets)

(defun my/init-yasnippet ()
  (yas-minor-mode 1)
  (yas-reload-all)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand))

(let* ((hooks '(c-mode-hook
		c++-mode-hook
		lisp-mode-hook
		emacs-lisp-mode-hook
		asm-mode-hook
	        sly-mrepl-mode-hook
		LaTeX-mode-hook
		org-mode-hook
		eshell-mode-hook
		;; cmake-mode-hook
		)))
  (dolist (hook hooks)
    (add-hook hook 'my/init-yasnippet)))

(provide 'init-yasnippet)
