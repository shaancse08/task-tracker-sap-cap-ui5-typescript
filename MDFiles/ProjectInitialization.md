### Project Set-Up and Initialization

To start the CAPM project we have used below CDS in-built command

```sh
cds init sap-ui5-cap-typescript
```

Once the project initialized the below project structure will be created.

| File or Folder | Purpose                              |
| -------------- | ------------------------------------ |
| `app/`         | content for UI frontends goes here   |
| `db/`          | your domain models and data go here  |
| `srv/`         | your service models and code go here |
| `package.json` | project metadata and configuration   |
| `readme.md`    | this getting started guide           |

Once project initialization is done we have used the

```sh
tsc init
```

command to generate [tsconfig.json](../tsconfig.json) file. And in the file we have added some of the configuration, which are listed below.

| Command                                  | Purpose                                                 |
| ---------------------------------------- | ------------------------------------------------------- |
| "target": "es2016"                       | Will use JavaScript ES6 Systex here                     |
| "module": "commonjs"                     | Specify what module code will be generated              |
| "baseUrl": "./"                          | Specify the Base URL of teh code                        |
| "outDir": "./gen/srv/srv"                | Where or which folder JavaScript Code will be generated |
| "esModuleInterop": true                  |
| "forceConsistentCasingInFileNames": true |
| "strict": true                           |
| "skipLibCheck": true                     |

Sometimes we get some error like `TS6231: Could not resolve the path 'init' with the extensions: '.ts', '.tsx', '.d.ts', '.cts', '.d.cts', '.mts', '.d.mts'.` Then instead of `tsc init` we can use.

```sh
tsc --init
```

command.

Once the generation are done we are good to go to start the project. So now as a next step we will create the [Schema](../db/Schema.cds) file to mode lour Database.

