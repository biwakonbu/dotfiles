;; ruby block
(require 'ruby-block)
(ruby-block-mode t)

;; ruby end
(require 'ruby-end)
(setq ruby-block-highlight-toggle t)

;; ruby electric
(require 'ruby-electric)
(ruby-electric-mode t)
(setq ruby-block-highlight-toggle t)
;; (setq ruby-electric-expand-delimiters-list nil)

;; rbenv
(require 'rbenv)
(setq rbenv-show-active-ruby-in-modeline nil)
(global-rbenv-mode)

;; indent
(setq tab-with 2)
(setq tab-indent-level tab-width)
(setq ruby-deep-indent-paren-style nil)


(provide 'enh-ruby-custom)
