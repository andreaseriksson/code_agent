defmodule Mix.Tasks.CodeAgent.Gen.Windsurf do
  use Mix.Task

  @shortdoc "Generate Windsurf agent configuration"

  def run(_args) do
    CodeAgent.Generator.copy_files("windsurf")
  end
end
