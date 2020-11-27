;; ref: https://emacs-china.org/t/emacs-send-mail-rmail-and-gnus/11730
(require 'gnus)

(setq gnus-select-method '(nnnil ""))

;; IMAP config
;; (setq imap-accounts
;;       '((name server port stream[ssl | network])))

(defun my-set-imap ()
  (cl-loop for (name server port stream)  in imap-accounts
	   do (add-to-list 'gnus-secondary-select-methods
			   (list 'nnimap name
				 (list 'nnimap-address server)
				 (list 'nnimap-server-port port)
				 (list 'nnimap-stream stream)
 				 '(nnimap-inbox "INBOX")
 				 '(nnimap-expunge t)))))

(my-set-imap)

(setq nnmail-expiry-wait 'never
      nnmail-expiry-target "Deleted Message")

;; GNUS config

(setq gnus-use-full-window nil)

(provide 'init-gnus)
