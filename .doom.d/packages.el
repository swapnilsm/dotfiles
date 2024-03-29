;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)
(let ((default-directory "/Library/Application Support/Emacs/site-lisp/emacs-google-config"))
  (normal-top-level-add-subdirs-to-load-path))

(package! expand-region)
(package! beacon)
(package! dimmer)
;; (package! org-fancy-priorities)
;;(package! org
;;   ;; :pin "d6f3aed7b1b01df7b092a47099205847b34fdd37"
;;   ;; :pin "806abc5a2"
;;   ;; :pin "ca873f7"
;;   ;; :pin "6d85f851b3cf47abaf5197fe07bd793b5cf0d5dc"
;;   ;; :pin "cdd73bc"
;;   :built-in t)
(package! org-super-agenda)
(package! org-agenda-property)
;; (package! org-gcal :recipe
;;   (:host github :repo "kidd/org-gcal.el"))
;; (package! org-caldav :recipe
;;   (:host github :repo "dengste/org-caldav"))
(package! leetcode
  :recipe (:repo "swapnilsm/leetcode.el"))
(package! doct)
(package! command-log-mode)
(package! org-pandoc-import
  :recipe (:host github
           :repo "tecosaur/org-pandoc-import"
           :files ("*.el" "filters" "preprocessors")))
(package! protobuf-mode)
(package! ox-gfm)
(package! org-ql)
(package! helm-org-ql)
(package! ox-pandoc
  :recipe (:repo "swapnilsm/ox-pandoc") :pin "9691f4bd497cc53a52ce4e810a364cbc84592836")
(package! request
  :recipe (:repo "tkf/emacs-request"))
(package! org-present)
(package! visual-fill-column)
;; (package! mixed-pitch)

;; Google
(package! google :built-in 'prefer)
;; (package! gogolink :built-in 'prefer)
;; (package! browse-url :built-in 'prefer)

;; Basic Google3
(package! google3 :type 'local :built-in 'prefer)
(package! google3-mode :type 'local :built-in 'prefer)

;; Google3 file handling
;; (package! citc :built-in 'prefer)
;; (package! google3-ffap :built-in 'prefer)
;; (package! ffap-python :recipe (:local-repo "/usr/share/google-emacs/site-lisp/emacs-google-config/devtools/editors/emacs/"))
(package! rotate-among-files :built-in 'prefer)

;; Reference, Search, Correction and Completion
(package! cs :built-in 'prefer)
(package! ivy-cs :built-in 'prefer)
;; (package! google3-quickrun :built-in 'prefer)
(package! google-flymake :built-in 'prefer)
(package! google3-eglot :built-in 'prefer)
;; (package! google-tricorder :recipe (:local-repo "/usr/share/google-emacs/site-lisp/emacs-google-config/devtools/editors/emacs/tricorder"))
;; (package! google-findings :built-in 'prefer)

;; VC/Fig
(package! vc-hgcmd)
(package! vc-defer :recipe (:host github :repo "google/vc-defer"))

;; BUILD stuff
(package! google3-build :built-in 'prefer)
(package! google3-build-mode :built-in 'prefer)
(package! google3-build-capf :built-in 'prefer)
(package! google3-build-cleaner :built-in 'prefer)

(package! iblaze-latest :recipe (:local-repo "~/Projects/iblaze/"))
;; (package! iblaze-latest :recipe (:host nil :branch master :repo "sso://user/swapnilsm/iblaze"))

;; Imports and includes
(package! google-imports :built-in 'prefer)
(package! google-imports-iwyu :built-in 'prefer)
;; (package! clang-include-fixer :recipe (:local-repo "/usr/share/google-emacs/site-lisp/emacs-google-config/third_party/llvm/llvm-project/clang-tools-extra/clang-include-fixer/tool"))
(package! google-cc-add-using :built-in 'prefer)
(package! google-trailing-whitespace :built-in 'prefer)
(package! java-imports :pin "e96ff44ed48b362ab6227b8b802b84d84f78bcaa")

;; Coding help aka snippets
(package! google-yasnippets :built-in 'prefer)

;; Protobuf
(package! protobuffer :built-in 'prefer)

;; CC
(package! google-cc-extras :built-in 'prefer)
(package! google-diformat :built-in 'prefer)

;; Python
(package! google-pyformat :built-in 'prefer)

;; Java
;; (package! google-java-format :built-in 'prefer)

;; Fig
;; (package! fig :recipe (:local-repo "/usr/share/google-emacs/site-lisp/emacs-google-config/devtools/editors/emacs/fig"))
;; (package! fig)

;; EDiff
(package! google-ediff :built-in 'prefer)

;; Links & Documentation
(package! gogolink :built-in 'prefer)
(package! google-engdoc :built-in 'prefer)

;; Soy mode
(package! soy-mode :recipe (:host github :repo "toomoresuch/soy-mode"))

;; (package! project :disable)
;; (package! company-box)
;; (package! sql-dremel :built-in 'prefer)

;; (package! eat :recipe (:host codeberg :repo "akib/emacs-eat" :files ("*.el" ("term" "term/*.el") "*.texi"
;;     "*.ti" ("terminfo/e" "terminfo/e/*")
;;     ("terminfo/65" "terminfo/65/*")
;;     ("integration" "integration/*")
;;     (:exclude ".dir-locals.el" "*-tests.el"))))
;; (package! pocket-reader)
(package! atomic-chrome)
(package! writeroom-mode)
(package! org-roam-ui)
(package! oauth2)
(package! emacsql-sqlite3)
;; (package! consult-org-roam)
;; (package! pophint :recipe (:host github :repo "aki2o/emacs-pophint"))
(package! evil-snipe :disable t)
(package! avy-embark-collect)
(package! gptel)
;; (package! gptel-extensions
;;   :recipe (:host github :repo "kamushadenes/gptel-extensions.el"))
(package! gcmh
  :recipe (:host github :repo "emacsmirror/gcmh"))
;; (package! hyperbole)
(package! org-web-tools)
(package! org-edna)
(package! origami)
(package! kbd-mode
  :recipe (:host github
           :repo "kmonad/kbd-mode"))
(package! memory-usage)
(package! dts-mode)
(package! fontaine
  :recipe (:host github :repo "protesilaos/fontaine"))
(package! treesit-auto
  :recipe (:host github :repo "renzmann/treesit-auto"))
