(eval-when-compile (require 'cl))
(require 'helm)
(require 'helm-files)

(defun my/helm-files ()
  (interactive)
  (helm :sources '(helm-c-source-buffers-list
                   helm-c-source-recentf
                   helm-c-source-files-in-current-dir
                   helm-c-source-buffer-not-found
                   '(with-temp-buffer
                      (insert-file-contents helm-filelist-file-name)
                      (buffer-substring-no-properties (point-min) (point-max))))
        :buffer "*my/helm-filelist*"))

(provide 'helm-filelist)
