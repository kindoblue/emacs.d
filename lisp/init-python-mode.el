(setq auto-mode-alist
      (append '(("SConstruct\\'" . python-mode)
		("SConscript\\'" . python-mode))
              auto-mode-alist))

(require-package 'pip-requirements)
(require-package 'elpy)
(require-package 'virtualenvwrapper)

(venv-initialize-interactive-shells) ;; for interactive shell support
(venv-initialize-eshell) ;; for eshell support
(setq venv-location "~/.virtualenvs")

(provide 'init-python-mode)
