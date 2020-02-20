#!/usr/local/bin/python

import csv
import sys
import os
import subprocess

num_colors=5
color=0

def read_csv(fn):
    with open(fn) as f:
        data=[tuple(line) for line in csv.reader(f)]
    return data

def run_all(cmds):
    global num_colors
    global color
    for x in cmds:
      if color == num_colors-1:
         color = 0
      else:
        color = color + 1
      i = str(x[0])
      c = str(x[1])
      str_color = str(color)
      path = os.getcwd() + "/common/run_cmd.sh"
      subprocess.call([path, i, c, str_color])



def main():
  cmds = read_csv(sys.argv[1])
  cmds = cmds[1:]
  run_all(cmds)

if __name__== "__main__":
  main()
