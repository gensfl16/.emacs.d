(require-package 'company)
(require-package 'company-auctex)
(require-package 'company-c-headers)
(require-package 'slime-company)

;; (add-hook 'after-init-hook 'global-company-mode)

(defun my-init-company ()
  (company-mode 1)
  (linum-mode 1)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2)
  ;; company 与 yasnippet 无法同时补全，但是在 auto-complete 下是可以的，
  ;; 所以用这个方法替代，即有需要时按键补全 yasnippet
  ;; 奇怪的是加入 company-backends 也不行
  (global-set-key (kbd "C-c y") 'company-yasnippet)
  )

;; c
(add-hook 'c-mode-hook
	  (lambda ()
	    (my-init-company)
	    ;; company-backends : company-c-headers
	    (with-eval-after-load 'company
	      (progn
		(add-to-list 'company-backends 'company-c-headers)))))
;; c++
(add-hook 'c++-mode-hook
	  (lambda ()
	    (my-init-company)
	    ;; company-backends : company-c-headers
	    (with-eval-after-load 'company
	      (progn
		(add-to-list 'company-backends 'company-c-headers)))))

;; lisp
(add-hook 'lisp-mode-hook
	  (lambda ()
	    (my-init-company)))

;; elisp
(add-hook 'emacs-lisp-mode-hook
	  (lambda ()
	    (my-init-company)))

;; asm
(add-hook 'asm-mode-hook
	  (lambda ()
	    (my-init-company)))

;; slime-compamy
(add-hook 'slime-repl-mode-hook
	  (lambda ()
	    (my-init-company)
	    (slime-setup '(slime-fancy slime-company))))

;; LaTeX
(add-hook 'LaTeX-mode-hook
	  (lambda ()
	    (my-init-company)
	    (company-auctex-init)))

;; org
(add-hook 'org-mode-hook
	  (lambda ()
	    (my-init-company)))

(provide 'init-company)
