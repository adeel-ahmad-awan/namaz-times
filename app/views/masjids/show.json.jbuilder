# json.partial! "masjids/masjid", masjid: @masjid
json.extract! @masjid, :id, :name, :address
json.timings @masjid.timings, :day, :fajar, :zohar, :asar, :magrib, :isha
