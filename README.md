Red Hat Process Automation Manager / Decision Manager Workshop Module 1
===
This is `module 1` of a full-day hands-on Red Hat Process Automation Manager and Red Hat Decision Manager workshop. It provides developers and/or business analysts an introduction to Rules- and Process Driven applications and microservices in the context of modern, cloud-native, architectures.

Agenda
===
* Use Case Overview
* Overview of RHPAM Components and Architecture
* Accessing PAM Workbench, Business Central
* Security configuration of Business Central

If you want to just see what the rendered instructions look like, clone this repo and execute this docker command:

[source, sh]
----
git clone https://github.com/kmacedovarela/rhpam-rhdm-workshop-v2m1-guides.git
cd rhpam-rhdm-workshop-v2m1-guides
docker run -it --rm -p 8080:8080 -v $(pwd)/docs:/app-data -e CONTENT_URL_PREFIX="file:///app-data" -e WORKSHOPS_URLS="file:///app-data/_workshop.yml" -e LOG_TO_STDOUT=true quay.io/osevg/workshopper
----

Then go to `localhost:8080` in your browser. Note that the URLs above are "fake" (except for `CONTENT_URL_PREFIX` and `WORKSHOP_URLS`). If you actually try to follow the instructions you'll need to replace the above values manually (either in the command above, or when running through the labs).

