;;; init-local.el --- initialize the environment
;;;
;;; Commentary:
;;;               init my environment
;;; Code:


(when *is-a-mac*
  (setq mac-option-modifier 'control)
  (setq mac-right-option-modifier t)
  (setq mac-command-modifier 'meta))

;; Line configuration
(global-linum-mode t) ;; enable line numbers globally
(setq linum-format "%4d \u2502 ")

(provide 'init-local)
;;; init-local.el ends here
