#!/bin/zsh

function llupcase() {
  echo "${1:=no_value}" | tr '[:lower:]' '[:upper:]'
}