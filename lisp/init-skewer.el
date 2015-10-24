(require-package 'skewer-mode)

(after-load 'skewer-mode
  (add-hook 'js2-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode))

(provide 'init-skewer)
