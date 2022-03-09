#!/usr/bin/env python
import sys
# import distutils.core
from logging import getLogger
from jinja2 import Template

# setup = distutils.core.run_setup("setup.py")


# def prefix(L, pre):
#     return pre + ("\n" + pre).join(L) + "\n"


d = {
    "history": "".join(open("history.txt").readlines()),
    # "version": setup.get_version(),
    # "package": setup.get_name(),
    # "url": setup.get_url(),
    # "requires": prefix(setup.install_requires, "* "),
}


t = Template(sys.stdin.read())
print(t.render(**d))
