---
- name: Build the docker image 
  hosts: all
  become: yes

  tasks:
    - name: upload the site directory to the docker host
      synchronize: src=site dest=/tmp


    - name: build the image
      docker_image: >
        name=ansible-docker
        tag=01
        path=/tmp/site
        state=present


    - name: Run COntainer
      docker:
        name: site1
        image: "ansible-docker:01"
        state: reloaded
        publish_all_ports: yes



