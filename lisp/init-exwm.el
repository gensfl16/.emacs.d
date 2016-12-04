(require-package 'exwm)
(require-package 'xelb)

(require 'exwm)
(require 'exwm-config)
;; (exwm-config-default)

;; (exwm-config-misc)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 1)

(exwm-config-ido)

(setq display-time-default-load-average nil)
(display-time-mode t)

(setq exwm-workspace-number 3)

(add-hook 'exwm-update-class-hook
	  (lambda ()
	    (exwm-workspace-rename-buffer exwm-class-name)))

(exwm-input-set-key (kbd "s-r") #'exwm-reset)

(exwm-input-set-key (kbd "s-w") #'exwm-workspace-switch)

(dotimes (i 10)
  (exwm-input-set-key (kbd (format "s-%d" i))
		      `(lambda ()
			 (interactive)
			 (exwm-workspace-switch-create ,i))))

(exwm-input-set-key (kbd "s-&")
		    (lambda (command)
		      (interactive (list (read-shell-command "$ ")))
		      (start-process-shell-command command nil command)))

(push ?\C-q exwm-input-prefix-keys)
(define-key exwm-mode-map [?\C-q] #'exwm-input-send-next-key)

(exwm-input-set-simulation-keys
 '(([?\C-b] . left)
   ([?\C-f] . right)
   ([?\C-p] . up)
   ([?\C-n] . down)
   ([?\C-a] . home)
   ([?\C-e] . end)
   ([?\M-v] . prior)
   ([?\C-v] . next)
   ([?\C-d] . delete)
   ([?\C-k] . (S-end delete))))

;; (setq exwm-workspace-minibuffer-position 'bottom)
;; (setq exwm-workspace-display-echo-area-timeout 3)

(require 'exwm-randr)
(setq exwm-randr-workspace-output-plist '(0 "VGA-1"))
(add-hook 'exwm-randr-screen-change-hook
          (lambda ()
            (start-process-shell-command
             "xrandr" nil "xrandr --output VGA-1 --left-of LVDS-1 --auto")))
(exwm-randr-enable)

;; (require 'exwm-cm)
;; (setq window-system-default-frame-alist '((x . ((alpha . 100)))))
;; (setq exwm-cm-opacity 80)
;; (exwm-cm-enable)

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(exwm-enable)

;; (start-process "" nil "ibus-daemon" "-d" "-r" "-x")
;; (start-process "" nil "fcitx")

(provide 'init-exwm)
