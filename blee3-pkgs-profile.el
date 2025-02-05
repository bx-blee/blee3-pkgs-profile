;;; blee3-pkgs-profile.el --- Blee3 Packages Profile  -*- lexical-binding: t; -*-

(orgCmntBegin "
* Summary: Library to process Doom packages profile.
" orgCmntEnd)

;;;#+BEGIN: b:elisp:file/copyLeftPlus :outLevel 1
(orgCmntBegin "
* Libre-Halaal Software --- Part Of Blee ---  Poly-COMEEGA Format.
** This is Libre-Halaal Software. © Libre-Halaal Foundation. Subject to AGPL.
** It is not part of Emacs. It is part of Blee.
** Best read and edited  with Poly-COMEEGA (Polymode Colaborative Org-Mode Enhance Emacs Generalized Authorship)
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/authors :authors ("./inserts/authors-mb.org")
(orgCmntBegin "
* Authors: Mohsen BANAN, http://mohsen.banan.1.byname.net/contact
" orgCmntEnd)
;;;#+END:

;;;#+BEGIN: b:elisp:file/orgTopControls :outLevel 1
(orgCmntBegin "
*  ~ORG-TOP-CONTROLS-COME-HERE~
" orgCmntEnd)
;;;#+END:

(orgCmntBegin "
* Relevant Panels:
** [[file:/bisos/panels/blee-core/mail/Gnus/_nodeBase_/fullUsagePanel-en.org]]
* Planned Improvements:
*

" orgCmntEnd)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "REQUIRES" :extraInfo "Imports"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _REQUIRES_: |]]  Imports  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(require 'pkgs-profile)

;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 1 :title "Variables And Constants" :extraInfo "defvar, defcustom"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_       [[elisp:(outline-show-subtree+toggle)][| *Variables And Constants:* |]]  defvar, defcustom  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:

(defvar b:pkgsProfile:blee3:base (expand-file-name "profiles" (file-name-directory (file-truename load-file-name)))
  " #+begin_org
** =b:pkgsProfile:blee3:base= is base directory of profiles files.
Typically: [[file:/bisos/git/auth/bxRepos/blee/blee3-pkgs-profile/profiles]]
The default (initial) value is that of the profiles directory next to this file in the repo.
Since this file may have been symlinked to, ~file-truename~ is needed.
#+end_org "
  )

(defun $:b:profile|atBase (<file)
  (expand-file-name <file b:pkgsProfile:blee3:base))
  
(defvar b:pkgsProfile:blee3:orphan ($:b:profile|atBase "orphan-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:orphan= list of packages and their versions.
Orphan packages are those that were not packaged.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:orphan ':profileName "blee3-orphan")

(defvar b:pkgsProfile:blee3:doom3 ($:b:profile|atBase "doom3-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:doom3= list of packages and their versions.
Packages that are included with doom3.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:doom3 ':profileName "blee3-doom3")


(defvar b:pkgsProfile:blee3:native ($:b:profile|atBase "native-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:native= list of packages and their versions as property-list.
Blee packages that we have developed natively.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:native ':profileName "blee3-native")

(defvar b:pkgsProfile:blee3:adopted ($:b:profile|atBase "adopted-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:adopted= list of packages and their versions.
Packages that we have adopted and are not part of doom.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:adopted ':profileName "blee3-adopted")

(defvar b:pkgsProfile:blee3:explicit ($:b:profile|atBase "explicit-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:explicit= list of packages and their versions.
Explicitly mentioned.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:explicit ':profileName "blee3-explicit")

(defvar b:pkgsProfile:blee3:ephemera ($:b:profile|atBase "ephemera-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:ephemera= list of packages and their versions.
Non permanent packages.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:ephemera ':profileName "blee3-ephemera")

(defvar b:pkgsProfile:blee3:realm-site ($:b:profile|atBase "realm-site-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:realm-site= list of packages and their versions.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:realm-site ':profileName "blee3-realm-site")

(defvar b:pkgsProfile:blee3:realm-user ($:b:profile|atBase "realm-user-pkgsProfile.el")
   " #+begin_org
** =b:pkgsProfile:blee3:realm-user= list of packages and their versions.
#+end_org "
  )
(put 'b:pkgsProfile:blee3:realm-user ':profileName "blee3-realm-user")


(defvar b:pkgsProfile:collection:blee3
  `(
    b:pkgsProfile:blee3:doom3
    b:pkgsProfile:blee3:native
    b:pkgsProfile:blee3:adopted
    b:pkgsProfile:blee3:explicit
    b:pkgsProfile:blee3:ephemera
    b:pkgsProfile:blee3:realm-site
    b:pkgsProfile:blee3:realm-user
    )
   " #+begin_org
** =b:pkgsProfile:collection:blee3= list of packages and their versions.
#+end_org "
  )

(defvar b:pkgsProfile:collection:blee3-sansDoom3
  `(
    b:pkgsProfile:blee3:native
    b:pkgsProfile:blee3:adopted
    b:pkgsProfile:blee3:explicit
    b:pkgsProfile:blee3:ephemera
    b:pkgsProfile:blee3:realm-site
    b:pkgsProfile:blee3:realm-user
    )
   " #+begin_org
** =b:pkgsProfile:collection:blee3-sansDoom3= list of packages and their versions.
#+end_org "
  )


;;;#+BEGIN: blee:bxPanel:foldingSection :outLevel 0 :title "Blee Package Information" :extraInfo "Canonical -- OBSOLETED"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  _[[elisp:(blee:menu-sel:outline:popupMenu)][±]]_  _[[elisp:(blee:menu-sel:navigation:popupMenu)][Ξ]]_     [[elisp:(outline-show-subtree+toggle)][| _Blee Package Information_: |]]  Canonical -- OBSOLETED  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;;#+END:



;;;#+BEGIN:  b:elisp:defs/defun :defName "b:doom:pkgs:pinned|writeList"
(orgCmntBegin "
* [[elisp:(show-all)][(>]]  =defun= <<b:doom:pkgs:pinned|writeList>> [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
(defun b:doom:pkgs:pinned|writeList (
;;;#+END:
                                     <fileName)
   " #+begin_org
** TODO DocStr: NOTYET, Perhaps Obsolete.
#+end_org "
   (with-temp-file
     <fileName
     (progn
       (insert ";; Auto generated, do not hand edit.\n")
       (insert "'(\n")
       (dolist ($each (doom-package-pinned-list))
         (insert (format "  %s\n" $each)))
       (insert ")\n"))))


(orgCmntBegin "
** Basic Usage:
#+BEGIN_SRC emacs-lisp
(b:doom:pkgs:pinned|writeList b:pkgsProfile:blee3:doom3)
#+END_SRC

#+RESULTS:

" orgCmntEnd)


;;;#+BEGIN: b:elisp:file/provide :modName nil
(provide 'blee3-pkgs-profile)
;;;#+END:

;;;#+BEGIN: b:elisp:file/endOf :outLevel 1
(orgCmntBegin "
* [[elisp:(show-all)][(>]] ~END-OF-FILE~  [[elisp:(org-shifttab)][<)]] E|
" orgCmntEnd)
;;; local variables:
;;; no-byte-compile: t
;;; end:
;;;#+END:
