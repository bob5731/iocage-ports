--- share/pkgs/gui-lib/mred/private/wx/gtk/queue.rkt.orig	2018-01-27 18:25:11 UTC
+++ share/pkgs/gui-lib/mred/private/wx/gtk/queue.rkt
@@ -11,7 +11,6 @@
          "clipboard.rkt"
          "const.rkt"
 	 "w32.rkt"
-         "unique.rkt"
          "../common/keep-forever.rkt")
 
 (provide (protect-out gtk-start-event-pump
@@ -86,8 +85,6 @@
           (error (format
                   "Gtk initialization failed for display ~s"
                   (or display ":0"))))
-        (when single-instance?
-          (do-single-instance))
         (let ([v (register-process-global #"Racket-GUI-wm-class" #f)])
           (when v
             (gdk_set_program_class (cast v _pointer _string))))
