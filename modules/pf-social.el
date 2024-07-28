(require 'pf-straight)

(use-package tracking)

(use-package telega
  :commands (telega)
  :defer t
  :hook
  (telega-load . telega-notifications-mode)
  (telega-load . telega-appindicator-mode)
  (telega-load . telega-mode-line-mode)
  (telega-load . telega-autoplay-mode)
  ; (telega-load . global-telega-url-shorten)
  ; (telega-load . telega-adblock-mode)
  (telega-load . (lambda ()
                   (setq telega-use-tracking-for '(or unmuted mention)
                         ; telega-completing-read-function #'completing-read
                         telega-msg-rainbow-title t
                         telega-sticker-animated-play t
                         telega-emoji-font-family "Apple Color Emoji" ; "Iosevka Extended"
                         telega-emoji-use-images t
                         telega-video-play-incrementally nil
                         telega-animation-height 20
                         telega-sticker-size '(15 . 90))))
  (telega-chat-mode . company-mode)
  :bind (:map pf-global-map ("C-c t" . telega-prefix-map)))

(provide 'pf-social)
