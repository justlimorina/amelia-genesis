#!/bin/bash

sudo lb clean
lb config
sudo lb build 2>&1 | tee build.log