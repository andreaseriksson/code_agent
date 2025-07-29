defmodule Mix.Tasks.CodeAgent.Gen.Cursor do
  use Mix.Task

  @shortdoc "Generate Cursor agent configuration"

  def run(_args) do
    CodeAgent.Generator.copy_files("cursor")
  end
end
