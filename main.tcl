lappend auto_path [file join [file dirname [file normalize [info script]]] "./"]

package require phxml

set dict_test [dict create "element" "0" "details" [dict create "colour" "orange" "fruit" "mango"]]

#set dict_test [dict create]

#dict set dict_test "element" {à dqsfdsqddqx}

regexp {^value is a (.*?) with a refcount} [::tcl::unsupported::representation "jh ihihi"] -> type

puts $type

set xml [phxml::var_xml $dict_test]

puts $xml
