# Builder

The builder is primarily a git server that responds to git pushes by executing
either the [`git-receive-pack`][0] or [`git-upload-pack`][1] hook. After it
executes one of those hooks, it takes the following high level steps in orde

1. Calls git archive to produce a tarball (i.e. a .tar.gz file) on the local
   file system.
2. Saves the tarball to centralized object storage.
3. Starts a new Kubernetes Pod to build the code, according to the following
rules:
    - If a Dockerfile is present in the codebase, starts a dockerbuilder pod,
      configured to download the code to build from the URL computed in the
      previous step.


## Flow

```
git push paastel main --> builder --> git receive -> git archieve -> git hook
```

[0]: https://git-scm.com/docs/git-receive-pack
[1]: https://git-scm.com/docs/git-upload-pack
