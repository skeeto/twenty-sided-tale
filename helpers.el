(defun fix-fancy ()
  (interactive)
  (let ((fix-map '(("…" . "...")
                   ("[”“]" . "\"")
                   ("’" . "'"))))
    (save-excursion
      (cl-loop for (regexp . replace) in fix-map
               do (setf (point) (point-min))
               do (while (re-search-forward regexp nil t)
                    (replace-match replace nil nil))))))
