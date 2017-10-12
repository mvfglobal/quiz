#!/usr/bin/env bash
eval $(aws ecr get-login | sed -e 's/-e none//g')
