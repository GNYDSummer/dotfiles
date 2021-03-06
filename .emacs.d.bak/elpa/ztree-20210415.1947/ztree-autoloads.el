;;; ztree-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "ztree-diff" "ztree-diff.el" (0 0 0 0))
;;; Generated autoloads from ztree-diff.el

(autoload 'ztreediff-mode "ztree-diff" "\
A minor mode for displaying the difference of the directory trees in text mode.

This is a minor mode.  If called interactively, toggle the
`ZtreeDiff mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `ztreediff-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(autoload 'ztree-diff "ztree-diff" "\
Create an interactive buffer with the directory tree of the path given.
Argument DIR1 left directory.
Argument DIR2 right directory.

\(fn DIR1 DIR2)" t nil)

(register-definition-prefixes "ztree-diff" '("ztree"))

;;;***

;;;### (autoloads nil "ztree-diff-model" "ztree-diff-model.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from ztree-diff-model.el

(register-definition-prefixes "ztree-diff-model" '("ztree-di"))

;;;***

;;;### (autoloads nil "ztree-dir" "ztree-dir.el" (0 0 0 0))
;;; Generated autoloads from ztree-dir.el

(autoload 'ztree-dir "ztree-dir" "\
Create an interactive buffer with the directory tree of the PATH given.

\(fn PATH)" t nil)

(register-definition-prefixes "ztree-dir" '("ztree"))

;;;***

;;;### (autoloads nil "ztree-util" "ztree-util.el" (0 0 0 0))
;;; Generated autoloads from ztree-util.el

(register-definition-prefixes "ztree-util" '("def-ztree-local-fun" "ztree-"))

;;;***

;;;### (autoloads nil "ztree-view" "ztree-view.el" (0 0 0 0))
;;; Generated autoloads from ztree-view.el

(autoload 'ztree-mode "ztree-view" "\
A major mode for displaying the directory tree in text mode.

\(fn)" t nil)

(autoload 'ztree-view-on-window-configuration-changed "ztree-view" "\
Hook called then window configuration changed to resize buffer's contents" nil nil)

(register-definition-prefixes "ztree-view" '("ztree"))

;;;***

;;;### (autoloads nil nil ("ztree-pkg.el" "ztree-protocol.el" "ztree.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ztree-autoloads.el ends here
