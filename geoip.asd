;;;; geoip.asd

(asdf:defsystem #:geoip
  :description "A library for doing IP to geolocation via a free public web API."
  :author "Jeff Francis <jeff@gritch.org>"
  :license "MIT, see file LICENSE"
  :depends-on (#:drakma
               #:babel
               #:cl-json)
  :serial t
  :components ((:file "package")
               (:file "geoip")))

