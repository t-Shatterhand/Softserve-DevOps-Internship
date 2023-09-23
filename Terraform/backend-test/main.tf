resource "local_file" "test" {
    filename             = "${path.module}/files/test"
    file_permission      = 0777
    directory_permission = 0777
    content = "Hello dolly"
}
