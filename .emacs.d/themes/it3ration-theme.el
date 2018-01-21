(deftheme it3ration "A theme that's easier on the eyes.")

(let ((c-gray "#303030")
      (c-mid-gray "#444444")
      (c-light-gray "#4e4e4e")
      (c-white "#e5e5e5")
      (c-red "#870000")
      (c-black "#080808")
      (c-yellow "#ffff87")
      (c-green "#00cd00")
      (c-blue "#00a7ff")
      (c-dark-blue "#005faf")
      (c-orange "#ff8700")
      (c-pink "#d75f5f")
      (c-purple "#af87ff")
      (c-brown "#87875f")
      (c-tan "#af875f"))
  ;; The modeline.
  (setq-default
   mode-line-format
   '((:eval (propertize "%* " 'face '(:foreground "#00cd00" :weight bold)))
     (:eval (propertize "%b " 'face '(:foreground "#ffff87" :weight bold)))
     (:eval (propertize "(%l, %c) " 'face '(:foreground "#ff8700" :weight bold)))
     (:eval (propertize "%m " 'face '(:foreground "#af87ff" :weight bold)))
     (:eval
      (when vc-mode
        (propertize
         (s-trim (substring-no-properties vc-mode))
         'face
         '(:foreground "#00a7ff" :weight bold))))))
  ;; The theme.
  (custom-theme-set-faces
   'it3ration

   ;;
   ;; defaults
   ;;

   `(default ((t (:background ,c-gray :foreground ,c-white))))
   `(cursor ((t (:background ,c-blue))))
   `(mode-line ((t (:background ,c-light-gray :foreground ,c-white :bold t :box nil))))
   `(mode-line-inactive ((t (:background ,c-light-gray :foreground ,c-white :bold t :box nil))))
   ;; mode-line-buffer-id
   ;; mode-line-emphasis
   ;; mode-line-highlight
   `(header-line ((t (:background ,c-light-gray :foreground ,c-white :bold t))))
   `(minibuffer-prompt ((t (:foreground ,c-blue :bold t))))
   `(trailing-whitespace ((t (:background ,c-gray :foreground ,c-white))))
   `(highlight ((t (:background ,c-red))))
   `(region ((t (:background ,c-black))))
   `(lazy-highlight ((t (:background ,c-dark-blue))))
   `(isearch ((t (:background ,c-black))))
   `(query-replace ((t (:background ,c-black))))
   `(show-paren-match ((t (:background ,c-green))))
   `(show-paren-mismatch ((t (:background ,c-green))))

   ;;
   ;; font lock
   ;;

   `(font-lock-string-face ((t (:foreground ,c-yellow))))
   `(font-lock-comment-face ((t (:foreground ,c-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,c-brown))))
   `(font-lock-doc-face ((t (:foreground ,c-brown))))
   `(font-lock-keyword-face ((t (:foreground ,c-pink :bold t))))
   `(font-lock-preprocessor-face ((t (:foreground ,c-pink :bold t))))
   `(font-lock-function-name-face ((t (:foreground ,c-green :bold t))))
   `(font-lock-constant-face ((t (:foreground ,c-purple :bold t))))
   `(font-lock-builtin-face ((t (:foreground ,c-purple :bold t))))
   `(font-lock-type-face ((t (:foreground ,c-blue :bold t))))
   `(font-lock-variable-name-face ((t (:foreground ,c-orange :bold t))))

   ;;
   ;; helm
   ;;

   ;; helm-M-x-key
   ;; helm-action
   ;; helm-ag-edit-deleted-line
   ;; helm-bookmark-addressbook
   ;; helm-bookmark-directory
   ;; helm-bookmark-file
   ;; helm-bookmark-file-not-found
   ;; helm-bookmark-gnus
   ;; helm-bookmark-info
   ;; helm-bookmark-man
   ;; helm-bookmark-w3m
   `(helm-buffer-directory ((t :foreground ,c-pink :bold t)))
   `(helm-buffer-file ((t :foreground ,c-purple :bold t)))
   ;; helm-buffer-modified
   ;; helm-buffer-not-saved
   ;; helm-buffer-process
   ;; helm-buffer-saved-out
   ;; helm-buffer-size
   ;; helm-candidate-number
   ;; helm-candidate-number-suspended
   ;; helm-etags-file
   `(helm-ff-directory ((t (:foreground ,c-pink :bold t))))
   ;; helm-ff-dirs
   `(helm-ff-dotted-directory ((t (:foreground ,c-pink :bold t))))
   `(helm-ff-dotted-symlink-directory ((t (:foreground ,c-yellow :bold t))))
   `(helm-ff-executable ((t (:foreground ,c-blue :bold t))))
   `(helm-ff-file ((t (:foreground ,c-white))))
   `(helm-ff-invalid-symlink ((t (:foreground ,c-yellow :bold t))))
   `(helm-ff-prefix ((t (:foreground ,c-white))))
   `(helm-ff-symlink ((t (:foreground ,c-yellow :bold t))))
   ;; helm-grep-cmd-line
   ;; helm-grep-file
   ;; helm-grep-finish
   ;; helm-grep-lineno
   ;; helm-grep-match
   ;; helm-header
   ;; helm-header-line-left-margin
   ;; helm-helper
   ;; helm-history-deleted
   ;; helm-history-remote
   ;; helm-lisp-completion-info
   ;; helm-lisp-show-completion
   ;; helm-locate-finish
   ;; helm-match
   ;; helm-match-item
   ;; helm-moccur-buffer
   ;; helm-non-file-buffer
   ;; helm-prefarg
   ;; helm-resume-need-update
   `(helm-selection ((t (:background ,c-red))))
   ;; helm-selection-line
   ;; helm-separator
   `(helm-source-header ((t (:background ,c-dark-blue :bold t))))
   ;; helm-swoop-line-number-face
   ;; helm-swoop-target-line-block-face
   `(helm-swoop-target-line-face ((t (:background ,c-red))))
   `(helm-swoop-target-word-face ((t (:background ,c-dark-blue))))
   `(helm-visible-mark ((t (:background ,c-black))))

   ;;
   ;; magit
   ;;

   ;; magit-bisect-bad
   ;; magit-bisect-good
   ;; magit-bisect-skip
   ;; magit-blame-date
   ;; magit-blame-hash
   ;; magit-blame-heading
   ;; magit-blame-name
   ;; magit-blame-summary
   ;; magit-branch-current
   ;; magit-branch-local
   ;; magit-branch-remote
   ;; magit-cherry-equivalent
   ;; magit-cherry-unmatched
   `(magit-diff-added ((t (:foreground ,c-green :bold t))))
   `(magit-diff-added-highlight ((t (:foreground ,c-green :bold t))))
   ;; magit-diff-base
   ;; magit-diff-base-highlight
   ;; magit-diff-conflict-heading
   ;; magit-diff-context
   ;; magit-diff-context-highlight
   `(magit-diff-file-heading ((t (:foreground ,c-white))))
   `(magit-diff-file-heading-highlight ((t (:foreground ,c-purple :bold t))))
   `(magit-diff-file-heading-selection ((t (:foreground ,c-tan :bold t))))
   `(magit-diff-hunk-heading ((t (:background ,c-mid-gray :foreground ,c-white))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,c-light-gray :foreground ,c-purple :bold t))))
   `(magit-diff-hunk-heading-selection ((t (:background ,c-light-gray :foreground ,c-tan :bold t))))
   ;; magit-diff-hunk-region
   ;; magit-diff-lines-boundary
   ;; magit-diff-lines-heading
   ;; magit-diff-our
   ;; magit-diff-our-highlight
   `(magit-diff-removed ((t (:foreground ,c-pink :bold t))))
   `(magit-diff-removed-highlight ((t (:foreground ,c-pink :bold t))))
   ;; magit-diff-their
   ;; magit-diff-their-highlight
   ;; magit-diff-whitespace-warning
   ;; magit-diffstat-added
   ;; magit-diffstat-removed
   ;; magit-dimmed
   ;; magit-filename
   ;; magit-hash
   ;; magit-head
   ;; magit-header-line
   ;; magit-keyword
   ;; magit-log-author
   ;; magit-log-date
   ;; magit-log-graph
   ;; magit-popup-argument
   ;; magit-popup-disabled-argument
   ;; magit-popup-heading
   ;; magit-popup-key
   ;; magit-popup-option-value
   ;; magit-process-ng
   ;; magit-process-ok
   ;; magit-reflog-amend
   ;; magit-reflog-checkout
   ;; magit-reflog-cherry-pick
   ;; magit-reflog-commit
   ;; magit-reflog-merge
   ;; magit-reflog-other
   ;; magit-reflog-rebase
   ;; magit-reflog-remote
   ;; magit-reflog-reset
   ;; magit-refname
   ;; magit-refname-stash
   ;; magit-refname-wip
   `(magit-section-heading ((t (:foreground ,c-yellow :bold t))))
   ;; magit-section-heading-selection
   ;; magit-section-highlight
   ;; magit-section-secondary-heading
   ;; magit-sequence-done
   ;; magit-sequence-drop
   ;; magit-sequence-head
   ;; magit-sequence-onto
   ;; magit-sequence-part
   ;; magit-sequence-pick
   ;; magit-sequence-stop
   ;; magit-signature-bad
   ;; magit-signature-error
   ;; magit-signature-expired
   ;; magit-signature-expired-key
   ;; magit-signature-good
   ;; magit-signature-revoked
   ;; magit-signature-untrusted
   ;; magit-tag

   ;;
   ;; smartparens
   ;;

   `(sp-show-pair-match-face ((t (:background ,c-green))))
   `(sp-show-pair-mismatch-face ((t (:background ,c-green))))
   
   ;;
   ;; erc
   ;;

   ;; erc-action-face
   ;; erc-bold-face
   ;; erc-button
   ;; erc-command-indicator-face
   `(erc-current-nick-face ((t (:foreground ,c-blue :bold t))))
   ;; erc-dangerous-host-face
   `(erc-default-face ((t (:foreground ,c-white))))
   `(erc-direct-msg-face ((t (:foreground ,c-pink))))
   ;; erc-error-face
   ;; erc-fool-face
   ;; erc-header-line
   `(erc-input-face ((t (:foreground ,c-orange))))
   ;; erc-inverse-face
   ;; erc-keyword-face
   ;; erc-my-nick-face
   ;; erc-my-nick-prefix-face
   `(erc-nick-default-face ((t (:foreground ,c-purple :bold t))))
   ;; erc-nick-msg-face
   ;; erc-nick-prefix-face
   `(erc-notice-face ((t (:foreground ,c-brown))))
   ;; erc-pal-face
   `(erc-prompt-face ((t (:foreground ,c-yellow :bold t))))
   `(erc-timestamp-face ((t (:foreground ,c-green))))
   ;; erc-underline-face

   ;;
   ;; eshell
   ;;

   ;; eshell-ls-archive
   ;; eshell-ls-backup
   ;; eshell-ls-clutter
   ;; eshell-ls-directory
   ;; eshell-ls-executable
   ;; eshell-ls-missing
   ;; eshell-ls-product
   ;; eshell-ls-readonly
   ;; eshell-ls-special
   ;; eshell-ls-symlink
   ;; eshell-ls-unreadable
   ;; eshell-prompt

   ;;
   ;; web-mode
   ;;

   ;; web-mode-block-attr-name-face
   ;; web-mode-block-attr-value-face
   ;; web-mode-block-comment-face
   ;; web-mode-block-control-face
   ;; web-mode-block-delimiter-face
   ;; web-mode-block-face
   ;; web-mode-block-string-face
   ;; web-mode-bold-face
   ;; web-mode-builtin-face
   ;; web-mode-comment-face
   ;; web-mode-comment-keyword-face
   ;; web-mode-constant-face
   ;; web-mode-css-at-rule-face
   ;; web-mode-css-color-face
   ;; web-mode-css-comment-face
   ;; web-mode-css-function-face
   ;; web-mode-css-priority-face
   ;; web-mode-css-property-name-face
   ;; web-mode-css-pseudo-class-face
   ;; web-mode-css-selector-face
   ;; web-mode-css-string-face
   ;; web-mode-css-variable-face
   ;; web-mode-current-column-highlight-face
   ;; web-mode-current-element-highlight-face
   ;; web-mode-doctype-face
   ;; web-mode-error-face
   ;; web-mode-filter-face
   ;; web-mode-folded-face
   ;; web-mode-function-call-face
   ;; web-mode-function-name-face
   ;; web-mode-html-attr-custom-face
   ;; web-mode-html-attr-engine-face
   ;; web-mode-html-attr-equal-face
   `(web-mode-html-attr-name-face ((t (:foreground ,c-purple :bold t))))
   ;; web-mode-html-attr-value-face
   ;; web-mode-html-entity-face
   ;; web-mode-html-tag-bracket-face
   ;; web-mode-html-tag-custom-face
   `(web-mode-html-tag-face ((t (:foreground ,c-pink :bold t))))
   `(web-mode-html-tag-namespaced-face ((t (:foreground ,c-pink :bold t))))
   ;; web-mode-html-tag-face
   ;; web-mode-html-tag-namespaced-face
   ;; web-mode-inlay-face
   ;; web-mode-italic-face
   ;; web-mode-javascript-comment-face
   ;; web-mode-javascript-string-face
   ;; web-mode-json-comment-face
   ;; web-mode-json-context-face
   ;; web-mode-json-key-face
   ;; web-mode-json-string-face
   ;; web-mode-jsx-depth-1-face
   ;; web-mode-jsx-depth-2-face
   ;; web-mode-jsx-depth-3-face
   ;; web-mode-jsx-depth-4-face
   ;; web-mode-keyword-face
   ;; web-mode-param-name-face
   ;; web-mode-part-comment-face
   ;; web-mode-part-face
   ;; web-mode-part-string-face
   ;; web-mode-preprocessor-face
   ;; web-mode-script-face
   ;; web-mode-sql-keyword-face
   ;; web-mode-string-face
   ;; web-mode-style-face
   ;; web-mode-symbol-face
   ;; web-mode-type-face
   ;; web-mode-underline-face
   ;; web-mode-variable-name-face
   ;; web-mode-warning-face
   ;; web-mode-whitespace-face
   ))

(provide-theme 'it3ration)
