- name: host-configuration
  hosts: nginx
  remote_user: root
  become: true
  tasks:
   - name: install apache
     yum:
       name: apache
       state: present
   - name: start apache
     service:
       name: apache
       state: start
