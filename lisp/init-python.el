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

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(elpy-enable)
(setq elpy-rpc-backend "jedi")

(define-key python-mode-map (kbd "RET")
  'newline-and-indent)

;; remember to install jedy and flake8
;; pip install jedi
;; pip install flake8

(provide 'init-python)
;;; init-python.el ends here
