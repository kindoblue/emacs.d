;;; init-python-mode.el --- to configure python environment
;;;
;;; Commentary:
;;;
;;; Code:
(require-package 'realgud)

(load-library "realgud")
(setq realgud:pdb-command-name "python -m pdb")

(provide 'init-realgud)
;;; init-realgud.el ends here
