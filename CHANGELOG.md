# v0.6.0-dev

# v0.5.0
  * Enhancements
    * For statements now work with pattern matching tuples
    * Improved function chaining
    * added `from` clause to `import`, `alias`, and `require` so that the import path can be overridden
    * `alias` now acts like `require` in that it is translated into an import default statement
    * modules now export a default object with def functions added as properties on it. 
    * for function closures, now calling by using `.call(this)` so that `this` is available inside of it

# v0.4.0
  * Enhancements
    * bitstrings
    * Better Pattern Matching (Does not support bitstrings yet)
    * Capture Operator
    * Fixed multi arity implementation
    * Updated variable implementation to match Elixir's (i.e. Reusing the same variable name creates a new one in the background)
    * Throwing ParseError for SpecialForms currently not supported
    * Added more functions from the list standard library

# v0.3.0
  * Enhancements
    * function and case guards
    * function and case pattern matching
    * Can now use ^ on a variable during assignment

# v0.2.1
  * Enhancements
    * Renamed project to ElixirScript
    * Reduced escript file size

# v0.2.0
  * Enhancements
    * Pipe operator
    * String interpolation
    * Adding more functions to the Kernel module
    * Now checking to see if a function is a Kernel function and prepending Kernel to it
    * Now turning Atoms into an Atom javascript object instead of a Symbol
    * Now turning tuples into a Tuple javascript object
    * Fully implemented Tuple module
    * Fully implemented Atom module
    * Fully implemented Range module
    * Can now call properties and zero parameter functions correctly
    * case, cond, and if are now turned into if statements wrapped in function closures
    * Anonymous functions are now turned into anonymous functions in javascript insteed of arrow functions

# v0.1.0

* Enhancements
  * From standard library implemented:
      * Enum.map
      * Kernel.tl
      * Kernel.hd
      * Logger

  * Implemented language features:
      * All primatives except bitstrings
      * defmodule
      * import, alias, and require
      * case, cond, if
      * def, defp
      * defstruct, defexception
      * raise
      * multiple arity functions
      * basic binary operations
      * for without into

  * Missing features:
      * bitstrings
      * pattern matching
      * macros
      * actors
      * try
      * regular expressions
      * string interpolation
      * Most of standard library