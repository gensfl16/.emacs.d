;; (require-package 'exwm)
;; (require-package 'xelb)

;; (server-start)

(require 'exwm)

(require 'exwm-config)
(exwm-config-ido)

(setq exwm-workspace-number 3)

(add-hook 'exwm-update-class-hook
	  (lambda ()
	    (unless (or (string-prefix-p "sun-awt-X11-" exwm-instance-name)
			(string= "gimp" exwm-instance-name))
	      (exwm-workspace-rename-buffer exwm-class-name))))

(add-hook 'exwm-update-title-hook
	  (lambda ()
	    (when (or (not exwm-instance-name)
		      (string-prefix-p "sun-awt-X11-" exwm-instance-name)
		      (string= "gimp" exwm-instance-name))
	      (exwm-workspace-rename-buffer exwm-title))))

(setq exwm-input-global-keys
      `(
	([?\s-r] . exwm-reset)
	([?\s-w] . exwm-workspace-switch)
	,@(mapcar (lambda (i)
		    `(,(kbd (format "s-%d" i))
		      (lambda ()
			(interactive)
			(exwm-workspace-switch-create ,i))))
		  (number-sequence 0 9))
	([?\s-&] . (lambda (command)
		     (interactive (list (read-shell-command "$ ")))
		     (start-process-shell-command command nil command)))
	([s-f2] . (lambda ()
		    (interactive)
		    (start-process "" nil "/usr/bin/slock")))))

(define-key exwm-mode-map [?\C-q] #'exwm-input-send-next-key)

;; (setq exwm-input-set-simulation-keys
;;       '(
;; 	;; movement
;; 	([?\C-b] . [left])
;; 	([?\C-f] . [right])
;; 	([?\C-p] . [up])
;; 	([?\C-n] . [down])
;; 	([?\C-a] . [home])
;; 	([?\C-e] . [end])
;; 	([?\M-v] . [prior])
;; 	([?\C-v] . [next])
;; 	([?\C-d] . [delete])
;; 	([?\C-k] . [S-end delete])
;; 	;; cut/paste
;; 	([?\C-w] . [?\C-x])
;; 	([?\M-w] . [?\C-c])
;; 	([?\C-y] . [?\C-v])
;; 	;; search
;; 	([?\C-s] . [?\C-f])))

;; (setq exwm-workspace-minibuffer-position 'bottom)
;; (setq exwm-workspace-display-echo-area-timeout 3)

(require 'exwm-randr)

(defun exwm-change-screen-hook ()
  (let ((xrandr-output-reaexp "\n\\([^ ]+\\) connected ")
	default-output)
    (with-temp-buffer
      (call-process "xrandr" nil t nil)
      (goto-char (point-min))
      (re-search-forward xrandr-output-reaexp nil 'noerror)
      (setq default-output (match-string 1))
      (forward-line)
      (if (not (re-search-forward xrandr-output-reaexp nil 'noerror))
	  (call-process "xrandr" nil nil nil "--output" default-output "--auto")
	(call-process
	 "xrandr" nil nil nil
	 "--output" (match-string 1)
	 "--left-of" default-output "--auto")
	(setq exwm-randr-workspace-monitor-plist (list 0 (match-string 1)))))))

(add-hook 'exwm-randr-screen-change-hook 'exwm-change-screen-hook)
(exwm-randr-enable)

(require 'exwm-systemtray)
(exwm-systemtray-enable)

(require 'exwm-xim)
(exwm-xim-enable)
(push ?\C-\\ exwm-input-prefix-keys)

(exwm-enable)

;; (require 'init-im)

;; For pdf-tools
;; (require-package 'pdf-tools)
;; (pdf-tools-install)
;; (pdf-loader-install)

(provide 'init-exwm)
