;; .emacs

;; Add .emacs.d to load path
(add-to-list 'load-path "~/.emacs.d")

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)

;; default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" (system-name)))

;; default to unified diffs
(setq diff-switches "-u")

;; Display column numbers
(setq column-number-mode t)

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
  ;; edited by jsb
  '(tex-verbatim ((t (:foundry "courier" :family "*"))))
  '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 101 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))

;; disable startup screen
(setq inhibit-startup-screen t)

;; ** FlySpell ** 
;; See: 
;; - http://www-sop.inria.fr/members/Manuel.Serrano/flyspell/flyspell.html
;; - http://www.emacswiki.org/emacs/FlySpell
;; Make sure one has an aspell or ispell dictionary on system!

;; Load it
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker." t)
;(autoload 'flyspell-delay-command "flyspell" "Delay on command." t)
;(autoload 'tex-mode-flyspell-verify "flyspell" "" t)

;; Fix flyspell problem -- see http://stackoverflow.com/questions/1781762/enabling-flyspell-mode-gives-an-error
(setq flyspell-issume-welcome-flag nil)

;; Enable Flyspell in Text mode
(add-hook 'text-mode-hook 'flyspell-mode)

;; Enable Flyspell in TeX and LaTeX modes
(add-hook 'TeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)

;; Enable sorting by likeness
(setq flyspell-sort_corrections nil)

;; Disable printing messages for every word
(setq flyspell-issue-message-flag nil)

;; Modeline stuff
;; See: http://www.emacswiki.org/emacs/ModeLinePosition
(setq modelinepos-column-limit 79)
(require 'modeline-posn)
;(add-hook 'text-mode-hook 'modeline-posn)
;(add-hook 'TeX-mode-hook 'modeline-posn)
;(add-hook 'LaTeX-mode-hook 'modeline-posn)
;(add-hook 'c-mode-hook 'modeline-posn)

;; Fill-column-indicator stuff
;; See: http://www.emacswiki.org/emacs/FillColumnIndicator
(setq fci-rule-column 80)
;(setq fci-rule-column 110)
(require 'fill-column-indicator)
(add-hook 'text-mode-hook 'fci-mode)
(add-hook 'TeX-mode-hook 'fci-mode)
(add-hook 'LaTeX-mode-hook 'fci-mode)
(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'c++-mode-hook 'fci-mode)

;; Enable system copy work with Emacs paste and vice-versa
;(setq x-select-enable-clipboard t)
