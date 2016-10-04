# geoip-lisp
A Common Lisp client for doing IP to geolocation via a free public web
API.

For many people, cl-geoip does exactly what they need. However, if you
have access to the Internet and would prefer not to host and maintain
(ie, download and decompress on the first Tuesday of every month) the
MaxMind IP Geolocation Database, you might find this little tiny bit
of code useful.

It's astonishingly simple to use. Simply call geoip with the address
in question, and you receive back a nested assoc list with everything
that MaxMind knows about that address:

````
CL-USER> (geoip:geoip "65.97.58.36")
((:IP . "65.97.58.36")
 (:GEODATA
  (:CITY (:GEONAME--ID . 2656192)
   (:NAMES (:DE . "Basingstoke") (:EN . "Basingstoke") (:FR . "Basingstoke")
    (:JA . "ベイジングストーク") (:ZH-+CN+ . "貝辛斯托克")))
  (:CONTINENT (:CODE . "EU") (:GEONAME--ID . 6255148)
   (:NAMES (:DE . "Europa") (:EN . "Europe") (:ES . "Europa") (:FR . "Europe")
    (:JA . "ヨーロッパ") (:PT-+BR+ . "Europa") (:RU . "Европа") (:ZH-+CN+ . "欧洲")))
  (:COUNTRY (:GEONAME--ID . 2635167) (:ISO--CODE . "GB")
   (:NAMES (:DE . "Vereinigtes Königreich") (:EN . "United Kingdom")
    (:ES . "Reino Unido") (:FR . "Royaume-Uni") (:JA . "イギリス")
    (:PT-+BR+ . "Reino Unido") (:RU . "Великобритания") (:ZH-+CN+ . "英国")))
  (:LOCATION (:ACCURACY--RADIUS . 200) (:LATITUDE . 51.2146)
   (:LONGITUDE . -1.11) (:TIME--ZONE . "Europe/London"))
  (:POSTAL (:CODE . "RG25"))
  (:REGISTERED--COUNTRY (:GEONAME--ID . 2635167) (:ISO--CODE . "GB")
   (:NAMES (:DE . "Vereinigtes Königreich") (:EN . "United Kingdom")
    (:ES . "Reino Unido") (:FR . "Royaume-Uni") (:JA . "イギリス")
    (:PT-+BR+ . "Reino Unido") (:RU . "Великобритания") (:ZH-+CN+ . "英国")))
  (:SUBDIVISIONS
   ((:GEONAME--ID . 6269131) (:ISO--CODE . "ENG")
    (:NAMES (:DE . "England") (:EN . "England") (:ES . "Inglaterra")
     (:FR . "Angleterre") (:JA . "イングランド") (:PT-+BR+ . "Inglaterra")
     (:RU . "Англия") (:ZH-+CN+ . "英格兰")))
   ((:GEONAME--ID . 2647554) (:ISO--CODE . "HAM")
    (:NAMES (:DE . "Hampshire") (:EN . "Hampshire") (:ES . "Hampshire")
     (:FR . "Hampshire") (:JA . "ハンプシャー州") (:PT-+BR+ . "Hampshire")
     (:RU . "Хэмпшир")))))
 (:HELP
  . "A free IP/Geo data provider. There are several formats available: text, simple (just your IP), html, json, and xml. SSL and Non-SSL. Example: https://ip.briantafoya.com/simple - Returns your IP in text format, https://ip.briantafoya.com/json returns your IP and GeoLocation data in json format. You can also specify an IP address and format: https://ip.briantafoya.com/192.241.240.19/json")
 (:ABOUT
  . "Brought to you by briantafoya.com as a free service to all. This product includes GeoLite2 data created by MaxMind, available from http://www.maxmind.com.")
 (:PRIVACY--POLICY
  . "Effective Date: 2016/07/29 - This Privacy Policy discloses the privacy practices of ip.briantafoya.com (sometimes referred to in this Privacy Policy as 'we', or 'us'), in connection with the ip.briantafoya.com website (the 'Website') and any features and online services provided by ip.briantafoya.com. We log your IP address for internal diagnostic purposes ONLY. Your data is never sold, distributed, or given away PERIOD! We believe your privacy is of the utmost importance."))
CL-USER> 
````

Brian Tafoya hosts this service for free, so keep that in mind before
you decide to throw a million queries per day at it. If you're looking
at anything more than casual use, you'd be better off with cl-geoip
and hosting the data locally, but this library is pretty handy for
casual use.
