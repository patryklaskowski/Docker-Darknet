import os
import subprocess
import sys

paths = dict()
paths['data'] = '/home/Share/licence-plate/licence-plate.data'
paths['cfg'] = '/home/Share/licence-plate/licence-plate.cfg'
paths['weights'] = '/home/Share/licence-plate/licence-plate.weights'
paths['image'] = '/home/Share/licence-plate/01.jpg'

DEFAULT = 'default'

def return_flag_value(flag, args):
    for idx, val in enumerate(args):
        if val == flag:
            if idx+1 < len(args):
                return args[idx+1]
            else:
                return False
    return DEFAULT

args = sys.argv[1:]
img_path = return_flag_value('--img', args)
paths['image'] = img_path if img_path != DEFAULT else paths['image']
print(paths['image'])

# assert os.path.isfile(paths['image']), f'** IMAGE DOES NOT EXIST ** \n{img_path}'

# script_name = 'predict.sh'
# with open(script_name, 'w') as f:
#     f.write(f'./darknet/darknet detector test {paths["data"]} {paths["cfg"]} {paths["weights"]} {paths["image"]}')
    
# subprocess.call(['sh', 'predict.sh'])
# os.remove(script_name)

# if os.path.isfile('bad.list'):
#     os.remove('bad.list')
