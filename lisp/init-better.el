(setq-default display-line-numbers-width 2)
(setq display-line-numbers-current-absolute t)

;; (setq-default auto-fill-function 'do-auto-fill)
;; 80个字符长度
(setq-default
;;  whitespace-line-column 80
 whitespace-style '(face empty tabs lines-tail trailing))

(global-whitespace-mode t)

(setq display-time-default-load-average nil)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

(display-time-mode t)
(display-battery-mode t)

(ido-mode 1) ;; ido

;; backup file
(setq backup-directory-alist '(("." . "~/.config/emacs/.backups")))

;; (add-to-list 'default-frame-alist '(font . "Noto Serif CJK SC ExtraLight-10"))

(provide 'init-better)
