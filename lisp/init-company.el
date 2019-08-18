(require 'company)
(require 'company-auctex)
;; (require 'auctex)
;; (require 'preview)
;; (require-package 'company-c-headers)
;; (require-package 'cmake-mode)

(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(dolist (hook (list
	       'LaTeX-mode-hook
	       'latex-mode-hook))
  (add-hook hook 'turn-on-reftex))

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
		eshell-mode-hook
;; 		cmake-mode-hook
		)))
  (dolist (hook hooks)
    (add-hook hook 'my/init-company)))

(add-hook 'LaTeX-mode-hook 'company-auctex-init)

(defun my/c-or-c++-mode-company ()
  (my/init-company)
  (add-to-list 'company-backends 'company-c-headers))

;; (add-hook 'c-mode-hook 'my/c-or-c++-mode-company)
;; (add-hook 'c++-mode-hook 'my/c-or-c++-mode-company)

(provide 'init-company)
