import os, sys
import argparse

DEFAULT_PATHS = {
    'cmd': 'Batches',
    'powershell': 'PowershellScripts'
}

def main(args):
    parser = argparse.ArgumentParser(description='Create a link for powershell and cmd')
    parser.add_argument('path', help='Path of program')
    parser.add_argument('name', help='Name of link')
    parser.add_argument('--cmd', action='store_false')
    parser.add_argument('--powershell', action='store_false')
    
    args = parser.parse_args()
    if not os.path.isfile(args.path):
        print('{0} is not a valid path'.format(args.path))
        return 0
    if args.cmd:
        create_cmd_link(args.path, args.name)
    if args.powershell:
        create_powershell_link(args.path, args.name)
    return 1

def create_powershell_link(path, name, folder=DEFAULT_PATHS['powershell']):
    with open(os.path.join(folder, name+'.ps1'), 'w') as file:
        file.write('&\"{0}\" $args'.format(path))

def create_cmd_link(path, name, folder=DEFAULT_PATHS['cmd']):
    with open(os.path.join(folder, name+'.bat'), 'w') as file:
        file.write('@\"{0}\" %*'.format(path))


if __name__ == '__main__':
    main(sys.argv)
