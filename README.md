# kitchen-itamae_playground

## setup

clone this repo.

```
$ bundle install --binstubs
```


```
$ ./bin/kitchen converge
-----> Starting Kitchen (v1.3.1)
-----> Converging <default-ubuntu-1204>...
       Preparing files for transfer
-----> Chef Omnibus installation detected (install only if missing)
       Transferring files to <default-ubuntu-1204>
        INFO : Starting Itamae...
        INFO : Loading node data from /tmp/kitchen/nodes/node.json...
        INFO : Recipe: /tmp/kitchen/recipes/package1.rb
        INFO :    package[dstat]
        INFO :       action: install
        INFO :          installed will change from 'false' to 'true'
        INFO : Starting Itamae...
        INFO : Loading node data from /tmp/kitchen/nodes/node.json...
        INFO : Recipe: /tmp/kitchen/recipes/package2.rb
        INFO :    package[tmux]
        INFO :       action: install
        INFO :          installed will change from 'false' to 'true'
       Finished converging <default-ubuntu-1204> (1m59.46s).
-----> Kitchen is finished. (1m59.70s)
```

See .kitchen.yml for more usage.
