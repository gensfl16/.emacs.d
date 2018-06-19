;; (require-package 'fcitx)
(require-package 'pyim)
(require-package 'pyim-wbdict)
(require-package 'posframe)

;; (setenv "XMODIFIERS" "@im=fcitx")
;; (setenv "GTK_IM_MODULE" "fcitx")
;; (setenv "QT_IM_MODULE" "fcitx")
;; (setenv "QT4_IM_MODULE" "fcitx")
;; (setenv "LC_CTYPE" "en_US.UTF-8")

;; 之后将重写一些函数使得fcitx.el 适合 ibus
;; 这点可以根据 fcitx.el 的 github 知道是可以的

;; (call-process "fcitx" nil nil nil "-d" "-r")
;; (fcitx-aggressive-setup)
;; (setq fcitx-use-dbus t)
;; 之后将重写一些函数使得fcitx.el 适合 ibus
;; 这点可以根据 fcitx.el 的 github 知道是可以的

(require 'pyim)
(require 'pyim-wbdict)

(pyim-wbdict-gbk-enable)

(setq default-input-method "pyim")
(setq pyim-default-scheme 'wubi)

(setq-default pyim-english-input-switch-functions
	      '(
;; 		pyim-probe-dynamic-english
		pyim-probe-isearch-mode
;; 		pyim-probe-program-mode
		pyim-probe-org-structure-template))

;; (setq-default pyim-punctuation-half-width-functions
;; 	      '(pyim-probe-punctuation-line-beginning
;; 		pyim-probe-punctuation-after-punctuation))

;; (pyim-isearch-mode 1)

(setq pyim-page-tooltip 'posframe)

(setq pyim-page-length 5)

(global-set-key (kbd "C-\\") 'toggle-input-method)
(global-set-key (kbd "M-f") 'pyim-forward-word)
(global-set-key (kbd "M-b") 'pyim-backward-word)
(global-set-key (kbd "s-\\") 'pyim-convert-code-at-point)
(global-set-key (kbd "C-;") 'pyim-delete-word-from-personal-buffer)

(provide 'init-im)
