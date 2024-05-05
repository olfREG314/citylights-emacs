
;; citylights-theme.el --- Citylights theme for emacs
;; Modified :: 05 May 2024



;; NOTE

;; The theme is inspired by https://github.com/Yummygum/city-lights-ui-atom.
;; There is also citylights theme for emacs provided by doom-themes.
;; This theme was create because I had some personal preference especially in org mode
;; which I wanted to address. So I decided to write the theme with little tweaks.
;; The colors are almost same from the orginal author but needs improvement in major way.
;; Currently spending some time to read through implementaion by original author and experimenting
;; different colors to better suit this theme.



;; TODO

;; Fix reduce the color set to the minimum
;; Fix hightlight color for ivy minibuffer
;; Add support for centaur-tab



;; BACKLOG

;; Add color support for running emacs through terminal



;; DONE

;; v0.1

;; Add basic theme for color set code for the citylights theme
;; Add support for org-mode
;; Add support for dashboard
;; Add support for ivy
;; Add support for minibuffer


;; ---contents  C O N T E N T S

;; --- Ansi Color                               :ansicolor
;; --- Default                                  :default
;; --- --- Line Number                          :linenumber
;; --- --- Button                               :button
;; --- --- Status                               :status
;; --- Font                                     :font
;; --- --- Comment                              :comment
;; --- --- Function                             :function
;; --- --- Number                               :number
;; --- --- Link                                 :link
;; --- --- Parenthesis                          :parenthesis
;; --- Gnu                                      :gnu
;; --- Tab Bar                                  :tabbar
;; --- Tool Bar                                 :toolbar
;; --- Calendar                                 :calendar
;; --- Org                                      :org
;; --- --- Org Document Property                :orgdocumentproperty
;; --- --- Org Heading Property                 :orgheadingproperty
;; --- --- Org List                             :orglist
;; --- --- Org Code                             :orgcode
;; --- --- Org Table                            :orgtable
;; --- --- Org Date                             :orgdate
;; --- --- Org Headings                         :orgheading
;; --- --- Org Status                           :orgstatus
;; --- --- Org Agenda                           :orgagenda
;; --- --- Org Super Star                       :orgsuperstar
;; --- Dashboard                                :orgdashboard
;; --- Evil                                     :evil
;; --- Ivy                                      :ivy
;; --- Mode Line                                :modeline
;; --- Swiper                                   :swiper
;; --- Whichkey                                 :whichkey





