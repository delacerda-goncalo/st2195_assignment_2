#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Nov 28 21:20:34 2021

@author: goncalodelacerda
"""

import pandas as pd

df = pd.read_html("https://en.wikipedia.org/wiki/Comma-separated_values")
df = df[1]

df.to_csv("output_python")