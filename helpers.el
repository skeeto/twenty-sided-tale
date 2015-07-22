(defun fix-quotes ()
  (interactive)
  (save-excursion
    (setf (point) (point-min))
    (while (re-search-forward "[”“]" nil t)
      (replace-match "\"" nil nil))
    (setf (point) (point-min))
    (while (re-search-forward "’" nil t)
      (replace-match "'" nil nil))))
