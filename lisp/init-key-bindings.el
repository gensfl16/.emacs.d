;; (global-set-key [f5] ')
;; (global-set-key [f6] ')
;; (global-set-key [f7] ')
;; (global-set-key [f8] ')
(global-set-key [f9] 'kill-this-buffer)
;; (global-set-key [f12] 'eshell)

(require 'lazy-load)

(lazy-load-unset-keys
 '("C-z" "C-\\"))

(lazy-load-global-keys
 '(
   ("s-n" . aweshell-new)
   ("s-h" . aweshell-toggle)
   ("s-x s-x" . aweshell-dedicated-toggle)
   ;; ("C-l" . clear-scrollback)
   )
 "init-eshell")

(lazy-load-global-keys
 '(
   ("d" . bing-dict-brief)
   ("s" . insert-translated-name-insert)
   ("t" . toggle-company-english-helper)
   )
 "init-translated"
 "C-z")

(lazy-load-global-keys
 '(
   ("e" . mc/edit-lines)
   ("n" . mc/mark-next-like-this)
   ("p" . mc/mark-next-like-this)
   ("a" . mc/mark-all-like-this)
   )
 "init-multiple-cursors"
 "s-z")

(lazy-load-global-keys
 '(
   ("s-g" . magit-status)
   )
 "init-magit")

(lazy-load-global-keys
 '(
   ("M-x" . smex)
   ("C-c C-c M-x" . execute-extended-command)
   )
 "init-smex")

(lazy-load-global-keys
 '(
   ("C-\\" . toggle-input-method)
   ("s-j" . pyim-convert-string-at-point)
   )
 "init-im")

(lazy-load-global-keys
 '(
   ("s-y" . snails)
   ("s-u" . snails-search-point)
   )
 "init-snails")

;; (lazy-load-global-keys
;;  '(
;;    ("s-l" . sly)
;;    )
;;  "init-sly")

(lazy-load-global-keys
 '(
   ("s-t" . el2log-generate-file)
   )
 "init-el2log")

(provide 'init-key-bindings)
