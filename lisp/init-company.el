(require-package 'company)
(require-package 'company-auctex)
(require-package 'company-c-headers)
(require-package 'slime-company)

(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 2)
;; company-backends : company-c-headers
(with-eval-after-load 'company
  (progn
    (add-to-list 'company-backends 'company-c-headers)))
;; latex
(company-auctex-init)
;; company 与 yasnippet 无法同时补全，但是在 auto-complete 下是可以的，
;; 所以用这个方法替代，即有需要时按键补全 yasnippet
;; 奇怪的是加入 company-backends 也不行
(global-set-key (kbd "C-c y") 'company-yasnippet)
;; slime-compamy
(slime-setup '(slime-fancy slime-company))

(provide 'init-company)
