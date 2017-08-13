A data discovery system for datasets, projects, and products.

## Getting Started

Create a [GitHub account](https://github.com). This will make working collaboratively much easier. [This documentation](https://desktop.github.com) will help you install GitHub. Follow the getting [started guide](https://guides.github.com/activities/hello-world/) to learn how to use GitHub. An overview of the [GitHub development flow](https://guides.github.com/introduction/flow/)

### Why GitHub?

We will be using GitHub because it is one of the best code collaboration (version control system) out there. There are many useful features that we can use under the hood.

1. We will use the GitHub Issue system to layout the work we need to do.

2. We will use GitHub Wikis to help document the system and get other collaborators up and running.

3. Automatically renders markdown. [Read more about using markdown](https://guides.github.com/features/mastering-markdown/)

## Technology Stack

This will be complex system, we will need to use several new technology in order to get it up and running.

### Node.JS

Node.JS is a runtime environment that allows us to write JavaScript on the server. It is quickly becoming a very popular universal language option.

[Follow this post to install Node on a Windows Machine](https://nodesource.com/blog/installing-nodejs-tutorial-windows/)

Node includes a package manager called NPM. We will use this to install and launch most packages we will need.

### PostgreSQL

We will use postgres as the database backend. We are using postgres because it is free and open source. It also plays nicely with PostgraphQL, a package we will use to automatically generate a GraphQL server.

Follow the instructions here to install postgres on Windows.

### GraphQL

[GraphQL](http://graphql.org) is a new alternative to traditional REST APIs. This is a very new, quickly evolving technology. We will use it because it'll get us working on the schema logic and frontend without having to worry about the data communication layer (for now).

For a great introduction to GraphQL watch [this video series](https://www.youtube.com/playlist?list=PLn2e1F9Rfr6lrHAiPTCFtw9utqDUPwkrc). The second video has a great explanation on the differences between a [REST API and a GraphQL API](https://youtu.be/T571423fC68?t=1m13s).

## DevTools

Some tools that will help get us up and running for development.

1. [Visual Studio Code](https://code.visualstudio.com)
  * great github integration
2. [pgAdmin](https://www.pgadmin.org)
  * GUI for postgres administration. Alternative to command line.
3. [PostgraphQL](https://github.com/postgraphql/postgraphql)
  * GraphQL server generator.
4. Github desktop
  * Alternative to command line tools.
5. Terminal, Powershell, etc.

## GitHub Sandbox

I'll use this portion of this file as a little playground to get you started using git and GitHub, and markdown. Below add your name and goals for this project.

1. Mitch. Data discovery and democratization tool [a la AirBnB](https://medium.com/airbnb-engineering/democratizing-data-at-airbnb-852d76c51770)

Some hints:

1. fork, clone this repo
2. make your changes on your machine
3. commit, push
4. submit pull request
