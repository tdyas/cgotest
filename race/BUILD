go_package()

go_binary(name="racy", race=True)
go_binary(name="racy_docker", race=True, environment="docker")

shell_source(name="racy_test_src", source="test.sh")
experimental_test_shell_command(
  name="racy_test",
  tools=["grep"],
  execution_dependencies=[":racy", ":racy_test_src"],
  workdir="race",
  command="./test.sh",
)
