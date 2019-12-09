(setq inhibit-starup-message t)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-splash-screen t)

(setq backup-directory-alist `(("." . "~/saves")))
(setq delete-old-versions t
      kept-new-versions 0
      kept-old-versions 0
      version-control t)

(use-package leuven-theme
  :ensure t
  :config
  (load-theme 'leuven)
  (setq org-fontify-whole-heading-line t)
  (setq leuven-scale-outline-headlines nil)
  (setq leuven-scale-org-agenda-structure nil))

(use-package swiper
  :ensure t
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ;; enable this if you want `swiper' to use it
    ;; (setq search-default-mode #'char-fold-to-regexp)
    (global-set-key "\C-s" 'swiper)
    ))

(use-package counsel
  :ensure t)

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode )))

(use-package projectile
  :ensure t
  :config
  (projectile-global-mode)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-completion-system 'ivy))

(use-package which-key
  :ensure t
  :config
  (which-key-mode))
