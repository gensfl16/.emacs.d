;; (require 'lazycat-theme)

;; (add-to-list 'custom-theme-load-path (expand-file-name "site-lisp/one-themes" user-emacs-directory))
(add-to-list 'custom-theme-load-path (expand-file-name "site-lisp/srcery-emacs" user-emacs-directory))

;; (set-face-attribute 'default nil :font "DejaVu Sans Mono")
;; (set-face-attribute 'default nil :font "Droid Sans Mono")
;; (set-frame-font "Droid Sans Mono-14")

(set-fontset-font t 'latin "Noto Sans")
(set-fontset-font t 'han "Noto Sans CJK SC Regular")

;; (load-theme 'one-dark t)
(load-theme 'srcery t)

(provide 'init-ui)
