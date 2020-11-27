;; ref: https://www.emacswiki.org/emacs/MultipleSMTPAccounts
(require 'smtpmail)

;; (setq auth-sources '("path-of-authinfo"))
;; (setq user-full-name full-name)

;; SMTP config
;; (setq smtp-accounts
;;       '((mech[plain | login | cram-md5 | ssl] from-addr server port user)))

(setq send-mail-function 'smtpmail-send-it
      message-send-mail-function 'smtpmail-send-it)

(setq smtpmail-debug-info t
      smtpmail-debug-verb t)

(setq saved-stream-type smtpmail-stream-type
      saved-auth-supported smtpmail-auth-supported)

(defun my-set-smtp (mech server port user)
  (setq smtpmail-smtp-user user
	smtpmail-smtp-server server
	smtpmail-smtp-service port
	user-mail-address user)
  (cond
   ((memq mech '(cram-md5 plain login))
    (setq smtpmail-stream-type saved-stream-type
	  smtpmail-auth-supported (list mech)))
   ((eql mech 'ssl)
    (setq smtpmail-stream-type mech
	  smtpmail-auth-supported saved-auth-supported))
   (t (error "Unrecognized SMTP auth. mechanism: `%s'." mech)))
  (message "Setting SMTP server to `%s:%s' for user `%s'. Mechanism: `%s'."
	   server port user mech))

(defun my-change-smtp ()
  (save-excursion
    (cl-loop with from = (save-restriction
			(message-narrow-to-headers)
			(message-fetch-field "from"))
	  for (auth-mech addr . auth-spec) in smtp-accounts
	  when (string-match addr from)
	  do (cl-return (apply 'my-set-smtp (cons auth-mech auth-spec)))
	  finally (error "Cannot infer SMTP information."))))

(defadvice smtpmail-via-smtp
    (before change-smtp-by-message-from-field (recipient buffer &optional ask) activate)
  (with-current-buffer buffer (my-change-smtp)))

(provide 'init-mails)
