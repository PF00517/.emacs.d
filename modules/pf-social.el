(require 'pf-straight)

(use-package tracking)

; (use-package telega-url-shorten)

; (use-package telega-adblock)

(use-package telega
  :commands (telega)
  :hook
  (telega-load . telega-notifications-mode)
  (telega-load . telega-appindicator-mode)
  (telega-load . telega-mode-line-mode)
  ; (telega-load . telega-autoplay-mode)
  ; (telega-load . global-telega-url-shorten)
  ; (telega-chat-mode . company-mode)
  :bind (:map pf-global-map ("C-c t" . telega-prefix-map))
  :config
  (setq telega-use-tracking-for '(or unmuted mention)
        telega-completing-read-function #'completing-read
        telega-msg-rainbow-title t
        ; telega-video-player-command "mpc-hc64 /close"
        ; telega-sticker-animated-play t
        telega-root-view-grouping-folders 'prepend)
  ; (telega-adblock-mode 1)
  )

(provide 'pf-social)
