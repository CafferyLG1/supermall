# -*- coding: utf-8 -*-
"""
--------------------------------------------
    File Name:    draw4_vertical_ke_versimple
    Description:
    Author:       ligang
    date:         2022/12/2 15:14
---------------------------------------------
    Change Activity: 2022/12/2 15:14 edited by ligang
"""

#%%
import datetime
import pandas as pd
import time
import os
import xarray as xr
import numpy as np
import matplotlib.pyplot as plt
from cartopy.mpl.ticker import LongitudeFormatter, LatitudeFormatter
import cartopy.crs as ccrs
import cartopy.feature as cfeature
import scipy.io as sio
from function_base import draw_track1_bwp152014
from function_base import extract_gridinfo, extract_area_info
from function_base import getDistance
from matplotlib.dates import DateFormatter
import math
from scipy.interpolate import griddata
from scipy import interpolate
from mpl_toolkits.mplot3d import axes3d
from matplotlib.pyplot import MultipleLocator

#%%
np.load
