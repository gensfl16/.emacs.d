;; (add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; (require 'init-elpa)
;; (require 'init-module)

;; (require-module "aweshell")
;; (require-module "exwm")
;; (require-module "xelb")
;; (require-module "tao-theme")

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

    (custom-set-faces
     '(default ((t (:background "black" :foreground "#137D11")))))

    (require 'init-better)
    (require 'init-font)
    (require 'init-ui)
    (require 'init-company)
    (require 'init-key-bindings)


    (run-with-idle-timer
     1 nil
     #'(lambda ()
	 (require 'init-im)
	 (require 'init-snails)
	 (require 'init-pdf-tools)
	 ;; (require 'init-org)
	 ;; (emacs-session-restore)
	 ))))

;; (require 'init-exwm)
;; (require 'init-socks)
;; (require 'init-sly)
;; (require 'init-smex)
;; (require 'init-company)
;; (require 'init-yasnippet)
;; (require 'init-window-numbering)
;; (require 'init-ggtags)
;; (require 'init-lsp)
;; (require 'init-eglot)

(provide 'init)
