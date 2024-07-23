(setq debug-on-error t) 

(require 'pf-faststart)

(defvar pf-global-map (make-keymap))
(define-minor-mode pf-global-minor-mode
  "" :init-value t :lighter " PF" :keymap pf-global-map)

(pf-global-minor-mode 1)
(define-hook minibuffer-setup-hook ()
  (pf-global-minor-mode 0))

(defadvice load (after pf-global-map)
  (if (not (eq (car (car minor-mode-map-alist)) 'pf-global-minor-mode))
      (let ((mode-map (assq 'pf-global-minor-mode minor-mode-map-alist)))
        (assq-delete-all 'pf-global-minor-mode minor-mode-map-alist)
        (add-to-list 'minor-mode-map-alist mode-map))))

(ad-activate 'load)

(require 'pf-straight) 
(require 'pf-modules) 

(define-hook after-init-hook () 
  (setq debug-on-error nil)) 

(provide 'pf)
