# About this Repository
This is a continuously updated repository of Kubernetes applications packaged as helm charts and operators aggregated from leading public repositories and contributed directly to this repository.  Further information and reviews are available at [Vand.io](http://vand.io).  If you're new to Helm visit [Helm.sh/docs](http://helm.sh/docs/) to learn more.

# Getting started
Add the Vand.io repository with `helm repo add vand https://charts.vand.io`

# Add your Helm Chart
If you would like to add your Helm chart to this repository submit a Pull Request (one Pull Request per chart please) to the `helm-charts` directory.  In order to be listed your Helm chart must:

1. Have a unique name
1. Be well documented
1. Fulfill the technical requirements below in order to be listed

## Unique Name
The name of your chart must not already be taken in the repository which you can check in the [GitHub repository at vand-io/helm-charts](https://github.com/vand-io/repo/helm-charts).

## Documentation
* Please include an informative `README.md` with:
    * Brief description of the chart
    * List prerequisites and requirements
    * Instructions for customizing with options in `values.yaml` and their defaults
* Please include a short `NOTES.txt`, including:
    * Any relevant post-installation information for the chart
    * Instructions on how to access the application or service provided by the chart
    
## Technical requirements

* Images should not have any major security vulnerabilities
* Provide a secure default configuration
* All chart dependencies should also be submitted independently
* Must pass the linter ([`helm lint`](https://helm.sh/docs/helm/#helm-lint))
* Must successfully launch with default values (`helm install .`)
    * All pods go to the running state (or NOTES.txt provides further instructions if a required value is missing e.g. [minecraft](https://github.com/vand-io/repo/blob/master/helm-charts/minecraft/templates/NOTES.txt))
    * All services have at least one endpoint
* Must include source GitHub repositories for images used in the chart
* Must be up-to-date with the latest stable Helm/Kubernetes features but not leverage alpha Kubernetes features
* Should follow Kubernetes best practices
    * Include Health Checks wherever practical
    * Allow configurable [resource requests and limits](http://kubernetes.io/docs/user-guide/compute-resources/#resource-requests-and-limits-of-pod-and-container)
* Provide a method for data persistence (if applicable)
* Support application upgrades
* Allow customization of the application configuration
* Follows [best practices](https://github.com/helm/helm/tree/master/docs/chart_best_practices)
  (especially for [labels](https://github.com/helm/helm/blob/master/docs/chart_best_practices/labels.md)
  and [values](https://github.com/helm/helm/blob/master/docs/chart_best_practices/values.md))
