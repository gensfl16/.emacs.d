(register-input-method
 "chinese-wubi86" "Chinese-GB" 'quail-use-package
 "五" "汉字输入::五笔::"
 "quail/wubi86")
(setq default-input-method 'chinese-wubi86)

(require 'exim)
(push ?\C-\\ exwm-input-prefix-keys)
(add-hook 'exwm-init-hook 'exim-start)

(provide 'init-im)
