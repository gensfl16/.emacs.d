;; ref: lazycat-emacs
(defun add-subdirs-to-load-path (dir)
  "Recursive add directories to `load-path`."
  (let ((default-directory (file-name-as-directory dir)))
    (add-to-list 'load-path dir)
    (normal-top-level-add-subdirs-to-load-path)))
(add-subdirs-to-load-path (expand-file-name "lisp" user-emacs-directory))
(add-subdirs-to-load-path (expand-file-name "site-lisp" user-emacs-directory))

(let ((gc-cons-threshold most-positive-fixnum)
      (file-name-handler-alist nil))

  (with-temp-message (current-time-string)

    ;; (custom-set-faces
    ;;  '(default ((t (:background "black" :foreground "#137D11")))))

    (require 'init-private)
    (require 'init-better)
    (require 'init-ui)
    ;; (require 'init-im)
    (require 'init-sly)
    (require 'init-key-bindings)


    (run-with-idle-timer
     1 nil
     #'(lambda ()
	 (require 'init-pdf-tools)
	 (require 'init-yasnippet)
	 (require 'init-company)
	 (require 'init-eglot)
	 (require 'init-org)
	 (require 'init-telega)
	 (require 'init-mails)
	 (require 'init-gnus)
	 ;; (emacs-session-restore)
	 ))))

;; (require 'init-exwm)
;; (require 'init-socks)
;; (require 'init-window-numbering)
;; (require 'init-ggtags)
;; (require 'init-lsp)

(provide 'init)
