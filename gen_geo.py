#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import json

f = open('data/geo.json', 'r')
source = f.read()

data = json.loads(source)

tb_name = 'ANT_GEO_CHINA'

for item in data:
    #print(item)
    sql = "insert into "+tb_name+"(code,name,parent,delete_flag) values('"+str(item['id'])+"','"+item['name']+"','"+item['pvalue']+"','0');"
    print(sql)