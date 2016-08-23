
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-better)
(require 'init-org)
(require 'init-slime)
(require 'init-smex)
(require 'init-company)
(require 'init-yasnippet)
(require 'init-window-numbering)
(require 'init-multiple-cursors)

(provide 'init)
