(require-package 'yasnippet)
(require-package 'common-lisp-snippets)
(require-package 'yasnippet-snippets)

(defun my/init-yasnippet ()
  (yas-minor-mode 1)
  (yas-reload-all)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand))

(let* ((hooks '(c-mode-common-hook
		lisp-mode-hook
		emacs-lisp-mode-hook
		asm-mode-hook
		;; sly-mrepl-mode-hook
		LaTeX-mode-hook
		org-mode-hook
		cmake-mode-hook)))
  (dolist (hook hooks)
    (add-hook hook 'my/init-yasnippet)))

(provide 'init-yasnippet)
