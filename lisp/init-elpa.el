(require 'package)

;; melpa
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; package 无法自动更新，实际上，这个功能并不好，因为更新需要联网，但不能保证每次启动都有网络

(defvar *package-refresh-already* 0)
(defun require-package (package)
  "Install given PACKAGE."
  (if (package-installed-p package)
      t
    (if (= 1 *package-refresh-already*)
	(package-install package)
      (progn
	(package-refresh-contents)
	(setq *package-refresh-already* 1)
	(package-install package))))
  (require package))

(defun require-module (package)
  "Add load path of modules"
  (let ((dir (concat "site-lisp/" package)))
    (add-to-list 'load-path (expand-file-name dir user-emacs-directory))))

(package-initialize)

(provide 'init-elpa)
