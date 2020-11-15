ansible all -m debug -a "msg='My name is {{ foreman_params.OWNER }}'"  -u tesla --ask-pass
 foreman.homelab.io | SUCCESS => {
    "msg": "My name is GOKAY"
}

ansible all -m debug -a "msg={{ foreman_facts.ipaddress }}"


ansible all -m debug -a "msg={{ hostvars[inventory_hostname].foreman.certname }}"


ansible foreman_hostgroup_svc -m shell -a "/usr/sbin/ip a s" -u tesla --ask-pass
