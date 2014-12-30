;;; init-themes.el -- theme stuff
;;; Commentary:
;;; Code:
(when (< emacs-major-version 24)
  (require-package 'color-theme)
  (require-package 'heroku-theme)
  (load-theme 'heroku t))

(provide 'init-themes)
;;; init-themes.el ends here
