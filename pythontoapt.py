#!/usr/bin/python3

from sys import argv
import subprocess

installList = str()
with open(argv[1], "r") as file:
    for i in file.readlines():
        installList += "python3-{} ".format(i[:-2])
    subprocess.call(["sudo", "apt-get", "install", "-y",
                     "-m", installList])
