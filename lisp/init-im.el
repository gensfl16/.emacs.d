(require-package 'fcitx)

;; (call-process "fcitx" nil nil nil "-d" "-r")
(fcitx-aggressive-setup)
(setq fcitx-use-dbus t)

(provide 'init-fcitx)
