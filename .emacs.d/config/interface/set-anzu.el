(require 'anzu)
(global-anzu-mode +1)

(defun my/anzu-update-func (here total)
  (propertize (format "[%d/%d]" here total)
              'face '((:foreground "black" :weight bold))))
(setq anzu-mode-line-update-function 'my/anzu-update-func)

(provide 'set-anzu)
