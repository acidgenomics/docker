# """
# Install RHEL (minimal).
# Updated 2020-08-06.
#
# List of images:
# > docker search registry.access.redhat.com/ubi
#
# See also:
# - https://developers.redhat.com/products/rhel/ubi
# - https://developers.redhat.com/blog/2020/03/24/
#       red-hat-universal-base-images-for-docker-users/
# - https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/
#       html/building_running_and_managing_containers/
#       using_red_hat_universal_base_images_standard_minimal_and_runtimes
# - https://access.redhat.com/articles/4238681
# - https://access.redhat.com/documentation/en-us/red_hat_software_collections/
#       3/html-single/using_red_hat_software_collections_container_images/index
# - https://access.redhat.com/discussions/4171061
# - https://www.redhat.com/en/blog/introducing-red-hat-universal-base-image
# """

FROM registry.access.redhat.com/ubi8/ubi
MAINTAINER mike@steinbaugh.com

# Note that zsh isn't supported without additional configuration.
# > dnf repolist

RUN dnf -y install bash bc curl git sudo

WORKDIR /tmp
ADD install.sh .
RUN ./install.sh
WORKDIR /

CMD ["bash", "-il"]
