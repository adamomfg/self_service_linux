#!/usr/bin/python

import os
import sys
import time

proc_to_create = int(sys.argv[1])
delay_to_quit = int(sys.argv[2])

for i in xrange(proc_to_create):
  try:
    if os.fork():
      # Parent process
      pass
    else:
      os.execl('/bin/ls', '/tmp')
  except EnvironmentError, e:
    print e

time.sleep(delay_to_quit)
