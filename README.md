# Trains in Kiwiland
A prolog solution.


visit `http://www.swi-prolog.org/Download.html` to download SWI-prolog locally.
visit `https://swish.swi-prolog.org` to run prolog online.
Note: when using the online compiler, in order for prolog to have access to the input data you will need to put the initial state (or test data) in the same file and remove the `:-include` in the first line.

![alt text](https://github.com/Ramim/trains/blob/master/1.PNG)

## Usage
main.pl (which includes a test file that is specified in the first line) needs to be compiled by prolog.
the main query (to answer q1-q10 for a given test file) is simply `main`
 
testGenerator.py is a simple python 2.7 script that makes it easy to create new tests by formatting strings into prolog predicates and placing them into a new test file
