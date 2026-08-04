#!/bin/bash

sudo lb clean
sudo lb config
sudo lb build 2>&1 | tee build.log