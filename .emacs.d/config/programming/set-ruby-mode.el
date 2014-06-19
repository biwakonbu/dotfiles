(autoload 'enh-ruby-mode "enh-ruby-mode"
  "Mode for editing ruby source files" t)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook
          '(lambda ()
                  (setq tab-with 2)
                  (setq tab-indent-level tab-width)
                  (setq ruby-deep-indent-paren-style nil)
                  ))

;; ruby end
(require 'ruby-end)
(setq ruby-block-highlight-toggle t)

;; ruby block
(require 'ruby-block)
(add-hook 'enh-ruby-mode-hook '(lambda () (ruby-block-mode t)))
(setq ruby-block-highlight-toggle t)

;; ruby electric
(require 'ruby-electric)
(add-hook 'enh-ruby-mode-hook '(lambda () (ruby-electric-mode t)))
;;(setq ruby-electric-expand-delimiters-list nil)

;; rcodetools
(require 'rcodetools)
(setq rct-find-tag-if-available nil)
(defun enh-ruby-mode-hook-rcodetools ()
  (define-key ruby-mode-map "\M-\C-i" 'rct-complete-symbol)
  (define-key ruby-mode-map "\C-c\C-t" 'ruby-toggle-buffer)
  (define-key ruby-mode-map "\C-c\C-f" 'rct-ri))
(add-hook 'enh-ruby-mode-hook 'enh-ruby-mode-hook-rcodetools)

(provide 'set-ruby-mode)
