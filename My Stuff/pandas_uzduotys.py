import pandas as pd
import numpy as np


info = ["Austria"	, "German", "8.4 million"	,"Vienna"	,"euro (EUR)"	,"+43", ".at",
"Belgium", "Dutch (north) French (south) German"	,"11 million"	,"Brussels"	,"euro (EUR)", "+32",".be",
"Bulgaria", "Bulgarian"	,"7 million"	,"Sofia"	,"Bulgarian lev (BGN)"	,"+359"	,".bg",
"Croatia", "Croatian",	"4.3 million",	"Zagreb"	,"Croatian kuna (HRK)"	,"+385"	,".hr",
"Cyprus", "Greek Turkish"	,"800 000"	,"Nicosia"	,"euro (EUR)"	,"+357"	,".cy"]

to_array = np.array(info).reshape(5,7)

to_data_frame = pd.DataFrame(to_array,[0,1,2,3,4],["Staat", "Official languages", "Population", "Capital" , "Currency", "Phone", "Int."])

print(to_data_frame)