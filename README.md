<div align="center">
	<br />
	<p>
		<a href="https://discord.js.org">
            <img src="https://docs.leaningtech.com/assets/cheerpj_logo.png" alt="cheerpj" />
        </a>
	</p>
	<br />
    <p>
        <a href="https://github.com/evantill/plantuml-cheerpj/pkgs/container/plantuml-cheerpj/?tag=latest"><img src="https://ghcr-badge.deta.dev/evantill/plantuml-cheerpj/size" alt="Docker image size" /></a>
        <a href="https://github.com/evantill/plantuml-cheerpj/pkgs/container/plantuml-cheerpj/?tag=latest"><img src="https://ghcr-badge.deta.dev/evantill/plantuml-cheerpj/tags" alt="Docker image tags" /></a>
        <a href="https://github.com/evantill/plantuml-cheerpj/pkgs/container/plantuml-cheerpj/?tag=latest"><img src="https://ghcr-badge.deta.dev/evantill/plantuml-cheerpj/latest_tag" alt="Docker image last version" /></a>
        <a href="https://github.com/evantill/plantuml-cheerpj/pkgs/container/plantuml-cheerpj/?tag=latest"><img src="https://ghcr-badge.deta.dev/evantill/plantuml-cheerpj/develop_tag" alt="Docker image develop version" /></a>
	</p>
	<p>
		<a href="https://discord.gg/sXhzexAQGh"><img src="https://img.shields.io/discord/1083727021328306236?color=5865F2&logo=discord&logoColor=white" alt="Discord server" /></a>
    </p>
</div>

# Cheerpj docker image

## Overview

[Cheerpj](https://leaningtech.com/cheerpj/) can convert a java application into a WebAssembly javascript application.

This image allow to run cheerpj locally or in a github workflow.

## Contents

1. [Preamble](#preamble)
	1. [Legend](#legend)
1. [Related artifacts](#related-artifacts)
1. [Expectations](#expectations)
1. [Using cheerpj on your computer](#using-cheerpj-on-your-computer)
	1. [Installation on your computer](#installation-on-your-computer)
	1. [Example of using cheerpj on your computer](#example-of-using-cheerpj-on-your-computer)
1. [Using cheerpj in a github workflow](#using-cheerpj-in-a-github-workflow)
	1. [Installation in your repository](#installation-in-your-repository)
	1. [Example of using cheerpj in your github workflow](#example-of-using-cheerpj-on-your-computer)

## Preamble

This documentation follow the "[don't make me think](https://github.com/Senzing/knowledge-base/blob/main/WHATIS/dont-make-me-think.md)" style.

For the most part, instructions are copy and paste.
Whenever thinking is needed, it's marked with a "thinking" icon :thinking:.
Whenever customization is needed, it's marked with a "pencil" icon :pencil2:.
If the instructions are not clear, please let us know by opening a new
[Documentation issue](https://github.com/evantill/plantuml-cheerpj/issues/new?template=documentation_request.md)
describing where we can improve.   Now on with the show...

### Legend

1. :thinking: - A "thinker" icon means that a little extra thinking may be required.
   Perhaps there are some choices to be made.
   Perhaps it's an optional step.
1. :pencil2: - A "pencil" icon means that the instructions may need modification before performing.
1. :warning: - A "warning" icon means that something tricky is happening, so pay attention.

## Related artifacts

1. [Docker Image in Github registry](https://github.com/evantill/plantuml-cheerpj/pkgs/container/plantuml-cheerpj)
1. [Cheerpj](https://leaningtech.com/download-cheerpj/)

## Expectations
 
- **Space:** This repository and demonstration require 200MiB free disk space.
- **Time:** Budget 10 minutes to get the demonstration up-and-running, depending on CPU and network speeds.
- **Background knowledge:** This repository assumes a working knowledge of:
  - [Docker](https://github.com/Senzing/knowledge-base/blob/main/WHATIS/docker.md)
  - [Cheerpj](https://docs.leaningtech.com/cheerpj/)

## Using cheerpj on your computer

### Installation on your computer

For more information on installing it on your computer,
see the [Installation Guide](INSTALL.md).

### Example of using cheerpj on your computer

> Note: We will follow the [cheerpj tutorial](https://docs.leaningtech.com/cheerpj/Tutorial).

1. Now, create a project directory. Example:

```bash
mkdir cheerpj-tutorial
cd cheerpj-tutorial
```

1. Download the jar you want to convert. Example:

	<details>
	<summary>Linux or MacOS Users</summary>

	```bash
	export JAR_URL="https://docs.oracle.com/javase/tutorialJWS/samples/uiswing/TextDemoProject/TextDemo.jar"
	export JAR_NAME="TextDemo.jar"
	wget -O "$JAR_NAME" "$JAR_URL"
	#or
	curl "$JAR_URL" --output "$JAR_NAME"
	```

	</details>

	<details>
	<summary>Windows Users</summary>

	```powershell
	$JAR_URL="https://docs.oracle.com/javase/tutorialJWS/samples/uiswing/TextDemoProject/TextDemo.jar"
	$JAR_NAME="TextDemo.jar"
	curl "$JAR_URL" --output "$JAR_NAME"
	```

	</details>

 1. Execute cheerpj

 ```bash
cheerpj TextDemo.jar
 ```

## Using cheerpj in a github workflow

### Installation in your repository

:sparkles: Good news, in this case it's already installed :sparkles:

### Example of using cheerpj in your github workflow

:construction: TODO 
