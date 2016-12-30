;;; init-jekyll.el --- initialize the jekyll environment
;;;
;;; Commentary:
;;;               init jekyll environment
;;; Code:

(require-package 'jekyll-modes)

(add-to-list 'auto-mode-alist '("\\.md$" . jekyll-markdown-mode))


(provide 'init-jekyll)

;;; init-jekyll ends here
