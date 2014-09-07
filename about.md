---
layout: page
title: About
permalink: /about/
---

Flags are [bitmasks](http://en.wikipedia.org/wiki/Mask_%28computing%29) used to
control accesses and permissions for every player in an Open Tibia server. They
represent abilities such as **can not attack monsters**, **has infinite
capacity** and so on. This system permits a fine grained control over every
single caracteristic and power a character may or may not have.

Flags are represented with bits in a long integer. Currently, flags range from
0 (representing 2 to the power of 0 or 1) to 46 (representing 2 to the power of
46 or 140,737,488,355,328). Since all this number crunching is time consuming, I
developed this tool to help generating flags by just checking boxes. You are
also welcome to update and fix the tool if you find something.

This project is inspired by and heavily based on
[comedinha/flags-calculator](https://github.com/comedinha/flags-calculator) and
[opentibia.net/flags.html](http://opentibia.net/page/flags.html). It is intended
to replace and improve both, by combining simplicity from the former and clear
information from the latter.

The maintainer of the application is [ranisalt](https://github.com/ranisalt),
also known as Lordfire in the Open Tibia world. The repository can be found at
[ranisalt/flags-calculator](http://github.com/ranisalt/flags-calculator) and it
is licensed under the MIT License and you are permitted to use it freely. Please
consider paying me a beer, if you like the software and feel like it.

Se você é brasileiro, visite [otserv.com.br](http://otserv.com.br)
