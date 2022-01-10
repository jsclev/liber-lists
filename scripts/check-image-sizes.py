import argparse

from os import listdir
from os.path import isfile, join
from PIL import Image


parser = argparse.ArgumentParser()
parser.add_argument('dir_path', help='The path to the directory of images.')

args = parser.parse_args()
dir_path = args.dir_path

onlyfiles = [f for f in listdir(dir_path) if isfile(join(dir_path, f))]

for filename in onlyfiles:
    if filename not in ['.DS_Store']:
        abs_filename = dir_path + '/' + filename
        image = Image.open(abs_filename)

        width, height = image.size
        ratio = height / width

        if ratio >= 1.57 or ratio < 1.558:
            print(filename + '\t' + "{:.3f}".format(ratio))
