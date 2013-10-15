require 'mkmf'

dir_config("rrdtool/rrdtool")

# $defs.push "-Wno-deprecated-declarations"
# $libs += " -lssl -lcrypto "

create_makefile("rrdtool/rrdtool")
