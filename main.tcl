lappend auto_path [file join [file dirname [file normalize [info script]]] "./"]

package require phxml

set dict_test [dict create "element" "0" "details" [dict create "colour" "orange" "fruit" "mango"]]

set xml [phxml::var_xml $dict_test]

puts $xml

set dict_test [phxml::xml_var $xml]

puts $dict_test
