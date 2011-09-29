require 'rubygems'
require 'mvn:org.clojure:clojure'

java_import 'clojure.lang.PersistentHashMap'

ruby_hash = {"a" => 100, "b" => 300, "c" => 50}

clj_hash = PersistentHashMap.create(ruby_hash)
p clj_hash
# {"a"=>100, "b"=>300, "c"=>50}

clj_hash.each {|k,v| puts "#{k} is #{v}"}
# a is 100
# b is 300
# c is 50

p clj_hash.select {|k,v| k > "a"}
# [["b", 300], ["c", 50]]

begin
  clj_hash["d"] = 400
rescue java.lang.UnsupportedOperationException
end

clj_hash2 = clj_hash.assoc("d", 400)
puts clj_hash2["d"] # 400