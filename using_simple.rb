require 'java'
# jar files can be required...no CLASSPATH needed
# require 'foo.jar'

# for java/javax/com/org, package name works
# java_import java.util.ArrayList
java_import Java::Simple

# constructor call
simple = Simple.new('RubyConf', 2010)
# same as getName or get_name
simple.name
# setName or set_name
simple.name = "JRubyConf"
# access public field
simple.number
# call method with interface as last argument
simple.do_something {
  # body becomes Runnable impl
  puts "hello!"
}