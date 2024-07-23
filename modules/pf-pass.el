(require 'pf-straight)

(use-package pass
  :demand t
  :config (auth-source-pass-enable))

(provide 'pf-pass)
