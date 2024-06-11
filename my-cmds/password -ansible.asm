---
- hosts: localhost
  become: true
  gather_facts: no
  vars:
   newpass: W3l$pun@&1   
  
  tasks:
  - name: Update Root user's Password
    user:
      name: root
      update_password: always
      password: "{{ newpass | password_hash('sha512') }}"