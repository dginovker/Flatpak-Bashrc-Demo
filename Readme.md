## First install

### Requirements:
- flatpak-builder
- freedesktop SDK

#### Step 1:
- Get flatpak-builder from your system's repo

#### Step 2: Get some flatpak dependencies
- `flatpak install flathub org.freedesktop.Platform//18.08 org.freedesktop.Sdk//18.08`

### Step 3: Create a local repo
- `flatpak --user remote-add --no-gpg-verify tutorial-repo repo`

## Build (& Run)

```
flatpak-builder --repo=repo --force-clean build-dir org.flatpak.Hello.json
flatpak uninstall org.flatpak.Hello/x86_64/master -y
flatpak --user install tutorial-repo org.flatpak.Hello -y

flatpak run org.flatpak.Hello
```

### Reference

https://docs.flatpak.org/de/latest/first-build.html
