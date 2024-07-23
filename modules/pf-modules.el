;; -*- mode: elisp; lexical-binding: t; -*-
(require 'cl-lib) 

(defvar pf-module-list 
  '(:social ; :general :spell :pass :mail :perspective :treemacs :company :flycheck :magit :paredit :lisp :tex :web :js :c :java :shell :glsl :elixir :arduino :go :python :lua :rust :misc :vim :native
    ))

(defvar pf-default-module-list 
  '(:social ; :general :spell :pass :mail :perspective :treemacs :company :flycheck :magit :paredit :lisp :tex :web :js :c :java :shell :glsl :elixir :arduino :go :python :lua :rust :misc
    )) 

(defcustom pf-modules (copy-sequence pf-default-module-list) 
  "Which modules to load on startup" 
  :type `(set ,@(cl-loop for module in pf-module-list 
                         collect `(const ,module))) 
  :group 'pf) 

(dolist (module pf-modules) 
  (let ((name (intern (concat "pf-" (substring (symbol-name module) 1))))) 
    (require name))) 

(provide 'pf-modules)
