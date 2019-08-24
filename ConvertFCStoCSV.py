
import FlowCytometryTools
from FlowCytometryTools import test_data_dir, test_data_file
datadir = test_data_dir
datafile = '20170317KW KW Con.fcs'
from FlowCytometryTools import FCMeasurement
sample = FCMeasurement(ID='Test Sample', datafile=datafile)
df=sample.data
df.to_csv('20170317KW JC Con.csv', index=True)