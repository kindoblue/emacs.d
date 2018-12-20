;;; init-python-mode.el --- to configure python environment
;;;
;;; Commentary:
;;;
;;; Code:
(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
                ("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)
(require-package 'elpy)
(require-package 'virtualenvwrapper)
(require-package 'jedi)

(venv-initialize-interactive-shells) ;; for interactive shell support
(venv-initialize-eshell) ;; for eshell support
(setq venv-location "~/.virtualenvs")

(when (maybe-require-package 'anaconda-mode)
  (after-load 'python
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode))
  (when (maybe-require-package 'company-anaconda)
    (after-load 'company
      (after-load 'python
        (push 'company-anaconda company-backends)))))

(elpy-enable)
(setq elpy-rpc-backend "jedi")
;(elpy-use-ipython)

(define-key python-mode-map (kbd "RET")
  'newline-and-indent)

;; remember to install jedy and flake8
;; pip install jedi
;; pip install flake8

(provide 'init-python)
;;; init-python-mode.el ends here
