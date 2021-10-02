(defun insert-multi ()
  (interactive)
  (insert-string
   (concat "  shuffleOptions: true\n"
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
           "      \n")))
(defun insert-numeric ()
  (interactive)
  (insert-string
   (concat "  shuffleOptions: true\n"
           "  answers:\n"
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
           "      \n")))

(local-set-key [f6] 'insert-multi)
(local-set-key [f8] 'insert-numeric)
    

