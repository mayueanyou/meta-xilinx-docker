# meta-xilinx-docker

This is the meta layer for docker I manually created for Yocto project. Please refer to https://xilinx-wiki.atlassian.net/wiki/spaces/A/pages/84508673/Docker+Containers+and+Kubernetes+Orchestration+on+Zynq+UltraScale#DockerContainersandKubernetesOrchestrationonZynqUltraScale%2B-Meta-xilinx-dockerLayer

To use it in Petalinux project, please put this repo inside <proj_root>/project-spec/ and follow the steps by https://docs.xilinx.com/r/en-US/ug1144-petalinux-tools-reference-guide/Adding-Layers

The User lays you need to add is ${PROOT}/project-spec/meta-xilinx-docker
