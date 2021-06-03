Bash code compendia
===================

Directory organization
----------------------

- `all`: Platform independent library codes which can be used on **all** platforms running Bash.

  Almost all codes are in pure Bash without any external dependencies or, with well-known and versatile dependencies
  (e.g. `curl`).  The directory is organized in a similar way to the classification followed in the standard libraries
  of programming languages.

- `any`: Distribution independent codes which can be used on **any** of the UNIXes (i.e. Linux, OS X)

  The directory is generally organized into application subdirectories.  Many of these applications are common
  applications that are easily accessible on every platform.

- `debian`: Codes which can only be used on Debian or derivaties (e.g. Ubuntu)

  The directory is generally organized into application subdirectories.  Codes in this category mostly deal with the
  provisioning (i.e. installation and configuration) of the relevant application.
