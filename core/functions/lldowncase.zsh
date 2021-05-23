#!/bin/zsh

function lldowncase() {
  echo ${1:=no_value} | tr '[:upper:]' '[:lower:]'
}