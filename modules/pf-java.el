(require 'pf-straight)

(use-package jdee
  :commands (jdee-mode)
  :mode ("\\.java\\'" . jdee-mode))

(provide 'pf-java)
