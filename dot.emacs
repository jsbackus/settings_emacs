;; Load verilog mode only when needed
(autoload 'verilog-mode "verilog-mode" "Verilog mode" t ) 
;; Any files that end in .v should be in verilog mode
(setq auto-mode-alist (cons  '("\\.v\\'" . verilog-mode) auto-mode-alist)) 
(setq auto-mode-alist (cons  '("\\.vh\\'" . verilog-mode) auto-mode-alist)) 
(setq auto-mode-alist (cons  '("\\.vm\\'" . verilog-mode) auto-mode-alist)) 
(setq auto-mode-alist (cons  '("\\.tb\\'" . verilog-mode) auto-mode-alist)) 
(setq auto-mode-alist (cons  '("\\.tv\\'" . verilog-mode) auto-mode-alist)) 
;; Any files in verilog mode should have their keywords colorized
(add-hook 'verilog-mode-hook '(lambda () (font-lock-mode 1)))
;; Kill annoying auto newline on ;
(setq verilog-auto-newline nil)
;; Set verilog Compile command to "verilog"
(setq verilog-compiler "verilog ") 
;; Show time on modeline
(display-time)
;; Any files that end in .tl should be c  mode
(setq auto-mode-alist (cons  '("\\.tl\\'" . c-mode) auto-mode-alist)) 
;; Any files in c mode should have their keywords colorized
(add-hook 'c-mode-hook '(lambda () (font-lock-mode 1)))

;; Any files in emacs lisp mode should have their keywords colorized
(add-hook 'emacs-lisp-mode-hook '(lambda () (font-lock-mode 1)))

(setq auto-mode-alist (cons '("\\.bas" . visual-basic-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("visual-basic" . visual-basic-mode)
interpreter-mode-alist))
(autoload 'visual-basic-mode "visual-basic-mode" "VB Editing Mode." t)

(add-hook `text-mode-hook `flyspell-mode)
(add-hook `latex-mode-hook `flyspell-mode)
(add-hook `tex-mode-hook `flyspell-mode)
(add-hook `bibtex-mode-hook `flyspell-mode)

(setq header-user-name "Jeff")
(require 'bibtex)

;; Options Menu Settings
;; =====================
(cond
 ((and (string-match "XEmacs" emacs-version)
       (boundp 'emacs-major-version)
       (or (and
            (= emacs-major-version 19)
            (>= emacs-minor-version 14))
           (= emacs-major-version 20))
       (fboundp 'load-options-file))
  (load-options-file "/home/jbackus/.xemacs-options")))
;; ============================
;; End of Options Menu Settings
(custom-set-variables
 '(load-home-init-file t t))
(custom-set-faces)

;; enable line and column modes on startup
(setq column-number-mode t)
(setq line-number-mode t)

;; Disable the icon bar
(if window-system
    (tool-bar-mode -1)
)

;; change colors
;;(add-to-list 'load-path "/home/jbackus/local_modules/jsbTools/linux/1.0/usr/share/emacs/site-list/color-theme/color-theme.el")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;; Disable startup screen
(setq inhibit-startup-screen t)

; Enable and configure modeline-posn.el
(require 'modeline-posn)
(setq modelinepos-column-limit 79)
