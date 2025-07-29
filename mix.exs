defmodule CodeAgent.MixProject do
  use Mix.Project

  def project do
    [
      app: :code_agent,
      version: "0.1.1",
      elixir: "~> 1.18",
      description: "Mix tasks for generating AI agent configurations",
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end

  defp package do
    [
      maintainers: ["Your Name"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/yourusername/code_agent"},
      files: ["lib", "priv", "mix.exs", "README.md", "LICENSE"]
    ]
  end
end
