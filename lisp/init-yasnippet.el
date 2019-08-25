(require 'yasnippet)
(require 'common-lisp-snippets)
;; (require 'yasnippet-snippets)

(defvar my-yasnippet-snippets-root
  (expand-file-name "site-lisp/libs/yasnippet-snippets" user-emacs-directory)
  "Root directory of yasnippet snippets.")

(defun my-yasnippet-snippets-initialize ()
  "Load `yasnippet-snippets' snippets directory."
  (let ((dir (expand-file-name "snippets" my-yasnippet-snippets-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs dir t))
    (yas-load-directory dir)))

(eval-after-load 'yasnippet
  '(my-yasnippet-snippets-initialize))

(defun my/init-yasnippet ()
  (yas-minor-mode 1)
  (yas-reload-all)
  (define-key yas-minor-mode-map (kbd "<tab>") nil)
  (define-key yas-minor-mode-map (kbd "TAB") nil)
  (define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand))

(let* ((hooks '(c-mode-hook
		c++-mode-hook
		lisp-mode-hook
		emacs-lisp-mode-hook
		asm-mode-hook
	        sly-mrepl-mode-hook
		LaTeX-mode-hook
		org-mode-hook
		eshell-mode-hook
		;; cmake-mode-hook
		)))
  (dolist (hook hooks)
    (add-hook hook 'my/init-yasnippet)))

(provide 'init-yasnippet)
