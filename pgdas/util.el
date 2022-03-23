(defun insert-multi ()
  (interactive)
  (insert-string
   (concat "- typeName: multipleChoice\n"
           "  prompt: >\n"
           "      \n"
           "  defaultFeedback: >\n"
           "      \n"
           "  shuffleOptions: true\n"
           "  options:\n"
           "  - answer:\n"
           "    isCorrect: true\n"
           "    feedback: >\n"
           "      \n"
           "  - answer:\n"
           "    feedback: >\n"
           "      \n"
           "  - answer:\n"
           "    feedback: >\n"
           "      \n"
           "  - answer:\n"
           "    feedback: >\n"
           "      \n"))
  (goto-char (- (point) 223))
  )

(defun insert-numeric ()
  (interactive)
  (insert-string
   (concat "- typeName: numeric\n"
           "  prompt: >\n"
           "      \n"
           "  defaultFeedback: >\n"
           "      \n"
           "  shuffleOptions: true\n"
           "  options:\n"
           "  - range:\n"
           "    isCorrect: true\n"
           "    feedback: >\n"
           "      \n"
           "  - range:\n"
           "    feedback: >\n"
           "      \n"
           "  - range:\n"
           "    feedback: >\n"
           "      \n"
           "  - range:\n"
           "    feedback: >\n"
           "      \n"))
  (goto-char (- (point) 219))
  )

(defun insert-reflect ()
  (interactive)
  (insert-string
   (concat "- typeName: textReflect\n"
           "  prompt: >\n"
           "      \n"
           "  defaultFeedback: >\n"
           "      \n"))
  (goto-char (- (point) 30))
  )
           
(local-set-key [f6] 'insert-multi)
(local-set-key [f11] 'insert-reflect)
(local-set-key [f8] 'insert-numeric)
      

      


(orgtbl-mode 1)

(global-set-key [C-return] 'org-open-at-point-global) 
(defun exrlst ()
  "Insert exrlist"
  (interactive)
  (insert-string
  (concat "<EXRLIST id=\"\">\n\n</EXRLIST>\n"
          "<FLD> R code for the above\n<R>\n</R></FLD>\n"))
  (goto-char (- (point) 54)))

(global-set-key [C-f12] 'exrlst)



