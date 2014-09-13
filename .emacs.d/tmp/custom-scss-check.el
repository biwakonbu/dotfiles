(defun my-css-electric-pair-brace ()
  (interactive)
  (insert "{")(newline-and-indent)
  (newline-and-indent)
  (insert "}")
  (indent-for-tab-command)
  (previous-line)(indent-for-tab-command))

(defun my-semicolon-ret ()
  (interactive)
  (insert ";")
  (newline-and-indent))

(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-hook 'scss-mode-hook 'auto-complete-mode)
;(add-hook 'scss-mode-hook 'flycheck-mode)
(add-to-list 'ac-modes 'scss-mode)
(add-hook 'scss-mode-hook
          (lambda ()
            (define-key scss-mode-map "{" 'my-css-electric-pair-brace)
            (define-key scss-mode-map ";" 'my-semicolon-ret)
            (setq css-indent-offset 2)
            (setq scss-compile-at-save nil)
            (setq ac-sources '(ac-source-yasnippet
                               ac-source-css-property
                               ac-source-dictionary
                               ))
            ))

(load-library "flymake-cursor")
(provide 'custom-scss-check)
