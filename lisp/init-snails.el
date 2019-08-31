(require 'snails)
(require 'fuz)

;; (unless (require 'fuz-core nil t)
;;   (fuz-build-and-load-dymod))
;; (load "fuz-core.so" nil t)
(snails '(snails-backend-buffer
	  snails-backend-recentf
	  snails-backend-command))

(provide 'init-snails)
