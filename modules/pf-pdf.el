(require 'pf-straight)

(use-package pdf-tools
  :mode ("\\.pdf\\'" . pdf-tools-install)
  :bind (:map pdf-view-mode-map ("C-s" . isearch-forward))
  :custom
  (pdf-view-display-size 'fit-width)
  (pdf-annot-activate-created-annotations t "Automatically annotate highlights"))

(provide 'pf-pdf)
