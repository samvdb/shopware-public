# Docker remarks

The included Dockerfile is an example of what could work.
There is no need for nginx or php fpm since we host that separatly.


# CI pipeline

We want to create a custom package and theme in `/custom`
The code will be commited in the github repository and a new Docker image will be build that includes these packages.

We do not want to use Shopware backend to change theme / plugins, they should be compiled staticly.
Therefor the CI process should not need a database.

https://developer.shopware.com/docs/guides/hosting/installation-updates/deployments/build-w-o-db.html

# Deployment

