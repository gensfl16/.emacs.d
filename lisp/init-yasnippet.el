(require-package 'yasnippet)
(require-package 'common-lisp-snippets)
(require-package 'yasnippet-snippets)

(defun my-init-yasnippet ()
  (yas-minor-mode 1)
  (yas-reload-all)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand))

;; ;; prog-mode
;; (add-hook 'prog-mode-hook
;; 	  (lambda ()
;; 	    (my-init-yasnippet)))

;; c
(add-hook 'c-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))
;; c++
(add-hook 'c++-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))
;; lisp
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))

;; elisp
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))

;; asm
(add-hook 'asm-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))

;; slime-compamy
(add-hook 'slime-repl-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))

;; LaTeX
(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))

;; org
(add-hook 'org-mode-hook
	  (lambda ()
	    (my-init-yasnippet)))

(provide 'init-yasnippet)
