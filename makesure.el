;;; makesure-it-pops.el

;; Copyright (C) 2016 Paulo Neves - seven@arunce.com

;; Author: Paulo Neves <seven@arunce.com>

;; URL: https://github.com/
;; Version: 0.1.0

;; Keywords: window, popwin, popup, toggle; popwin; 


;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Works best with popwin.. and popwin works even better with makesure.



(defun makesure:it-pops (buffername &optional select fnct)
  "Make sure it pops in and out"
  (interactive)
  (cond ((eq (get-buffer buffername) (window-buffer (selected-window))) (delete-window))
	((get-buffer-window buffername) (select-window (get-buffer-window buffername)))
	;((if thisbuffer (progn (display-buffer buffername) (select-window (get-buffer-window buffername)))))
	((cond ((get-buffer buffername) (display-buffer buffername) (makesure:display-select buffername select))))
	((if fnct (funcall fnct)))
	(t (message "buffer/function not found"))))

(defun makesure:display-select (buffername select)
  "Select (focus) window"
  (if select
      (select-window (get-buffer-window buffername))
    t))

(provide 'makesure)
