(require 'package)

;; melpa
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; 多次 package-refresh-contents 以及 package 无法自动更新
;; 后续再解决
(defun require-package (package)
  "Install given PACKAGE."
  (if (package-installed-p package)
      t
    (progn
      (package-refresh-contents)
      (package-install package))))

(package-initialize)

(provide 'init-elpa)
