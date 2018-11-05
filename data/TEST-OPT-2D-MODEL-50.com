from driverConstants import *
from driverOptimization import OptimizationAnalysis
import driverUtils, sys
options = {
    'analysisType':OPTIMIZATION,
    'background':None,
    'cpus':'4',
    'direct_port':'25822',
    'job':'TEST-OPT-2D-MODEL-50',
    'listener_name':'YCSHAO710',
    'listener_resource':'2456',
    'message':None,
    'messaging_mechanism':'DIRECT',
    'task':'TEST-OPT-2D-MODEL-50',
    'tmpdir':'C:\\Users\\ycshao\\AppData\\Local\\Temp',
}
analysis = OptimizationAnalysis(options)
status = analysis.run()
sys.exit(status)
