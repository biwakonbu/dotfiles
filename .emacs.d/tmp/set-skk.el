(require 'skk-setup)
(require 'skk-study)

;; skk-server AquaSKK
(if (eq system-type 'darwin)
    (progn
      (setq skk-server-portnum 1178)
      (setq skk-server-host "localhost")
      (add-to-list 'skk-completion-prog-list
                   '(skk-comp-from-jisyo "~/Dropbox/skk/skk-jisyo.utf8")))
  (setq skk-large-jisyo "~/Dropbox/skk/SKK-JISYO.L"))

(setq skk-jisyo-code 'utf-8)
(setq skk-sticky-key ";")
(setq skk-japanese-message-and-error t)
(setq skk-study-file "~/Dropbox/skk/.skk-study")


(defvar skk-auto-save-jisyo-interval 600)
(defun skk-auto-save-jisyo ()
  (skk-save-jisyo)
  )
(run-with-idle-timer skk-auto-save-jisyo-interval
                     skk-auto-save-jisyo-interval
                     'skk-auto-save-jisyo)

(add-hook 'isearch-mode-end-hook
          (function (lambda ()
                      (and (boundp 'skk-mode) skk-mode (skk-isearch-mode-cleanup))
                      (and (boundp 'skk-mode-invoked) skk-mode-invoked
                           (skk-set-cursor-properly)))))

(setq mac-pass-control-to-system nil)

(provide 'set-skk)
