# Custom Enviroments on PACE ICE

PACE doesn't have every module in the world available to use. This means that we have to provide a container that contains this informatation and give it to PACE so we can run experiments with our environment but leverage the Phoenix Cluster. This process is straightforward, but requires back-and-forth with PACE Support and **is a multi-month process**.

If you really need to create a new environment, here's the steps that you would need to follow:

1. Create a Docker image with your requirements
2. Publish this Docker to Docker Hub
3. Send an email to PACE OIT Support requesting for a new container. The email should contain the following
   1. Your Name
   2. PI's Name
   3. Link to Docker image on Docker Hub
   4. Link/upload of your Dockerfile used to create the image
   5. Legitimate reasons why you need this container and why PACE cannot natively reproduce this environment with their modules. **If this reason cannot be provided, your request will be rejected.**
   6. Ask for the container to be placed in the project storage.

PACE will create an apptainer container. Apptainer is very similar to Docker, but it retains user permissions. Apptainer can also be interchanged with singularity (that was the original name).
