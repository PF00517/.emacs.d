(require 'pf-straight)

(use-package tracking)

(use-package telega
  :commands (telega)
  :hook
  (telega-load . telega-notifications-mode)
  (telega-load . telega-appindicator-mode)
  (telega-load . telega-mode-line-mode)
  (telega-load . telega-autoplay-mode)
  ; (telega-load . global-telega-url-shorten)
  ; (telega-load . telega-adblock-mode)
  (telega-chat-mode . company-mode)
  :bind (:map pf-global-map ("C-c t" . telega-prefix-map))
  :config
  (require 'telega-url-shorten)
  (require 'telega-adblock)
  (setq telega-use-tracking-for '(or unmuted mention)
        ; telega-completing-read-function #'completing-read
        telega-msg-rainbow-title t
        telega-sticker-animated-play t
        telega-emoji-font-family "Iosevka Extended"
        telega-emoji-use-images t
        telega-video-play-inline t
        telega-video-play-incrementally nil
        ; telega-open-file-function 'org-open-file
        telega-video-player-command '(concat "mpc-hc64 /close"
                                             (when telega-ffplay-media-timestamp
                                               (format " /start %f" telega-ffplay-media-timestamp)))))

(provide 'pf-social)
