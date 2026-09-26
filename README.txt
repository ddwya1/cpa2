CLIProxyAPI for blitz.cloud

1. Edit config.yaml and replace:
   REPLACE_WITH_YOUR_OWN_LONG_RANDOM_API_KEY
   with your own strong API key.

2. Put this folder in a public GitHub repository.

3. In blitz.cloud choose:
   My own code -> your GitHub repository

4. Deploy the app and use TCP port 8317.

5. The Dockerfile copies config.yaml to /CLIProxyAPI/config.yaml and switches to UID/GID 1000 for blitz.cloud's non-root requirement.

6. The auth directory is /CLIProxyAPI/auths. Configure persistent storage for this directory if blitz.cloud exposes the option.
