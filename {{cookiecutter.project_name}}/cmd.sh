#!/usr/bin/env bash

function main() {
    case $1 in
    "gen")
        protoc {{cookiecutter.module_name}}/{{cookiecutter.module_name}}pb/{{cookiecutter.module_name}}.proto --go_out=plugins=grpc:.
        ;;
    *)
        echo "Invalid arguments"
        ;;
    esac
}

main "$@"
