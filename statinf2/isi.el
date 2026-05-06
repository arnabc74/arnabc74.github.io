(defun fwex()
  (interactive)
  (insert-string "<p>@<Example@>@(\n\n@)\n")
  (goto-char (- (point) 4)))


(defun fwdisp()
  (interactive)
  (insert-string "@<Disp@>@(@)")
  (goto-char (- (point) 2)))

(defun fwexer()
  (interactive)
  (insert-string "<p>@<Exercise@>@(\n\n@)\n")
  (goto-char (- (point) 4)))

(defun fwhint()
  (interactive)
  (insert-string "<br>@<Hint@>@(\n\n@)\n")
  (goto-char (- (point) 4)))





(defun fwlt()
  (interactive)
  (insert-string " &lt; "))

(defun fwgt()
  (interactive)
  (insert-string " &gt; "))

(setq skeleton-end-newline nil)

(define-skeleton fwsec
  "Section header"
  "Section name:"
  "@<Section@>@("
  str
  "@)\n")

(define-skeleton fwsubsec
  "Section header"
  "Subsection name:"
  "@<Subsection@>@("
  str
  "@)\n")

(define-skeleton fwsub
  "Subscripting"
  "subscript: "
  "@<sub@>@("
  str
  "@)")

(defun fwout ()
  "Looks for the next @). If it finds one then puts the point
after it. Otherwise, beeps. Defined in file isi.el."
  (interactive)
  (if (search-forward "@)" nil t)
      ()
    (beep)))



(global-set-key [f1] 'fwex)
(global-set-key [f2] 'fwdisp)
(global-set-key [f3] 'fwexer)
(global-set-key [f4] 'fwout)
(global-set-key [f5] 'fwhint)


(global-set-key "\C-c," 'fwlt)
(global-set-key "\C-c." 'fwgt)
(global-set-key "\C-c\C-s" 'fwsub)
(global-set-key "\C-c1" 'fwsec)
(global-set-key "\C-c2" 'fwsubsec)

(define-global-abbrev "aa" "@<alpha@>")
(define-global-abbrev "bb" "@<beta@>")
(define-global-abbrev "cc" "@<gamma@>")
(define-global-abbrev "dd" "@<delta@>")
(define-global-abbrev "ee" "@<epsilon@>")
(define-global-abbrev "tt" "@<theta@>")
(define-global-abbrev "th" "@<thetahat@>")
(define-global-abbrev "mm" "@<mu@>")
(define-global-abbrev "ss" "@<sigma@>")
(define-global-abbrev "pp" "@<phi@>")
(define-global-abbrev "xx" "@<xi@>")
(define-global-abbrev "rarrow" "@<rarrow@>")
(define-global-abbrev "infi" "@<inf@>")
(define-global-abbrev "xbar" "@<xbar@>")
(define-global-abbrev "sm" "@<Sum@>")
(define-global-abbrev "sq" "@<sigmasqd@>")
(define-global-abbrev "geq" "@<Geq@>")
(define-global-abbrev "leq" "@<Leq@>")
(define-global-abbrev "neq" "@<Neq@>")

