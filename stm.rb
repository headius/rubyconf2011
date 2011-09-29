require 'rubygems'
require 'java'
require 'mvn:org.clojure:clojure'

java_import 'clojure.lang.Ref'
java_import 'clojure.lang.LockingTransaction'

ref = Ref.new("one")
p ref.deref # "one"

begin
  ref.set("two")
rescue java.lang.IllegalStateException
end

LockingTransaction.run_in_transaction do
  ref.set("two")
end
p ref.deref # "two"