(require 'pf-straight)

(use-package flycheck
  :hook c-mode)

(use-package flycheck-posframe
  :demand t
  :after (flycheck)
  :hook flycheck-mode
  :config
  (flycheck-posframe-configure-pretty-defaults)
  (add-hook 'flycheck-posframe-inhibit-functions #'company--active-p))

(provide 'pf-flycheck)
