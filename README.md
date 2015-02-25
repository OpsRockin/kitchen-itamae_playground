# kitchen-itamae_playground

A example of [kitchen-itamae](https://github.com/OpsRockin/kitchen-itamae).

## setup

clone this repo.

```
$ bundle install --binstubs
```

### Run Itamae

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

### Run Itamae and Serverspec

```
$ ./bin/kitchen test
-----> Starting Kitchen (v1.3.1)

...

-----> Converging <default-ubuntu-1204>...
       Preparing files for transfer

...

       Transferring files to <default-ubuntu-1204>
        INFO : Starting Itamae...
        INFO : Loading node data via ohai...
        INFO : Loading node data from /tmp/kitchen/nodes/node.json...
        INFO : Recipe: /tmp/kitchen/recipes/package1.rb
        INFO :    package[dstat]
        INFO :       action: install
        INFO :          installed will change from 'false' to 'true'
        INFO : Starting Itamae...
        INFO : Loading node data via ohai...
        INFO : Loading node data from /tmp/kitchen/nodes/node.json...
        INFO : Recipe: /tmp/kitchen/recipes/package2.rb
        INFO :    package[tmux]
        INFO :       action: install
        INFO :          installed will change from 'false' to 'true'
       Finished converging <default-ubuntu-1204> (0m50.21s).

...

-----> Setting up Busser

...


       Install depends packages
         Package "dstat"
           should be installed
         Package "tmux"
           should be installed

       Finished in 0.10444 seconds (files took 0.26884 seconds to load)
       2 examples, 0 failures

       Finished verifying <default-ubuntu-1204> (0m13.82s).
...
```

See .kitchen.yml for more usage.
