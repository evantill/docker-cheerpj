# Installation on your computer

> :warning: For windows users, we will use [PowerShell](https://learn.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7.3). If there is something different we will add a :thinking: Note.

## Check requirements

Before we move forward, let's check wa have installed the required tools:

```bash
docker --version
wget --version | head -1
#or curl
curl --version
```

	> :thinking: Note: select `wget` or `curl` to download files.

## Install the docker image

```bash
docker pull ghcr.io/evantill/plantuml-cheerpj:latest
docker tag ghcr.io/evantill/plantuml-cheerpj:latest cheerpj:installed
docker run --rm -it cheerpj:installed
```

you should see the usage message:

```test
Usage: /opt/cheerpj/cheerpjfy.py file.jar [--deps file1.jar[:files.jar]]
```

:tada: Congratulation, you have installed cheerpj !

You can run it using the `docker run` command but il will be easier to wrap the command in a script _(see below)_.

To run it directly using docker command on a `TextDemo.jar` jar file:

<details>
<summary>Linux and MacOS users</summary>

```bash
docker run -i --rm -v $(pwd):/app cheerpj:installed TextDemo.jar
```

</details>

<details>
<summary>Windows users</summary>

```powershell
docker run -i --rm -v ${PWD}:/app cheerpj:installed TextDemo.jar
```

</details>

## Create a script to simplify the usage

Now create a script to make it easier to use.

<details>
<summary>Bash users</summary>

> :warning: Note: Installation in your system path is out of scope in this document.

Create the script and an alias.

```bash
cat <<-"EOF" > cheerpj.sh
#!/usr/bin/env bash

docker run --interactive --rm \
	-v $(pwd):/app \
	cheerpj:installed \
	"$@"
EOF

chmod +x cheerpj.sh

alias cheerpj="./cheerpj.sh"
```

</details>

<details>
<summary>Powershell users</summary>

> :warning: Note: Installation in your system path is out of scope in this document.

Create the script
	
```powershell
echo '
	docker run --interactive --rm -v ${PWD}:/app cheerpj:installed $args
' > cheerpj.ps1
```

</details>

<details>
<summary>Fish users</summary>

```fish
echo '
function cheerpj --description "run cheerpj"
	docker run --interactive --rm \
		-v $(pwd):/app \
		cheerpj:installed \
		"$argv"
end
' | string trim > ~/.config/fish/functions/cheerpj.fish
```

</details>

### :sparkles: Use it :sparkles:

Now you can use `cheerpj` like if it was installed locally

To run it on a `TextDemo.jar` jar file:

```bash
cheerpj TextDemo.jar
```

:warning: The command must be run in the same directory as the jar to process.

___

_If the instructions are not clear, please let us know by opening a new
[Documentation issue](https://github.com/evantill/plantuml-cheerpj/issues/new?template=documentation_request.md)._
