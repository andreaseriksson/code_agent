defmodule CodeAgent.Generator do
  def copy_files(agent_name) do
    source_dir = Path.join([:code.priv_dir(:code_agent), agent_name])
    target_dir = ".#{agent_name}"

    Mix.shell().info("Looking for templates in: #{source_dir}")

    if File.exists?(source_dir) do
      File.mkdir_p!(target_dir)
      copy_recursive(source_dir, target_dir)
      Mix.shell().info("Generated #{agent_name} configuration in #{target_dir}/")
    else
      Mix.shell().error("No templates found for #{agent_name}")
    end
  end

  defp copy_recursive(source, target) do
    source
    |> File.ls!()
    |> Enum.each(fn item ->
      source_path = Path.join(source, item)
      target_path = Path.join(target, item)

      if File.dir?(source_path) do
        File.mkdir_p!(target_path)
        copy_recursive(source_path, target_path)
      else
        File.copy!(source_path, target_path)
      end
    end)
  end
end
