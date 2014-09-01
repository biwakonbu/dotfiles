(require 'flycheck)
(setq flycheck-check-syntax-automatically '(mode-enabled save))
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
(flycheck-define-checker ruby-rubocop
  "A Ruby syntax and style checker using the RuboCop tool.

See URL `http://batsov.com/rubocop/'."
  :command ("rubocop" "--format" "emacs" "--silent"
            (config-file "--config" flycheck-rubocoprc)
            source)
  :error-patterns
  ((warning line-start
            (file-name) ":" line ":" column ": " (or "C" "W") ": " (message)
            line-end)
   (error line-start
          (file-name) ":" line ":" column ": " (or "E" "F") ": " (message)
          line-end))
  :modes (enh-ruby-mode))

(provide 'set-flycheck)
