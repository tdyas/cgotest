go_package()

go_binary(name="racy", race=True)
shell_source(name="racy_test_src", source="test.sh")
experimental_test_shell_command(
  name="racy_test",
  tools=["grep"],
  dependencies=[":racy", ":racy_test_src"],
  command="./test.sh",
)
