#!/usr/bin/env python

from sys import argv
import socket
from time import time, sleep
import RPi.GPIO as GPIO

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

debug = "--debug" in argv

GPIO.setmode(GPIO.BCM)
GPIO.setup(15, GPIO.IN, GPIO.PUD_DOWN)

def makecallback(hello):
  def got(*args, **kwargs):
    #print "got", args, kwargs
    now = time()
    last = hello["last"]
    if now - last > 0.01:
      if debug:
        print "bang", now - last
      sock.sendto("bang;\n", ("127.0.0.1", 42242))
    #else:
    #  print "skipped"
    hello["last"] = now
  return got

GPIO.add_event_detect(15, GPIO.RISING)
GPIO.add_event_callback(15, makecallback({"last": time()}))

while 1:
  sleep(0.1)
