(tool-bar-mode nil)  ;; 关掉工具栏
(setq inhibit-splash-screen t) ;; 关掉启动画面
(setq initial-scratch-message nil) ;; 关掉 scratch buffer 里的内容
(setq-default cursor-type 'bar) ;; 改变光标样式
(global-hl-line-mode t) ;; 当前行高亮

(setq linum-format "%d ") ;; 行号
(global-linum-mode t)

;; (setq-default auto-fill-function 'do-auto-fill)
;; 80个字符长度
(setq-default
 whitespace-line-column 80
 whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(ido-mode t) ;; ido

(provide 'init-better)
