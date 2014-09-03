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
0 (representing 2⁰ or 1) to 46 (representing 2⁴⁶ or 140,737,488,355,328),
skipping the 39th and 45th bit. Since all this number crunching is time
consuming, I developed this tool to help generating flags by just checking
boxes. You are also welcome to update and fix the tool if you find something.
