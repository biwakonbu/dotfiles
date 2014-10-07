#!/usr/bin/env python

from subprocess import Popen, PIPE
import sys

for arg in sys.argv[1:]:
    if arg.endswith(".scss"):
        file = arg

p1  = Popen(["scss", "--compass", "--trace" "--check", file], stdin=PIPE, stdout=PIPE, stderr=PIPE)

stdout, stderr = p1.communicate()
print stderr.split("\n")[0]
p2 = Popen(["scss-lint", file], stdin=PIPE, stdout=PIPE, stderr=PIPE)

stdout, stderr = p2.communicate()
print stdout.replace(" - ", ": ")
