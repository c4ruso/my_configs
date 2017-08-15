(custom-set-variables
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(org-agenda-files
   (quote
    ("~/org/daily/morning_checklist.org" "~/org/daily/night_checklist.org" "~/org/daily/monday.org" "~/org/daily/tuesday.org" "~/org/daily/wednesday.org" "~/org/daily/thursday.org" "~/org/daily/friday.org" "~/org/daily/saturday.org" "~/org/daily/sunday.org" "~/org/calendars/homework.org" "~/org/calendars/life.org" "~/org/calendars/asu.org" "~/org/calendars/work.org"))))

(custom-set-faces
 '(term-color-blue ((t (:background "cyan" :foreground "deep sky blue")))))

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

'((heading . never) (plain-list-item . never))

(setq org-agenda-files (list "~/org/daily/morning_checklist.org"
			     "~/org/daily/night_checklist.org"
			     "~/org/daily/monday.org"
			     "~/org/daily/tuesday.org"
			     "~/org/daily/wednesday.org"
			     "~/org/daily/thursday.org"
			     "~/org/daily/friday.org"
			     "~/org/daily/saturday.org"
			     "~/org/daily/sunday.org"
			     "~/org/calendars/homework.org"
			     "~/org/calendars/life.org"
			     "~/org/calendars/contacts.org"
			     "~/org/calendars/asu.org"
			     "~/org/calendars/work.org"))

(setq
   backup-by-copying t      ; don't clobber symlinks
   backup-directory-alist
    '(("." . "~/.saves"))    ; don't litter my fs tree
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

; set color for shell mode
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line


;(set-face-attribute 'term-color-blue nil :foreground "red")
;(set-face-attribute 'term-color-blue nil :foreground "#5555FF")
;(set-face-attribute 'term-color-green nil :foreground "#55FF55")
;(set-face-attribute 'term-color-red nil :foreground "#FF5555")
;(set-face-attribute 'term-color-magenta nil :foreground "#FF55FF")
;(set-face-attribute 'term-color-cyan nil :foreground "#FF55FF")
;(set-face-attribute 'term-color-yellow nil :foreground "#FFFF55")
 (setq inhibit-startup-screen t)
