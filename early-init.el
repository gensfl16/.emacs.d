(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fringe-mode 1)

(set-face-foreground 'region "black")
(set-face-background 'region "lightblue")

(setq inhibit-splash-screen t) ;; 关掉启动画面
(setq initial-scratch-message nil) ;; 关掉 scratch buffer 里的内容
(setq-default cursor-type 'bar) ;; 改变光标样式
(global-hl-line-mode t) ;; 当前行高亮
