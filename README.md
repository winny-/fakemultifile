# Use preprocessing to "modular-ize" a single-file language

This is a simple demonstration to show the potentional of using cpp(1)
([see infopages](https://gcc.gnu.org/onlinedocs/cpp/)), the C
preprocessor, to split a single file input into multiple files.

This is necessary because the language used in this project does not
support includes or modules.

It is true this is not true "modular-ization", and is simply
preprocessing. Still it's better than having no facility to split up
long files.

## How to use this?

The key takeaway is by simply adding another step to compilation, we
can add multi-file support. The Makefile is written in [GNU
Make](https://www.gnu.org/software/make/). Run `make run` to run the
program. Run `make` to compile it.

## What is the language?

This is UWM cool, used for
[teaching](http://pabst.cs.uwm.edu/classes/cs654/)
[compilers](http://pabst.cs.uwm.edu/classes/cs655/). It is a subset of
Scala. Because it needs to be simple, it does not include a module
system or include mechanism.

## License of this example

[Unlicense](LICENSE).
