# Folding at Home Helm Charts

Providing spare capacity of PMK clusters at Platform9 and at customer sites for Folding@Home, a project that focuses on finding cure on Covid-19 & other diseases through distributed computational drug design.

# How to Deploy

- Helm Repo URL : https://platform9.github.io/helm-charts
- Add this repo to the repositories via Pf9 UI
- Select folding-at-home app and click "Deploy"


# fah_info script

This script gathers the data about current running instance of FAH work and displays information about it.

How to run :

- On master node, execute the script with user credentials

example:

sh fah_info.sh <user_name> <passkey>
