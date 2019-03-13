(require-package 'company)
(require-package 'company-auctex)
(require-package 'company-c-headers)
(require-package 'cmake-mode)

(defun my/init-company ()
  (company-mode 1)
  (display-line-numbers-mode)
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 2)
  ;; company 与 yasnippet 无法同时补全，但是在 auto-complete 下是可以的，
  ;; 所以用这个方法替代，即有需要时按键补全 yasnippet
  ;; 奇怪的是加入 company-backends 也不行
  (global-set-key (kbd "C-c y") 'company-yasnippet)
  )

(let* ((hooks '(lisp-mode-hook
		emacs-lisp-mode-hook
		asm-mode-hook
		sly-mrepl-mode-hook
		LaTeX-mode-hook
		org-mode-hook
		cmake-mode-hook)))
  (dolist (hook hooks)
    (add-hook hook 'my/init-company)))

(add-hook 'LaTeX-mode-hook 'company-auctex-init)

(defun my/c-or-c++-mode-company ()
  (my/init-company)
  (add-to-list 'company-backends 'company-c-headers))

;; (add-hook 'c-mode-common-hook 'my/c-or-c++-mode-company)

(provide 'init-company)
