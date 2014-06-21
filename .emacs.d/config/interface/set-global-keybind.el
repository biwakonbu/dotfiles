(keyboard-translate ?\C-h ?\C-?)
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
(define-key global-map (kbd "C-c C-s") 'magit-status)
(define-key global-map (kbd "C-t") 'other-window)
(define-key global-map (kbd "C-a") 'seq-home)
(define-key global-map (kbd "C-e") 'seq-end)

(provide 'set-global-keybind)
