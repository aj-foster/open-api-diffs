#
# Install
#

case System.argv() do
  ["path:" <> path] ->
    Mix.install([
      {:oapi_generator, path: path}
    ])

  [ref] ->
    Mix.install([
      {:oapi_generator, github: "aj-foster/open-api-generator", ref: ref}
    ])

  _else ->
    raise "Invalid invocation: please pass the ref of aj-foster/open-api-generator to install"
end

#
# Configuration
#

require Config

Path.join(__DIR__, "specs/config.exs")
|> Config.Reader.read!()
|> Application.put_all_env()

#
# Generate
#

require Logger

spec_files = Path.join(__DIR__, "specs/*.{json,yaml,yml}")

for spec_file <- Path.wildcard(spec_files) do
  Task.async(fn ->
    spec_name = Path.basename(spec_file) |> Path.rootname()
    output_directory = Path.join(__DIR__, "output/#{spec_name}")

    if File.dir?(output_directory) do
      Logger.info("Skipping #{spec_name}")
    else
      File.mkdir_p!(output_directory)
      OpenAPI.run(spec_name, [spec_file])
    end
  end)
end
|> Task.await_many(:infinity)
