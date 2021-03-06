defmodule ElixirScript.Translator.List.Test do
  use ShouldI
  import ElixirScript.TestHelper

  should "translate list" do
    ex_ast = quote do: [1, 2, 3]
    js_code = "[1, 2, 3]"

    assert_translation(ex_ast, js_code)

    ex_ast = quote do: ["a", "b", "c"]
    js_code = "['a', 'b', 'c']"

    assert_translation(ex_ast, js_code)

    ex_ast = quote do: [:a, :b, :c]
    js_code = "[Atom('a'), Atom('b'), Atom('c')]" 
    
    assert_translation(ex_ast, js_code)

    ex_ast = quote do: [:a, 2, "c"]
    js_code = "[Atom('a'), 2, 'c']"

    assert_translation(ex_ast, js_code)
  end
end