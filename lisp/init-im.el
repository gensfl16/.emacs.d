(require-package 'fcitx)

;; (setenv "XMODIFIERS" "@im=ibus")
;; (setenv "GTK_IM_MODULE" "ibus")
;; (setenv "QT_IM_MODULE" "ibus")
;; (setenv "QT4_IM_MODULE" "ibus")
;; (setenv "LC_CTYPE" "en_US.UTF-8")

;; 之后将重写一些函数使得fcitx.el 适合 ibus
;; 这点可以根据 fcitx.el 的 github 知道是可以的

;; (call-process "fcitx" nil nil nil "-d" "-r")
;; (fcitx-aggressive-setup)
;; (setq fcitx-use-dbus t)
;; 之后将重写一些函数使得fcitx.el 适合 ibus
;; 这点可以根据 fcitx.el 的 github 知道是可以的

(provide 'init-im)