(deftheme citylights "Citylights theme for emacs")

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






   ;; ---ansicolor  A N S I  C O L O R



   `(ansi-color-white ((t (:foreground ,citylights-d-fg :background ,citylights-d-fg ))))
   `(ansi-color-red ((t (:foreground ,citylights-red :background ,citylights-red ))))
   `(ansi-color-magenta ((t (:foreground ,citylights-magenta :background ,citylights-magenta ))))
   `(ansi-color-green ((t (:foreground ,citylights-green :background ,citylights-green ))))
   `(ansi-color-blue ((t (:foreground ,citylights-blue :background ,citylights-blue ))))
   `(ansi-color-yellow ((t (:foreground ,citylights-yellow :background ,citylights-yellow ))))
   `(ansi-color-cyan ((t (:foreground ,citylights-cyan :background ,citylights-cyan ))))






    ;; ---default  D E F A U L T



    `(default ((t (:foreground ,citylights-d-fg :background ,citylights-bg))))
    `(fringe ((t (:background ,citylights-bg)))) ; fringe is side spacing
    `(cursor ((t (:background ,citylights-red :foreground ,citylights-black))))
    ;; `(hl-line ((t (:background ,citylights-dd-grey  ))))
    ;; `(scroll-bar ((t (:background ,citylights-black :foreground ,citylights-grey :width narrow))))
    ;; `(separator-line ((t (:background ,citylights-blue))))
    ;; `(lv-separator ((t (:background ,citylights-blue))))
    `(vertical-border ((t (:foreground ,citylights-blue))))
    `(region ((t (:background ,citylights-d-grey))))
    `(highlight ((t (:background ,citylights-yellow :foreground ,citylights-black))))
    `(lazy-highlight ((t (:background ,citylights-yellow :foreground ,citylights-black))))
    `(menu ((t (:background ,citylights-bg :foreground ,citylights-blue))))


    ;; --- ---linenumber  L I N E  N U M B E R

    `(line-number ((t (:foreground ,citylights-grey))))
    `(line-number-current-line((t (:foreground ,citylights-b-green))))


    ;; --- ---button  B U T T O N

    `(custom-button ((t (:background ,citylights-black :foreground ,citylights-fg :box (:line-width ( 1 . 1) :color ,citylights-blue)))))
    `(custom-button-mouse ((t (:background ,citylights-black :foreground ,citylights-fg :box (:line-width ( 2 . 2) :color ,citylights-blue)))))
    `(custom-button-pressed ((t (:background ,citylights-black :foreground ,citylights-fg :box (:line-width ( 2 . 2) :color ,citylights-blue)))))


    ;; --- ---status  S T A T U S

    `(success ((t (:background nil :foreground ,citylights-green :weight bold))))
    `(warning ((t (:foreground ,citylights-yellow :weight bold))))
    `(error ((t (:foreground ,citylights-error))))






    ;; ---font  F O N T

    `(font-lock-keyword-face ((t (:foreground ,citylights-blue ))))
    `(font-lock-string-face ((t (:foreground ,citylights-blue))))
    `(font-lock-type-face ((t (:foreground ,citylights-b-green))))
    `(font-lock-variable-name-face((t (:foreground ,citylights-yellow))))
    `(font-lock-builtin-face((t (:foreground ,citylights-green)))) ;; Not working
    `(font-lock-constant-face ((t (:foreground ,citylights-water))))
    `(font-lock-delimiter-face ((t (:foreground ,citylights-b-grey))))
    `(underline ((t (:underline (:color ,citylights-fg :style line :position -5)))))


    ;; --- ---comment  C O M M E N T

    `(font-lock-comment-face ((t (:foreground ,citylights-b-grey :weight bold))))
    `(font-lock-comment-delimiter-face ((t (:foreground ,citylights-blue))))
    ;; `(font-lock-bracket-face ((t (:foreground ,citylights-yellow)))) ; Not working
    ;; `(font-lock-doc-face ((t (:foreground ,citylights-grey))))
    ;; Changes the default string face from green to grey, Why ???
    ;; `(font-lock-doc-markup-face((t (:foreground ,citylights-grey))))


    ;; --- ---function  F U N C T I O N

    `(font-lock-function-call-face((t (:foreground ,citylights-water))))
    `(font-lock-function-name-face((t (:foreground ,citylights-cyan))))

    `(font-lock-misc-punctuation-face((t (:foreground ,citylights-red))))
    `(font-lock-negation-char-face((t (:foreground ,citylights-red))))


    ;; --- ---number  N U M B E R

    `(font-lock-number-face((t (:foreground ,citylights-error)))) ;; Not working
    `(font-lock-operator-face((t (:foreground ,citylights-error)))) ;; Not working


    ;; --- ---link  L I N K

    `(link ((t (:underline (:color ,citylights-blue :style line :position -5)))))
    `(link-visited ((t (:underline (:color ,citylights-violet :style line :position -5)))))
				 

    ;; --- ---parenthesis  P A R E N T H E S I S

    `(show-paren-match ((t (:foreground ,citylights-black :background ,citylights-yellow))))
    `(show-paren-mismatch ((t (:foreground ,citylights-black :background ,citylights-red))))

    




    ;; ---gnu  G N U






    ;; `(gnus-emphasis-underline ((t (:underline ( :color ,citylights-blue :style line :position -5)))))
    ;; `(gnus-emphasis-underline-bold ((t (:underline ( :color ,citylights-blue :style line :position -5)))))






    ;; ---tabbar  T A B  B A R




    ;; `(tab-bar ((t (:background ,citylights-black
    ;; 			       :foreground ,citylights-fg
    ;; 			       :box (:line-width (5 . 7) :color ,citylights-black :style flat)
    ;; 			       :color *
    ;; 			       :style flat))))
    ;; `(tab-bar-tab ((t (:background ,citylights-black :foreground ,citylights-blue :weight bold))))
    ;; `(tab-bar-tab-inactive ((t (:background ,citylights-black :foreground ,citylights-fg))))
    ;; `(tab-line ((t (:height 1 :width normal :foreground ,citylights-blue :overline ,citylights-blue :weight bold))))






    ;; ---toolbar  T O O L  B A R



    `(tooltip ((t (:foreground ,citylights-fg :background ,citylights-black))))
    `(tool-bar ((t (:foreground ,citylights-blue :background ,citylights-black :weight bold))))






    ;; ---calendar  C A L E N D A R



    `(calendar-month-header ((t (:foreground ,citylights-blue ))))
    `(calendar-today ((t (:foreground ,citylights-error ))))
    `(calendar-weekday-header ((t (:foreground ,citylights-blue ))))






    ;; ---org  O R G



    ;; TODO Weight and height is used according to Iosevka font here but I recommend to set it up in init file and comment these it out.


    ;; `(org-cite-key ((t (:foreground ,citylights-green )))) ; Not working
    ;; `(org-tag ((t (:foreground ,citylights-green )))) ; Not working
    `(org-special-keyword ((t (:foreground ,citylights-b-grey ))))


    ;; --- ---orgdocumentproperty  O R G  D O C U M E N T  P R O P E R T Y

    `(org-document-title ((t (:foreground ,citylights-b-green :weight bold :height 1.2 :widths extended))))
    `(org-document-info ((t (:foreground ,citylights-blue))))
    `(org-document-info-keyword ((t (:foreground ,citylights-b-grey :height 1.0))))


    ;; --- ---orgheadingproperty  O R G  H E A D I N G  P R O P E R T Y

    `(org-meta-line ((t (:foreground ,citylights-b-grey ))))
    `(org-property-value ((t (:foreground ,citylights-d-fg ))))


    ;; --- ---orglist  O R G  L I S T

    `(org-list-dt ((t (:foreground ,citylights-fg ))))
    `(org-checkbox ((t (:foreground ,citylights-green :background nil ))))
    `(org-checkbox-statistics-todo ((t (:foreground ,citylights-error :weight bold ))))


    ;; --- ---orgcode  O R G  C O D E

    `(org-verse ((t (:foreground ,citylights-d-grey))))
    `(org-verbatim ((t (:foreground ,citylights-teal))))
    `(org-quote ((t (:background ,citylights-d-grey ))))
    `(org-block-begin-line ((t (:foreground ,citylights-grey :height 0.9 :weight bold ))))
    `(org-block ((t (:background ,citylights-d-grey ))))
    `(org-inline-src-block ((t (:background ,citylights-d-grey ))))


    ;; --- ---orgtable  O R G  T A B L E

    `(org-table ((t (:foreground ,citylights-fg ))))
    `(org-table-header ((t (:foreground ,citylights-cyan :weight bold )))) ; N


    ;; --- ---orgdate  O R G  D A T E

    `(org-sexp-date ((t (:foreground ,citylights-black :background ,citylights-yellow )))) ; N
    `(org-date ((t (:background ,citylights-d-grey :foreground ,citylights-d-fg ))))
    `(org-ellipsis ((t (:foreground ,citylights-b-grey ))))


    ;; --- ---orgheading  O R G  H E A D I N G S

    `(org-level-1 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-2 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-3 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-4 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-5 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-6 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-7 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    `(org-level-8 ((t (:foreground ,citylights-d-fg :weight heavy :widths extended ))))
    ;; `(org-default ((t (:foreground ,citylights-orange)))) ;; Not working 


    ;; --- ---orgstatus  O R G  S T A T U S

    `(org-done ((t (:foreground ,citylights-green :weight bold ))))
    `(org-headline-done ((t (:foreground nil))))
    `(org-todo ((t (:foreground ,citylights-yellow :weight bold))))
    `(org-headline-todo ((t (:foreground nil))))
    `(org-warning ((t (:foreground ,citylights-red :weight bold))))


    ;; --- ---orgagenda  O R G  A G E N D A

    `(org-upcoming-dealine ((t (:foreground ,citylights-yellow ))))
    `(org-upcoming-distant-dealine ((t (:foreground ,citylights-yellow ))))


    ;; --- ---orgsuperstar  O R G  S U P E R  S T A R

    `(org-superstar-item ((t (:foreground ,citylights-blue ))))
    `(org-superstar-header-bullet ((t (:foreground ,citylights-blue ))))






    ;; ---dashboard  D A S H B O A R D



    `(dashboard-banner-logo-title ((t (:foreground ,citylights-error :weight bold))))
    `(dashboard-items-face ((t (:foreground ,citylights-d-fg :box (:line-width (2 . 2) :color ,citylights-bg)))))
    `(dashboard-navigator ((t (:foreground ,citylights-error))))
    `(dashboard-no-items-face ((t (:foreground ,citylights-d-grey))))
    `(dashboard-text-banner ((t (:foreground ,citylights-grey))))






    ;; ---evil  E V I L



    `(evil-ex-substitute-replacement ((t (:foreground ,citylights-black :background ,citylights-blue ))))






    ;; ---ivy  I V Y



    `(ivy-current-match ((t (:background ,citylights-blue :foreground ,citylights-black))))
    `(ivy-minibuffer-match-face-1 ((t (:background ,citylights-orange :foreground ,citylights-black))))
    `(ivy-modified-buffer ((t (:foreground ,citylights-yellow))))
    `(ivy-modified-outside-buffer ((t (:foreground ,citylights-error))))
    `(ivy-org ((t (:foreground ,citylights-fg :weight bold))))
    `(ivy-yanked-word ((t (:foreground ,citylights-cyan))))






    ;; ---modeline  M O D E  L I N E



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
		     ;; :foreground ,citylights-fg
		     ;; :height 1.0
		     ;; :box (:line-width (1 . 2) :color ,citylights-water :style flat)
		     ;; :color *
		     ;; :style flat))))






    ;; ---swiper  S W I P E R



    `(swiper-background-match-face-1 ((t (:foreground ,citylights-black :background ,citylights-yellow))))
    `(swiper-match-face-1 ((t (:foreground ,citylights-black :background ,citylights-yellow))))
    ; there is problem with swiper for in the minibuffer where color is not represented corrently
    ; foreground color is not taking effect






    ;; ---whichkey  W H I C H  K E Y



    `(which-key-command-description-face ((t (:foreground ,citylights-cyan :box (:line-width (1 . 1) :color ,citylights-bg :style flat)))))
    `(which-key-special-key-face ((t (:foreground ,citylights-cyan :weight bold))))
    `(which-key-key-face ((t (:foreground ,citylights-cyan :weight bold))))
    `(which-key-separator-face ((t (:foreground ,citylights-grey :weight bold :box (:line-width (2 . 6) :color ,citylights-bg)))))






    ) ;; End of custom-theme-set-face
  ) ;; End of let






;; ###autoload

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'citylights)
