(in-package #:geoip)

(defun geoip (ip)
  (json:decode-json-from-string
   (babel:octets-to-string
    (first
     (multiple-value-list
      (drakma:http-request
       (concatenate 'string "https://ip.briantafoya.com/" ip "/json")
			   :method :get))))))
