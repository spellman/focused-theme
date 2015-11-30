;;; focused-theme.el --- Emacs 24 dark theme with pretty-minimal color.

;; Author: Cort Spellman <spellman.cort@gmail.com>
;; URL: https://github.com/spellman/focused-theme
;; Version: 0.0.1
;; Package-Requires: ((emacs "24"))
;; Keywords: color, theme
;; Originally created with emacs-theme-generator, https://github.com/mswift42/theme-creator.


;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;; This file is not part of Emacs.

;;; Commentary:

;;; Code:

(deftheme focused)
(let ((class '((class color) (min-colors 89)))
        (fg                "#DADADA")
        (cursor-bg         "#FFFFFF")
        (bg1               "#303030")
        (bg2               "#efeae9")
        (bg3               "#e3dedd")
        (bg4               "#d2ceda")
        (light-bg          "#494949")
        (dark-bg           "#262626")
        (key1              "#DADADA")
        (key2              "#DADADA")
        (builtin           "#DADADA")
        (keyword           "#DADADA")
        (const             "#DADADA")
        (comment           "#8A8A8A")
        (comment-bg        "#303030")
        (doc               "#9FC59F")
        (func              "#DADADA")
        (str               "#DADADA")
        (type              "#DADADA")
        (comp              "#DADADA")
        (var               "#DADADA")
        (err               "#e0211d")
        (war               "#dc752f")
        (inf               "#2f96dc")
        (suc               "#86dc2f")
        (green             "#67b11d")
        (light-green       "#BFEBBF")
        (light-green1      "#CCFFCC")
        (dark-green        "#5F7F5F")
        (dark-green1       "#8FB28F")
        (yellow            "#b1951d")
        (pale-orange       "#F0DFAF")
        (dark-orange       "#DFAF8F")
        (bright-yellow     "#FFFF00")
        (cyan              "#21b8c7")
        (pale-cyan         "#93E0E3")
        (blue              "#2244CC")
        (violet            "#a31db1")
        (red               "#f2241f")
        (white             "#FFFFFF")
        (black             "#000000")
        (dark-red          "#9C6363")
        (dark-red2         "#8C5353")
        (active1           "#e7e5eb")
        (active2           "#d3d3e7")
        (ttip              "#8c799f")
        (ttip-sl           "#c8c6dd")
        (ttip-bg           "#e2e0ea")
        (inactive          "#9f8fbd")
        (m-line-brdr       "#b3b9be")
        (org-cb            "#655370")
        (org-cb-bg         "#e8e3f0")
        (org-cb-ln         "#9380b2")
        (org-cb-ln-bg      "#ddd8eb")
        (org-h1-bg         "#edf1ed")
        (org-h2-bg         "#edf2e9")
        (org-h3-bg         "#f1f3e1")
        (org-h4-bg         "#f6f1e1")
        (org-ml            "#da8b55")
        (highlight         "#d3d3e7")
        (lnum              "#767676")
        (green-bg          "#dae6d0")
        (red-bg            "#eed9d2"))

    (custom-theme-set-faces
      'focused

;;;;; basics
     `(cursor ((,class (:background ,cursor-bg :foreground ,fg))))
     ;; `(custom-button ((,class :background ,bg2 :foreground ,fg ,:box (:line-width 2 :style released-button))))
     `(custom-button ((,class (:underline t))))
     `(default ((,class (:background ,bg1 :foreground ,fg))))
     `(default-italic ((,class (:italic t))))
     `(error ((,class (:foreground ,err))))
     `(eval-sexp-fu-flash ((,class (:background ,suc :foreground ,bg1))))
     `(eval-sexp-fu-flash-error ((,class (:background ,err :foreground ,bg1))))
     `(font-lock-builtin-face ((,class (:foreground ,builtin))))
     `(font-lock-comment-face ((,class (:foreground ,comment :background ,comment-bg))))
     `(font-lock-constant-face ((,class (:foreground ,const))))
     `(font-lock-doc-face ((,class (:foreground ,doc))))
     `(font-lock-function-name-face ((,class (:foreground ,func))))
     `(font-lock-keyword-face ((,class (:foreground ,keyword))))
     `(font-lock-negation-char-face ((,class (:foreground ,const))))
     `(font-lock-preprocessor-face ((,class (:foreground ,func))))
     `(font-lock-reference-face ((,class (:foreground ,const))))
     `(font-lock-string-face ((,class (:foreground ,str))))
     `(font-lock-type-face ((,class (:foreground ,type :bold t))))
     `(font-lock-variable-name-face ((,class (:foreground ,var))))
     `(font-lock-warning-face ((,class (:foreground ,war :background ,bg1))))
     `(fringe ((,class (:background ,bg1 :foreground ,fg))))
     `(highlight ((,class (:background ,light-bg))))
     `(hl-line ((,class (:background ,light-bg))))
     `(isearch ((,class (:foreground ,bg1 :background ,fg))))
     `(isearch-fail ((,class (:foreground ,err :background ,bg1))))
     `(lazy-highlight ((,class (:foreground ,bright-yellow :background ,dark-bg))))
     `(link ((,class (:foreground ,comment :underline t))))
     `(link-visited ((,class (:foreground ,comp :underline t))))
     `(match ((,class (:background ,bg1 :foreground ,dark-green1 :weight bold))))
     `(minibuffer-prompt ((,class (:foreground ,fg))))
     `(page-break-lines ((,class (:foreground ,active2))))
     `(popup-tip-face ((,class (:background ,ttip-sl :foreground ,fg :bold nil :italic nil :underline nil))))
     `(region ((,class (:background ,fg :foreground ,bg1))))
     `(secondary-selection ((,class (:background ,bg3))))
     `(show-paren-match-face ((,class (:background ,suc))))
     `(success ((,class (:foreground ,suc))))
     `(tooltip ((,class (:background ,ttip-sl :foreground ,fg :bold nil :italic nil :underline nil))))
     `(vertical-border ((,class (:foreground ,bg4))))
     `(warning ((,class (:foreground ,war ))))

;;;;; anzu-mode
     `(anzu-mode-line ((,class (:foreground ,cyan :weight bold))))

;;;;; company
     `(company-echo-common ((,class (:background ,fg :foreground ,bg1))))
     `(company-preview ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-preview-common ((,class (:background ,ttip-bg :foreground ,fg))))
     `(company-preview-search ((,class (:inherit match))))
     `(company-scrollbar-bg ((,class (:background ,bg2))))
     `(company-scrollbar-fg ((,class (:background ,active2))))
     `(company-template-field ((,class (:inherit region))))
     `(company-tooltip ((,class (:background ,ttip-bg :foreground ,ttip))))
     `(company-tooltip-annotation ((,class (:background ,ttip-bg :foreground ,inf))))
     `(company-tooltip-common ((,class (:background ,ttip-bg :foreground ,fg))))
     `(company-tooltip-common-selection ((,class (:foreground ,fg))))
     `(company-tooltip-mouse ((,class (:inherit highlight))))
     `(company-tooltip-search ((,class (:inherit match))))
     `(company-tooltip-selection ((,class (:background ,ttip-sl :foreground ,fg))))

;;;;; diff
     `(diff-added             ((,class :background nil :foreground ,dark-green)))
     `(diff-changed           ((,class :background nil :foreground ,pale-orange)))
     `(diff-header            ((,class :background ,fg :foreground ,bg1)))
     `(diff-indicator-added   ((,class :background nil :foreground ,dark-green)))
     `(diff-indicator-changed ((,class :background nil :foreground ,pale-orange)))
     `(diff-indicator-removed ((,class :background nil :foreground ,dark-red)))
     `(diff-refine-added      ((,class :background nil :foreground ,dark-green :weight bold)))
     `(diff-refine-changed    ((,class :background nil :foreground ,pale-orange :weight bold)))
     `(diff-refine-removed    ((,class :background nil :foreground ,dark-red :weight bold)))
     `(diff-removed           ((,class :background nil :foreground ,dark-red)))

;;;;; diff-hl
     `(diff-hl-change ((,class :background ,dark-bg :foreground ,pale-orange)))
     `(diff-hl-delete ((,class :background ,dark-bg :foreground ,dark-red)))
     `(diff-hl-insert ((,class :background ,dark-bg :foreground ,dark-green)))

;;;;; dired
     `(dired-directory ((,class (:foreground ,key1 :background ,bg1 :weight bold))))
     `(dired-flagged ((,class (:foreground ,red))))
     `(dired-header ((,class (:foreground ,comp :weight bold))))
     `(dired-ignored ((,class (:inherit shadow))))
     `(dired-mark ((,class (:foreground ,comp :weight bold))))
     `(dired-marked ((,class (:foreground ,violet :weight bold))))
     `(dired-perm-write ((,class (:foreground ,fg :underline t))))
     `(dired-symlink ((,class (:foreground ,cyan :background ,bg1 :weight bold))))
     `(dired-warning ((,class (:foreground ,war))))

;;;;; ediff
     `(ediff-current-diff-A ((,class(:background ,org-h1-bg :foreground ,inf))))
     `(ediff-current-diff-Ancestor ((,class(:background ,org-h2-bg :foreground ,str))))
     `(ediff-current-diff-B ((,class(:background ,org-h4-bg :foreground ,yellow))))
     `(ediff-current-diff-C ((,class(:background ,org-h3-bg :foreground ,green))))
     `(ediff-even-diff-A ((,class(:background ,bg3))))
     `(ediff-even-diff-Ancestor ((,class(:background ,bg3))))
     `(ediff-even-diff-B ((,class(:background ,bg3))))
     `(ediff-even-diff-C ((,class(:background ,bg3))))
     `(ediff-fine-diff-A ((,class(:background nil :bold t :underline t))))
     `(ediff-fine-diff-Ancestor ((,class(:background nil :bold t :underline t))))
     `(ediff-fine-diff-B ((,class(:background nil :bold t :underline t))))
     `(ediff-fine-diff-C ((,class(:background nil :bold t :underline t))))
     `(ediff-odd-diff-A ((,class(:background ,bg4))))
     `(ediff-odd-diff-Ancestor ((,class(:background ,bg4))))
     `(ediff-odd-diff-B ((,class(:background ,bg4))))
     `(ediff-odd-diff-C ((,class(:background ,bg4))))

;;;;; ein
     `(ein:cell-input-area((,class (:background ,bg2))))
     `(ein:cell-input-prompt ((,class (:foreground ,suc))))
     `(ein:cell-output-prompt ((,class (:foreground ,err))))
     `(ein:notification-tab-normal ((,class (:foreground ,builtin))))
     `(ein:notification-tab-selected ((,class (:foreground ,suc :bold t))))

;;;;; eldoc
     `(eldoc-highlight-function-argument ((,class (:foreground ,suc :bold t))))

;;;;; enh-ruby
     `(enh-ruby-string-delimiter-face ((,class (:foreground ,str))))
     `(enh-ruby-op-face ((,class (:background ,bg1 :foreground ,fg))))

;;;;; erc
     `(erc-input-face ((,class (:foreground ,func))))
     `(erc-my-nick-face ((,class (:foreground ,key1))))
     `(erc-nick-default-face ((,class (:foreground ,inf))))
     `(erc-nick-prefix-face ((,class (:foreground ,yellow))))
     `(erc-notice-face ((,class (:foreground ,str))))
     `(erc-prompt-face ((,class (:foreground ,suc :bold t))))
     `(erc-timestamp-face ((,class (:foreground ,builtin))))

;;;;; eshell
     `(eshell-ls-archive ((,class (:foreground ,red :weight bold))))
     `(eshell-ls-backup ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-clutter ((,class (:inherit font-lock-comment-face))))
     `(eshell-ls-directory ((,class (:foreground ,inf :weight bold))))
     `(eshell-ls-executable ((,class (:foreground ,suc :weight bold))))
     `(eshell-ls-missing ((,class (:inherit font-lock-warning-face))))
     `(eshell-ls-product ((,class (:inherit font-lock-doc-face))))
     `(eshell-ls-special ((,class (:foreground ,yellow :weight bold))))
     `(eshell-ls-symlink ((,class (:foreground ,cyan :weight bold))))
     `(eshell-ls-unreadable ((,class (:foreground ,fg))))
     `(eshell-prompt ((,class (:foreground ,keyword :weight bold))))

;;;;; flycheck
     `(flycheck-error
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,err)))
        (,class (:foreground ,fg :background ,err :weight bold :underline t))))
     `(flycheck-error-list-checker-name ((,class (:foreground ,keyword))))
     `(flycheck-fringe-error ((,class (:foreground ,err :weight bold))))
     `(flycheck-fringe-info ((,class (:foreground ,inf :weight bold))))
     `(flycheck-fringe-warning ((,class (:foreground ,war :weight bold))))
     `(flycheck-info
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,inf)))
        (,class (:foreground ,fg :background ,inf :weight bold :underline t))))
     `(flycheck-warning
       ((,(append '((supports :underline (:style line))) class)
         (:underline (:style line :color ,war)))
        (,class (:foreground ,fg :background ,war :weight bold :underline t))))

;;;;; git-gutter-fr
     `(git-gutter-fr:added ((,class (:foreground ,dark-green :weight bold))))
     `(git-gutter-fr:deleted ((,class (:foreground ,dark-red :weight bold))))
     `(git-gutter-fr:modified ((,class (:foreground ,pale-orange :weight bold))))

;;;;; git-timemachine
     `(git-timemachine-minibuffer-detail-face ((,class (:foreground ,inf :bold t :background ,org-h1-bg))))

;;;;; gnus
     `(gnus-emphasis-highlight-words ((,class (:background ,err :foreground nil))))
     `(gnus-header-content ((,class (:foreground ,keyword))))
     `(gnus-header-from ((,class (:foreground ,var))))
     `(gnus-header-name ((,class (:foreground ,comp))))
     `(gnus-header-subject ((,class (:foreground ,func :bold t))))
     `(gnus-summary-cancelled ((,class (:background ,err :foreground ,bg1))))

;;;;; guide-key
     `(guide-key/highlight-command-face ((,class (:foreground ,fg))))
     `(guide-key/key-face ((,class (:foreground ,key1))))
     `(guide-key/prefix-command-face ((,class (:foreground ,key2 :weight bold))))

;;;;; helm
     `(helm-bookmark-directory ((,class (:inherit helm-ff-directory))))
     `(helm-bookmark-file ((,class (:foreground ,fg))))
     `(helm-bookmark-gnus ((,class (:foreground ,comp))))
     `(helm-bookmark-info ((,class (:foreground ,comp))))
     `(helm-bookmark-man ((,class (:foreground ,comp))))
     `(helm-bookmark-w3m ((,class (:foreground ,comp))))
     `(helm-buffer-directory ((,class (:foreground ,fg :background ,bg1))))
     `(helm-buffer-file ((,class (:foreground ,fg :background ,bg1))))
     `(helm-buffer-not-saved ((,class (:foreground ,comp :background ,bg1))))
     `(helm-buffer-process ((,class (:foreground ,builtin :background ,bg1))))
     `(helm-buffer-saved-out ((,class (:foreground ,fg :background ,bg1))))
     `(helm-buffer-size ((,class (:foreground ,fg :background ,bg1))))
     `(helm-candidate-number ((,class (:background ,bg1 :foreground ,fg))))
     `(helm-ff-directory ((,class (:foreground ,key1 :background ,bg1 :weight bold))))
     `(helm-ff-dotted-directory ((,class (:foreground ,key1 :background ,bg1 :weight bold))))
     `(helm-ff-executable ((,class (:foreground ,suc :background ,bg1 :weight normal))))
     `(helm-ff-file ((,class (:foreground ,fg :background ,bg1 :weight normal))))
     `(helm-ff-invalid-symlink ((,class (:foreground ,red :background ,bg1 :weight bold))))
     `(helm-ff-prefix ((,class (:foreground ,fg :background ,bg1 :weight normal))))
     `(helm-ff-symlink ((,class (:foreground ,cyan :background ,bg1 :weight bold))))
     `(helm-grep-cmd-line ((,class (:foreground ,fg :background ,bg1))))
     `(helm-grep-file ((,class (:foreground ,fg :background ,bg1))))
     `(helm-grep-finish ((,class (:foreground ,fg :background ,bg1))))
     `(helm-grep-lineno ((,class (:foreground ,fg :background ,bg1))))
     `(helm-grep-match ((,class (:foreground nil :background nil :inherit helm-match))))
     `(helm-header ((,class (:foreground ,dark-green1
                             :background ,bg1
                             :underline nil
                             :box nil))))
     `(helm-header-line-left-margin ((,class (:foreground ,fg :background ,bg1))))
     `(helm-match ((,class (:inherit match))))
     `(helm-match-item ((,class (:inherit match))))
     `(helm-moccur-buffer ((,class (:foreground ,func :background ,bg1))))
     `(helm-selection ((,class (:background ,light-bg :underline nil))))
     `(helm-selection-line ((,class (:background ,light-bg))))
     `(helm-separator ((,class (:foreground ,dark-orange :background ,bg1))))
     `(helm-source-header ((,class (:background ,bg1
                                    :foreground ,dark-orange
                                    :weight bold
                                    :underline nil
                                    :box (:line-width -1 :style released-button)))))
     `(helm-time-zone-current ((,class (:foreground ,dark-green :background ,bg1))))
     `(helm-time-zone-home ((,class (:foreground ,dark-red :background ,bg1))))
     `(helm-visible-mark ((,class (:foreground ,dark-green1 :background ,bg1))))

;;;;; helm-swoop
     `(helm-swoop-target-line-block-face ((,class (:foreground ,fg :background ,bg1))))
     `(helm-swoop-target-line-face ((,class (:foreground ,fg :background ,bg1))))
     `(helm-swoop-target-word-face ((,class (:foreground ,bg1 :background ,suc))))

;;;;; highlight-indentation
     `(highlight-indentation-face ((,class (:background ,comment-bg))))

;;;;; ido
     `(ido-first-match ((,class (:foreground ,comp :bold t))))
     `(ido-only-match ((,class (:foreground ,suc :bold t))))
     `(ido-subdir ((,class (:foreground ,key1))))
     `(ido-vertical-match-face ((,class (:foreground ,comp :underline nil))))

;;;;; info
     `(info-header-xref ((,class (:foreground ,func :underline t))))
     `(info-menu ((,class (:foreground ,suc))))
     `(info-node ((,class (:foreground ,func :bold t))))
     `(info-quoted-name ((,class (:foreground ,builtin))))
     `(info-reference-item ((,class (:background nil :underline t :bold t))))
     `(info-string ((,class (:foreground ,str))))
     `(info-title-1 ((,class (:height 1.4 :bold t))))
     `(info-title-2 ((,class (:height 1.3 :bold t))))
     `(info-title-3 ((,class (:height 1.3))))
     `(info-title-4 ((,class (:height 1.2))))

;;;;; linum-mode
     `(linum ((,class (:foreground ,lnum :background ,dark-bg))))

;;;;; linum-relative
     `(linum-relative-current-face ((,class (:foreground ,comp))))

;;;;; magit
     `(magit-blame-culprit ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-header  ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-blame-sha1    ((,class :background ,org-h4-bg :foreground ,func)))
     `(magit-blame-subject ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-time    ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-blame-name    ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-heading ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-blame-hash    ((,class :background ,org-h4-bg :foreground ,func)))
     `(magit-blame-summary ((,class :background ,org-h4-bg :foreground ,yellow)))
     `(magit-blame-date    ((,class :background ,org-h4-bg :foreground ,green)))
     `(magit-branch ((,class (:weight bold))))
     `(magit-branch-current ((,class (:background ,bg1 :foreground ,dark-orange :weight bold :box t))))
     `(magit-branch-local ((,class (:background ,bg1 :foreground ,dark-orange :weight bold))))
     `(magit-branch-remote ((,class (:background ,bg1 :foreground ,dark-orange :weight bold))))
     `(magit-diff-added ((,class (:foreground ,dark-green1))))
     `(magit-diff-added-highlight ((,class (:foreground ,dark-green1))))
     `(magit-diff-context-highlight ((,class (:background ,bg1 :foreground ,fg))))
     `(magit-diff-file-header ((,class (:background nil :foreground ,str))))
     `(magit-diff-hunk-header ((,class (:background nil :foreground ,builtin))))
     `(magit-diff-removed ((t (:foreground ,dark-red))))
     `(magit-diff-removed-highlight ((t (:foreground ,dark-red))))
     `(magit-hash ((,class (:foreground ,comment))))
     `(magit-hunk-heading           ((,class (:background ,light-bg))))
     `(magit-hunk-heading-highlight ((,class (:background ,light-bg))))
     `(magit-item-highlight ((,class :background ,light-bg)))
     `(magit-log-author ((,class (:foreground ,pale-orange))))
     `(magit-log-head-label-head ((,class (:background ,yellow :foreground ,bg1 :bold t))))
     `(magit-log-head-label-local ((,class (:background ,inf :foreground ,bg1 :bold t))))
     `(magit-log-head-label-remote ((,class (:background ,suc :foreground ,bg1 :bold t))))
     `(magit-log-head-label-tags ((,class (:background ,violet :foreground ,bg1 :bold t))))
     `(magit-log-head-label-wip ((,class (:background ,cyan :foreground ,bg1 :bold t))))
     `(magit-log-sha1 ((,class (:foreground ,comment))))
     `(magit-process-ng ((,class (:foreground ,war :weight bold))))
     `(magit-process-ok ((,class (:foreground ,dark-green :weight bold))))
     `(magit-section-heading        ((,class (:foreground ,keyword :weight bold))))
     `(magit-section-highlight      ((,class (:background ,light-bg))))
     `(magit-section-title ((,class (:foreground ,pale-orange :weight bold))))

;;;;; mode-line
     `(mode-line           ((,class (:foreground ,comment :background ,dark-bg :weight bold :box (:color ,m-line-brdr :line-width 1)))))
     `(mode-line-inactive  ((,class (:foreground ,comment :background ,dark-bg :weight normal :box (:color ,m-line-brdr :line-width 1)))))
;;     `(mode-line-buffer-id ((,class (:bold t :foreground ,func))))

;;;;; neotree
     `(neo-dir-link-face ((,class (:foreground ,inf :weight bold))))
     `(neo-expand-btn-face ((,class (:foreground ,fg))))
     `(neo-file-link-face ((,class (:foreground ,fg))))
     `(neo-root-dir-face ((,class (:foreground ,func :weight bold))))

;;;;; org
     `(org-agenda-clocking ((,class (:background ,highlight :foreground ,comp))))
     `(org-agenda-date ((,class (:foreground ,var :height 1.1))))
     `(org-agenda-date-today ((,class (:foreground ,keyword :slant italic :weight bold :height 1.3))))
     `(org-agenda-date-weekend ((,class (:weight bold :foreground ,var))))
     `(org-agenda-done ((,class (:foreground ,suc :height 1.2))))
     `(org-agenda-structure ((,class (:weight bold :foreground ,comp))))
     `(org-block ((,class (:background ,org-cb-bg :foreground ,org-cb))))
     `(org-block-begin-line ((,class (:background ,org-cb-ln-bg :foreground ,org-cb-ln))))
     `(org-block-end-line ((,class (:background ,org-cb-ln-bg :foreground ,org-cb-ln))))
     `(org-clock-overlay ((,class (:foreground ,comp))))
     `(org-code ((,class (:foreground ,cyan))))
     `(org-column ((,class (:background ,highlight))))
     `(org-column-title ((,class (:background ,highlight))))
     `(org-date ((,class (:underline t :foreground ,var) )))
     `(org-date-selected ((,class (:background ,func :foreground ,bg1) )))
     `(org-document-info-keyword ((,class (:foreground ,org-ml))))
     `(org-document-title ((,class (:foreground ,func :weight bold :height 1.4 :underline t))))
     `(org-done ((,class (:foreground ,suc :bold t :overline t :background ,org-h3-bg))))
     `(org-ellipsis ((,class (:foreground ,builtin))))
     `(org-footnote  ((,class (:underline t :foreground ,fg))))
     `(org-hide ((,class (:foreground ,fg))))
     `(org-kbd ((,class (:inherit region :foreground ,fg :box (:line-width 1 :style released-button)))))
     `(org-level-1 ((,class (:bold t :foreground ,inf :height 1.3 :background ,org-h1-bg :overline t))))
     `(org-level-2 ((,class (:bold t :foreground ,str :height 1.2 :background ,org-h2-bg))))
     `(org-level-3 ((,class (:bold nil :foreground ,green :height 1.1 :background ,org-h3-bg))))
     `(org-level-4 ((,class (:bold nil :foreground ,yellow :background ,org-h4-bg))))
     `(org-level-5 ((,class (:bold nil :foreground ,inf))))
     `(org-level-6 ((,class (:bold nil :foreground ,str))))
     `(org-level-7 ((,class (:bold nil :foreground ,green))))
     `(org-level-8 ((,class (:bold nil :foreground ,yellow))))
     `(org-link ((,class (:underline t :foreground ,comment))))
     `(org-meta-line ((,class (:foreground ,org-ml))))
     `(org-mode-line-clock-overrun ((,class (:foreground ,err))))
     `(org-priority ((,class (:foreground ,war :bold t))))
     `(org-quote ((,class (:inherit org-block :slant italic))))
     `(org-scheduled ((,class (:foreground ,comp))))
     `(org-scheduled-today ((,class (:foreground ,func :height 1.2))))
     `(org-sexp-date ((,class (:foreground ,fg))))
     `(org-special-keyword ((,class (:foreground ,func))))
     `(org-table ((,class (:foreground ,yellow :background ,org-h4-bg))))
     `(org-todo ((,class (:foreground ,war :bold t :overline t :background ,org-h4-bg))))
     `(org-verbatim ((,class (:foreground ,inf))))
     `(org-verse ((,class (:inherit org-block :slant italic))))
     `(org-warning ((,class (:foreground ,err))))

;;;;; perspective
     `(persp-selected-face ((,class (:bold t :foreground ,func))))

;;;;; powerline
     `(powerline-active1 ((,class (:background ,dark-bg :foreground ,comment :weight bold))))
     `(powerline-active2 ((,class (:background ,dark-bg :foreground ,comment :weight bold))))
     `(powerline-inactive1 ((,class (:background ,dark-bg :foreground ,comment))))
     `(powerline-inactive2 ((,class (:background ,dark-bg :foreground ,comment))))

;;;;; rainbow-delimiters
     `(rainbow-delimiters-depth-1-face ((,class :foreground ,fg)))
     `(rainbow-delimiters-depth-2-face ((,class :foreground ,light-green)))
     `(rainbow-delimiters-depth-3-face ((,class :foreground ,dark-orange)))
     `(rainbow-delimiters-depth-4-face ((,class :foreground ,pale-cyan)))
     `(rainbow-delimiters-depth-5-face ((,class :foreground ,light-green1)))
     `(rainbow-delimiters-depth-6-face ((,class :foreground ,org-cb-ln)))
     `(rainbow-delimiters-depth-7-face ((,class :foreground ,active1)))
     `(rainbow-delimiters-depth-8-face ((,class :foreground ,dark-green1)))
     `(rainbow-delimiters-depth-9-face ((,class :foreground ,cyan)))
     `(rainbow-delimiters-depth-10-face ((,class :foreground ,pale-orange)))
     `(rainbow-delimiters-depth-11-face ((,class :foreground ,dark-green)))
     `(rainbow-delimiters-depth-12-face ((,class :foreground ,org-cb)))
     `(rainbow-delimiters-unmatched-face ((,class :foreground ,err :overline t)))
     `(rainbow-delimiters-mismatched-face ((,class :foreground ,err :overline t)))

;;;;; shm
     `(shm-current-face ((,class (:background ,green-bg))))
     `(shm-quarantine-face ((,class (:background ,red-bg))))

;;;;; smartparens
     `(sp-pair-overlay-face ((,class (:background ,highlight :foreground nil))))
     `(sp-show-pair-match-face ((,class (:foreground ,suc :weight bold :underline t))))

;;;;; term
     `(term ((,class (:foreground ,fg :background ,bg1))))
     `(term-color-black ((,class (:foreground ,black))))
     `(term-color-blue ((,class (:foreground ,blue))))
     `(term-color-cyan ((,class (:foreground ,cyan))))
     `(term-color-green ((,class (:foreground ,green))))
     `(term-color-magenta ((,class (:foreground ,violet))))
     `(term-color-red ((,class (:foreground ,red))))
     `(term-color-white ((,class (:foreground ,white))))
     `(term-color-yellow ((,class (:foreground ,yellow))))

;;;;; which-key
     `(which-key-command-description-face ((,class (:foreground ,fg))))
     `(which-key-group-description-face ((,class (:foreground ,key2))))
     `(which-key-key-face ((,class (:foreground ,func :bold t))))
     `(which-key-separator-face ((,class (:background nil :foreground ,str))))
     `(which-key-special-key-face ((,class (:background ,func :foreground ,bg1))))

;;;;; which-function-mode
     `(which-func ((,class (:foreground ,func))))

;;;;; whitespace-mode
     `(whitespace-empty ((,class (:background nil :foreground ,yellow))))
     `(whitespace-indentation ((,class (:background nil :foreground ,war))))
     `(whitespace-line ((,class (:background nil :foreground ,comp))))
     `(whitespace-newline ((,class (:background nil :foreground ,comp))))
     `(whitespace-space ((,class (:background nil :foreground ,active2))))
     `(whitespace-space-after-tab ((,class (:background nil :foreground ,yellow))))
     `(whitespace-space-before-tab ((,class (:background nil :foreground ,yellow))))
     `(whitespace-tab ((,class (:background nil))))
     `(whitespace-trailing ((,class (:background ,err :foreground ,war))))

;;;;; other, need more work
     `(ac-completion-face ((,class (:underline t :foreground ,keyword))))
     `(ffap ((,class (:foreground ,fg))))
     `(flx-highlight-face ((,class (:foreground ,comp :underline nil))))
     `(font-latex-bold-face ((,class (:foreground ,comp))))
     `(font-latex-italic-face ((,class (:foreground ,key2 :italic t))))
     `(font-latex-match-reference-keywords ((,class (:foreground ,const))))
     `(font-latex-match-variable-keywords ((,class (:foreground ,var))))
     `(font-latex-string-face ((,class (:foreground ,str))))
     `(icompletep-determined ((,class :foreground ,builtin)))
     `(js2-external-variable ((,class (:foreground ,comp  ))))
     `(js2-function-param ((,class (:foreground ,const))))
     `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,doc))))
     `(js2-jsdoc-html-tag-name ((,class (:foreground ,doc))))
     `(js2-jsdoc-value ((,class (:foreground ,doc))))
     `(js2-private-function-call ((,class (:foreground ,const))))
     `(js2-private-member ((,class (:foreground ,fg))))
     `(js3-error-face ((,class (:underline ,war))))
     `(js3-external-variable-face ((,class (:foreground ,var))))
     `(js3-function-param-face ((,class (:foreground ,key2))))
     `(js3-instance-member-face ((,class (:foreground ,const))))
     `(js3-jsdoc-tag-face ((,class (:foreground ,keyword))))
     `(js3-warning-face ((,class (:underline ,keyword))))
     `(mu4e-cited-1-face ((,class (:foreground ,fg))))
     `(mu4e-cited-7-face ((,class (:foreground ,fg))))
     `(mu4e-header-marks-face ((,class (:foreground ,comp))))
     `(mu4e-view-url-number-face ((,class (:foreground ,comp))))
     `(slime-repl-inputed-output-face ((,class (:foreground ,comp))))
     `(trailing-whitespace ((,class :foreground nil :background ,err)))
     `(undo-tree-visualizer-current-face ((,class :foreground ,builtin)))
     `(undo-tree-visualizer-default-face ((,class :foreground ,fg)))
     `(undo-tree-visualizer-register-face ((,class :foreground ,comp)))
     `(undo-tree-visualizer-unmodified-face ((,class :foreground ,var)))
     `(web-mode-builtin-face ((,class (:inherit ,font-lock-builtin-face))))
     `(web-mode-comment-face ((,class (:inherit ,font-lock-comment-face))))
     `(web-mode-constant-face ((,class (:inherit ,font-lock-constant-face))))
     `(web-mode-doctype-face ((,class (:inherit ,font-lock-doc-face))))
     `(web-mode-function-name-face ((,class (:inherit ,font-lock-function-name-face))))
     `(web-mode-html-attr-name-face ((,class (:foreground ,func))))
     `(web-mode-html-attr-value-face ((,class (:foreground ,keyword))))
     `(web-mode-html-tag-face ((,class (:foreground ,builtin))))
     `(web-mode-keyword-face ((,class (:foreground ,keyword))))
     `(web-mode-string-face ((,class (:foreground ,str))))
     `(web-mode-type-face ((,class (:inherit ,font-lock-type-face))))
     `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'focused)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; focused-theme.el ends here
