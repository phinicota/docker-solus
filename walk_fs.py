#!/usr/bin/env python
import subprocess
import os
import sys

if len(sys.argv) < 2:
    print 'usage: {} <output_dir>'.format(__file__)
    sys.exit(1)

output_dir = sys.argv[1]

IMAGE_NAME = 'main-x86_64.img'

def copy_file(src_path, dest_path):
    subprocess.check_call(['e2cp', '-pv', src_path, dest_path])

def create_dir(dirr):
    try:
        subprocess.check_call(['mkdir', '-pv', dirr])
    except subprocess.CalledProcessError:
        pass

def discoverfs(path):
    outstr = ''
    if not path.endswith('/'):
        path+= '/'
    try:
        outstr = subprocess.check_output(['e2rm', '-v', '{}:{}*'.format(IMAGE_NAME, path)])
    except subprocess.CalledProcessError as e:
        pass
    dirs = []
    files = []
    for line in outstr.splitlines():
        if 'is a directory!' in line:
            dirpath = os.path.join(path, line.split(':')[1].split(' ')[0])
            dirs.append(dirpath)

            temp_dirs, temp_files = discoverfs(dirpath)
            dirs += temp_dirs
            files += temp_files

        elif line.startswith('Removed'):
            filepath = os.path.join(path, line.split(':')[1])
            files.append(filepath)
    return dirs, files

directories, files = discoverfs('/')

create_dir(output_dir)
for dirr in directories:
    dest_dir = output_dir + dirr
    create_dir(dest_dir)

backup_image = IMAGE_NAME + '2'
for filee in files:
    src_path = '{}:{}'.format(backup_image, filee)
    dest_path ='{}/{}'.format(output_dir, filee)
    copy_file(src_path)
