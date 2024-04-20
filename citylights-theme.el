;; citylights-emacs-theme.el --- Citylights theme

;; TODO

;; - Fix Reduce the color set to the min
;; - Fix color in minibuffer, highlight in ivy is too much bright
;; - Add color for centaur-tab

;; DONE
;; Add basic theme for color set code for the citylights theme
;; Add support for org-mode
;; Add support for dashboard
;; Add support for ivy
;; Add support for minibuffer

; UPDATE

; VERSION
;; - 0.1


(deftheme citylights "City lights theme for emacs")

(let (
      (citylights-fg                "#b7c5d3")
      (citylights-d-fg              "#9AAEC1")
      (citylights-b-grey            "#52616f")
      (citylights-grey              "#41505e")
      (citylights-d-grey            "#2a343c")
      (citylights-dd-grey           "#192631")
      (citylights-d-black           "#000000")
      (citylights-bg                "#1D252C")
      (citylights-black             "#10151c")
      (citylights-red               "#d95468")
      (citylights-error             "#e27e8d")
      (citylights-magenta           "#b62d65")
      ;; (citylights-orange         "#d98e48")
      (citylights-orange            "#e3ac78")
      ;; (citylights-orange         "#e0a167")
      (citylights-yellow            "#ebbf83")
      (citylights-green             "#8bd49c")
      (citylights-b-green           "#98fb98")
      (citylights-teal              "#33ced8")
      (citylights-cyan              "#22c7d3")
      ;; (citylights-cyan           "#70e1e8")
      (citylights-water             "#5ec4ff")
      (citylights-blue              "#539afc")
      (citylights-violet            "#6a5acd")
      )

  (custom-theme-set-faces
    'citylights

    ; Default
    `(default ((t (:foreground ,citylights-d-fg :background ,citylights-bg))))
	; Evil cursor is being modified in init file
	`(cursor ((t (:background ,citylights-red :foreground ,citylights-black))))
	;; `(hl-line ((t (:background ,citylights-dd-grey  ))))

	;; `(scroll-bar ((t (:background ,citylights-black :foreground ,citylights-grey :width narrow))))
	`(separator-line ((t (:background ,citylights-blue))))
	`(lv-separator ((t (:background ,citylights-blue))))
	`(vertical-border ((t (:foreground ,citylights-blue))))

	`(custom-button ((t (:background ,citylights-black :foreground ,citylights-fg
									 :box (:line-width ( 1 . 1) :color ,citylights-blue)))))
	`(custom-button-mouse ((t (:background ,citylights-black :foreground ,citylights-fg
										   :box (:line-width ( 2 . 2) :color ,citylights-blue)))))
	`(custom-button-pressed ((t (:background ,citylights-black :foreground ,citylights-fg
										   :box (:line-width ( 2 . 2) :color ,citylights-blue)))))

    `(fringe ((t (:background ,citylights-bg)))) ; fringe is side spacing

    `(region ((t (:background ,citylights-d-grey))))
    `(highlight ((t (:background ,citylights-yellow :foreground ,citylights-black))))
    `(lazy-highlight ((t (:background ,citylights-yellow :foreground ,citylights-black))))
    `(line-number ((t (:foreground ,citylights-grey))))
    `(line-number-current-line((t (:foreground ,citylights-b-green))))

    `(success ((t (:background nil :foreground ,citylights-green :weight bold))))
    `(warning ((t (:foreground ,citylights-yellow :weight bold))))
    `(error ((t (:foreground ,citylights-error))))

    ; Font
    `(font-lock-comment-face ((t (:foreground ,citylights-b-grey :weight bold))))
    `(font-lock-comment-delimiter-face ((t (:foreground ,citylights-blue))))

    `(font-lock-keyword-face ((t (:foreground ,citylights-blue ))))
    `(font-lock-string-face ((t (:foreground ,citylights-blue))))
    `(font-lock-type-face ((t (:foreground ,citylights-b-green))))
    `(font-lock-variable-name-face((t (:foreground ,citylights-yellow))))
    `(font-lock-builtin-face((t (:foreground ,citylights-green))))
    `(font-lock-bracket-face ((t (:foreground ,citylights-yellow)))) ; Not working
    `(font-lock-constant-face ((t (:foreground ,citylights-water))))
    `(font-lock-delimiter-face ((t (:foreground ,citylights-b-grey))))

    ;; `(font-lock-doc-face ((t (:foreground ,citylights-grey))))
    ;;; Changes the default string face from green to grey, Why ???
    ;; `(font-lock-doc-markup-face((t (:foreground ,citylights-grey))))

    `(font-lock-function-call-face((t (:foreground ,citylights-water))))
    `(font-lock-function-name-face((t (:foreground ,citylights-cyan))))

    `(font-lock-misc-punctuation-face((t (:foreground ,citylights-red))))
    `(font-lock-negation-char-face((t (:foreground ,citylights-red))))

    `(font-lock-number-face((t (:foreground ,citylights-error))))
    `(font-lock-operator-face((t (:foreground ,citylights-error))))

    `(link ((t (:underline (:color ,citylights-blue :style line :position -5)))))
    `(link-visited ((t (:underline (:color ,citylights-violet :style line :position -5)))))
				 
    `(show-paren-match ((t (:background ,citylights-yellow :foreground ,citylights-black ))))
    `(show-paren-mismatch ((t (:background ,citylights-red :foreground ,citylights-black))))
    
    `(gnus-emphasis-underline ((t (:underline ( :color ,citylights-blue :style line :position -5)))))
    `(gnus-emphasis-underline-bold ((t (:underline ( :color ,citylights-blue :style line :position -5)))))

    ;; `(tab-bar ((t (:background ,citylights-black
    ;; 			       :foreground ,citylights-fg
    ;; 			       :box (:line-width (5 . 7) :color ,citylights-black :style flat)
    ;; 			       :color *
    ;; 			       :style flat))))
    ;; `(tab-bar-tab ((t (:background ,citylights-black :foreground ,citylights-blue :weight bold))))
    ;; `(tab-bar-tab-inactive ((t (:background ,citylights-black :foreground ,citylights-fg))))
    ;; `(tab-line ((t (:height 1 :width normal :foreground ,citylights-blue :overline ,citylights-blue :weight bold))))

    `(tool-bar ((t (:background ,citylights-black :foreground ,citylights-blue :weight bold))))
    `(tooltip ((t (:background ,citylights-black :foreground ,citylights-fg))))

    `(underline ((t (:underline (:color ,citylights-fg :style line :position -5)))))

	`(calendar-month-header ((t (:foreground ,citylights-blue ))))
	`(calendar-today ((t (:foreground ,citylights-error ))))
	`(calendar-weekday-header ((t (:foreground ,citylights-blue ))))

	`(ansi-color-white ((t (:foreground ,citylights-d-fg :background ,citylights-d-fg ))))
	`(ansi-color-red ((t (:foreground ,citylights-red :background ,citylights-red ))))
	`(ansi-color-magenta ((t (:foreground ,citylights-magenta :background ,citylights-magenta ))))
	`(ansi-color-green ((t (:foreground ,citylights-green :background ,citylights-green ))))
	`(ansi-color-blue ((t (:foreground ,citylights-blue :background ,citylights-blue ))))
	`(ansi-color-yellow ((t (:foreground ,citylights-yellow :background ,citylights-yellow ))))
	`(ansi-color-cyan ((t (:foreground ,citylights-cyan :background ,citylights-cyan ))))

	;; Dashboard
	`(dashboard-banner-logo-title ((t (:foreground ,citylights-error :weight bold ))))
	`(dashboard-items-face ((t (:foreground ,citylights-d-fg :box (:line-width (2 . 2) :color ,citylights-bg )))))
	`(dashboard-navigator ((t (:foreground ,citylights-error ))))
	`(dashboard-no-items-face ((t (:foreground ,citylights-d-grey ))))
	`(dashboard-text-banner ((t (:foreground ,citylights-grey ))))

	
	;; Evil
	`(evil-ex-substitute-replacement ((t (:foreground ,citylights-black :background ,citylights-blue ))))

    ; Ivy
    `(ivy-current-match ((t (:background ,citylights-blue :foreground ,citylights-black))))
    `(ivy-minibuffer-match-face-1 ((t (:background ,citylights-orange :foreground ,citylights-black))))
    `(ivy-modified-buffer ((t (:foreground ,citylights-yellow))))
    `(ivy-modified-outside-buffer ((t (:foreground ,citylights-error))))
    `(ivy-org ((t (:foreground ,citylights-fg :weight bold))))
    `(ivy-yanked-word ((t (:foreground ,citylights-cyan))))

    ; lv does not work
    ;; `(lv-separator ((t (:background ,citylights-violet))))
    `(menu ((t (:background ,citylights-bg :foreground ,citylights-blue))))

    ;; Mode line
    `(mode-line ((t (:background ,citylights-d-grey
		     :foreground ,citylights-blue
		     :height 1.0
		     :box (:line-width (5 . 8) :color ,citylights-d-grey :style flat)
		     :color *
		     :style flat))))

    `(mode-line-inactive ((t (:background ,citylights-d-grey
		     :foreground ,citylights-fg
		     :height 1.0
		     :box (:line-width (5 . 8) :color ,citylights-d-grey :style flat)
		     :color *
		     :style flat))))

    ;; `(mode-line-highlight ((t (:background ,citylights-black
		     ; :foreground ,citylights-fg
		     ; :height 1.0
		     ; :box (:line-width (1 . 2) :color ,citylights-water :style flat)
		     ; :color *
		     ; :style flat))))


	;; Swiper
    `(swiper-background-match-face-1 ((t (:foreground ,citylights-black :background ,citylights-yellow))))
    `(swiper-match-face-1 ((t (:foreground ,citylights-black :background ,citylights-yellow))))
    ; there is problem with swiper for in the minibuffer where color is not represented corrently
    ; foreground color is not taking effect

	;; Which-key
    `(which-key-command-description-face ((t (:foreground ,citylights-cyan :box (:line-width (1 . 1) :color ,citylights-bg :style flat)))))
    `(which-key-special-key-face ((t (:foreground ,citylights-cyan :weight bold))))
    `(which-key-key-face ((t (:foreground ,citylights-cyan :weight bold))))
    `(which-key-separator-face ((t (:foreground ,citylights-grey :weight bold :box (:line-width (2 . 6) :color ,citylights-bg)))))

    ; ORG
    `(org-level-1 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-2 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-3 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-4 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-5 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-6 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-7 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-8 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))

	;; Org-superstar
	`(org-superstar-item ((t (:foreground ,citylights-blue ))))
	`(org-superstar-header-bullet ((t (:foreground ,citylights-blue ))))

	`(org-default ((t (:foreground ,citylights-orange )))) ;; N ( No working )
	`(org-document-title ((t (:foreground ,citylights-b-green :weight bold :height 1.2 :widths extended ))))
	`(org-document-info ((t (:foreground ,citylights-blue))))
	`(org-document-info-keyword ((t (:foreground ,citylights-b-grey :height 1.0 ))))

	`(org-done ((t (:foreground ,citylights-green :weight bold ))))
	`(org-headline-done ((t (:foreground nil))))
	`(org-todo ((t (:foreground ,citylights-yellow :weight bold))))
	`(org-headline-todo ((t (:foreground nil))))
	`(org-warning ((t (:foreground ,citylights-red :weight bold))))

	`(org-verse ((t (:foreground ,citylights-d-grey))))
	`(org-verbatim ((t (:foreground ,citylights-teal))))

	`(org-upcoming-dealine ((t (:foreground ,citylights-yellow ))))
	`(org-upcoming-distant-dealine ((t (:foreground ,citylights-yellow ))))

	`(org-block-begin-line ((t (:foreground ,citylights-grey :height 0.9 :weight bold ))))
    `(org-block ((t (:background ,citylights-d-grey ))))
	`(org-quote ((t (:background ,citylights-d-grey ))))
	`(org-inline-src-block ((t (:background ,citylights-d-grey ))))

	`(org-meta-line ((t (:foreground ,citylights-b-grey ))))
	`(org-property-value ((t (:foreground ,citylights-d-fg ))))
	`(org-list-dt ((t (:foreground ,citylights-fg ))))
    `(org-checkbox ((t (:foreground ,citylights-green :background nil ))))
    `(org-checkbox-statistics-todo ((t (:foreground ,citylights-error :weight bold ))))
    `(org-cite-key ((t (:foreground ,citylights-green )))) ; N
	`(org-tag ((t (:foreground ,citylights-green )))) ; N
	`(org-table ((t (:foreground ,citylights-fg ))))
	`(org-table-header ((t (:foreground ,citylights-cyan :weight bold )))) ; N
	`(org-special-keyword ((t (:foreground ,citylights-b-grey ))))

	`(org-sexp-date ((t (:foreground ,citylights-black :background ,citylights-yellow )))) ; N
	`(org-date ((t (:background ,citylights-grey :foreground ,citylights-fg ))))

    )

  )
;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'citylights)
;; (provide 'citylights-emacs-theme)
