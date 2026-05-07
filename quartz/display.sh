#!/bin/bash
npx quartz build
git add .
git commit -m "Update vault"
git push origin main