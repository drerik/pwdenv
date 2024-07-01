# pwdenv

A simple command to load shell variables based on where you are in your current directory.

## Installation

Copy 'pwdenv.sh' to your local computer and source it in your `~/bashrc` etc.
Make shure you have `EDITOR` defined in your shell environment.

## Usage

When you are in a directory, run the command `pwdenv`. If there is no environment file present, a editor window wil open up so that you can define environment variables etc. to be sourced.

You can list out definition files for the current directory with `pwdenv-show` and `pwdenv-edit` will open the editor so that you can modify the environment file.
