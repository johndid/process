This is the projects readme file.

There's a reason why it's called readme. Because you're supposed to read it! This file contain usefull information. Like: Project plans, processes, release changes etc. In the end it is used to generate lot's of ducumentation.

Open items
The best way to get about it is to create greppable list of items like the one below. Just add and remove fields as needed. But make sure that the formatting is kept. This is because the TODO's below are fed to a script that uses them to calculate a project schedule report, containing the time that must be allocated for this project. The format for a TODO entry in the list must follow this syntax

todo := TODO: + <whitespace> + <entry> + <dash> + <time>
time := n + (h|d|w|m|y)
n := decimal number indicating the time
h := hour(s)
d := day(s)
w := week(s)
m := month(s)
y := year(s)
dash := -
whitespace := 'a whitespace character' 0x20 in hex and represented here between " ", omnit the " when writing the character
entry:= Textual explanation of the task, that is estimated with <time>. This is an ASCII string that cannot be longer 80 characters. As it must be used in the generated report. Becides more that 80 characters in this place is not a good explanation.

Here are the open items for this project at writing:

TODO: Write specification - 4d
TODO: Specify review process - 1d
TODO: Create test process - 2w
TODO: Create report of the project progress -  1d
TODO: Test and write calc.sh shript - 4h

Programming rules:
This section contain rules for programmin on this project. This is coding standards and general rules for creating files and scripts.

scripting:
Every bash script must contain a cat << USAGE section. This is the easiest way to define usage for scripts in bash. As the contruct enables you to write several lines in a bash script. The name USAGE must be used as this will make all the scripts greppable, sed able and thereby the script usage may be extracted from the scripts in a uniform way, and added to generated documentation later.

Example of cat << USAGE

cat << USAGE
This is an example of usage
you can include shell variables
here like $PATH and $0. You
can even call programs like
$(basename $0) as lon as you keep
the bash style. finally the
example ends with
USAGE

This will allow you to extract everything with sed, and use it in another document. See man sed for details.

eof
