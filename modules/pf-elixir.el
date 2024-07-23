(require 'pf-straight)

(use-package elixir-mode
  :commands (elixir-mode)
  :mode ("\\.exs?" . elixir-mode))

(use-package alchemist
  :demand t
  :after (elixir-mode))

(provide 'pf-elixir)
