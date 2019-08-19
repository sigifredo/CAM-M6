#!/usr/bin/python3
# -*- coding: utf-8 -*-

__author__ = "Sigifredo Escobar Gómez"
__email__ = "sigifredo89@gmail.com"
__license__ = "MIT Licence"

dX = 0.0
dY = 0.0

m = []

for i in range(len(m)):
    for j in range(0, len(m[0]), 2):
        m[i][j] += dX

    for j in range(1, len(m[0]), 2):
        m[i][j] += dY

    dX = m[i][4];
    dY = m[i][5];

for i in m:
    for j in i:
        print(", %f" % j, end='')
    print("");
