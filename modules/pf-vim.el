(require 'pf-straight)

(use-package evil
  :custom
  (evil-respect-visual-line-mode t)
  (evil-undo-system 'undo-redo)
  :config
  (evil-mode))

(provide 'pf-vim)
