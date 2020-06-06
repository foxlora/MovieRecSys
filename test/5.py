# -*- coding: utf-8 -*-
'''

'''
__author__ = 'Foxlora'
__time__ = '2020/5/20 0:46'

import pandas as pd

a = [('4226', 4.54880711094704), ('858', 4.496194040183821), ('2571', 4.458306767619721), ('2324', 4.421411987426645)]

b = pd.DataFrame(a)

b.columns=['first','second']

c = b.loc[b['first']=='858','second'].tolist()[0]
print(c)