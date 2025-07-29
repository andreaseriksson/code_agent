defmodule Mix.Tasks.CodeAgent.Gen.Claude do
  use Mix.Task

  @shortdoc "Generate Claude agent configuration"

  def run(_args) do
    CodeAgent.Generator.copy_files("claude")
  end
end
