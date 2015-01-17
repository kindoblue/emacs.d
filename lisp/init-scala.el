;;; init-scala.el --- initialize the scala environment
;;;
;;; Commentary:
;;;               init scala environment
;;; Code:

(require-package 'ensime)

(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

(provide 'init-scala)

;;; init-scala ends here
