# TSC Githooks
This pre-push githook script does two things: 
1. Compiles TS for your frontend and backend code, and checks for errors.
2. Warns you if you're pushing to master

This also comes with a makefile to give execution privileges to the pre-push script.

## How to use
1. Download these files. Place both the `.githooks` and `Makefile` in your project root
2. Customize the `.githooks/pre-push` script to fit your needs. For instance, make sure you
have chosen the right name of the backend directory (the default is `functions`), or comment out sections altogether.
3. Run `$ make githooks`

## Notes
Note this checks the entire current working tree, which could cause:
- False positives: if you're only pushing changes to a subset of files, 
but uncommited files have warnings.
- False negatives: if you fix errors, but haven't committed the changes.