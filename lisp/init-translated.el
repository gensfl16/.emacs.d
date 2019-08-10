(require 'insert-translated-name)
(require 'company-english-helper)
(require 'bing-dict)

(global-set-key (kbd "C-c d") 'bing-dict-brief)
(global-set-key (kbd "C-c t") 'insert-translated-name-insert)

(provide 'init-translated)
