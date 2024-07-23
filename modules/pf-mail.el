(require 'pf-straight)

(use-package smtpmail
  :demand t
  :custom
  (user-full-name "Vadim Lakom")
  ; (smtpmail-local-domain "tymoon.eu")
  (user-mail-address "vadimlakom@gmail.com")
  (send-mail-function 'smtpmail-send-it)
  ; (smtpmail-smtp-server "smtp.tymoon.eu")
  (smtpmail-stream-type 'starttls)
  (smtpmail-smtp-service 587))

(provide 'pf-mail)
