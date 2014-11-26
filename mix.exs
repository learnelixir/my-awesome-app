defmodule MyAwesomeApp.Mixfile do
  use Mix.Project

  def project do
    [ app: :my_awesome_app,
      version: "0.0.1",
      elixir: "~> 1.0.2",
      elixirc_paths: ["lib", "web"],
      compilers: [:phoenix] ++ Mix.compilers,
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [
      mod: { MyAwesomeApp, [] },
      applications: [:phoenix, :cowboy, :logger]
    ]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:phoenix, "0.6.0"},
      {:exrm, "~> 0.14.11"},
      {:ranch, "~> 1.0.0"}
    ]
  end
end
