(require 'ibus)
;; Turn on ibus-mode automatically after loading .emacs
(add-hook 'after-init-hook 'ibus-mode-on)
;; Choose your key to toggle input status:
;(global-set-key (kbd "[zenkaku-hankaku]") 'ibus-toggle)

(provide 'my-ime)

