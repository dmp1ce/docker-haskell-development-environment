Docker Haskell Development Environment
======================================

My attempt at putting together a simple Haskell development envirnment.  The goal was to be able to install all build dependencies in a container, compile the application in the container and then run the application from the host (or container).  More importantly, the source code can be managed by the host, while the entire development environment runs in the container.

This example is intended to be used by running the bash scripts in the following order.

- `build_environment.sh` - Builds the Haskell development environment
- `build_dependencies.sh` - Builds the Haskell project dependencies.  Should be run everytime the projects dependencies change.
- `build_then_run.sh` - Builds the project and runs the application.  Should be run everytime the Haskell code changes in the application.

`start_environment.sh` can be used to explore the Haskell development environment through bash.
`fix_owners.sh` can be used to correct and permission issues that might occur due to docker not creating files with the right owners.  This can happen if the `build_envirnment.sh` script doesn't work as expected.
