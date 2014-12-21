(global-linum-mode t)

(when *is-a-mac*
  (setq mac-option-modifier 'control)
  (setq mac-right-option-modifier t)
  (setq mac-command-modifier 'meta))

(provide 'init-local)
