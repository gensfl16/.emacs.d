(require-package 'chinese-wbim)

(autoload 'chinese-wbim-use-package "chinese-wbim" "Another emacs input method")
(setq chinese-wbim-use-tooltip nil)
(register-input-method
 "chinese-wbim" "euc-cn" 'chinese-wbim-use-package
 "五笔" "汉字五笔输入法" "wb.txt")

(provide 'init-chinese-wbim)
