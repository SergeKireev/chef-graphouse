# -Xms${GH_XMS:=256m}
# -Xmx${GH_XMX:=4g}
# -Xss${GH_XSS:=2m}
# -XX:StringTableSize=10000000
# -XX:+UseG1GC
# -XX:MaxGCPauseMillis=1000
#
# By default, Graphouse is configured with 256Mb Xms (startup memory)
# and 4Gb Xmx (max memory usage). If you have a huge metric tree
# (>10 million metrics), it is recommended to increase Xmx.
# Also it is better to set Xms equal to Xmx (in this case Graphouse
# will allocate all allowed memory at startup).
default['graphouse']['vmoptions']['Xmx'] = '4g'
default['graphouse']['vmoptions']['Xms'] = node['graphouse']['vmoptions']['Xmx']

default['graphouse']['vmoptions']['Xss'] = '2m'
default['graphouse']['vmoptions']['XX:StringTableSize'] = 10000000
default['graphouse']['vmoptions']['XX:+UseG1GC'] = nil
default['graphouse']['vmoptions']['XX:MaxGCPauseMillis'] = 1000
