# GitHub Copilot Agent Mode Starter Kit

## Welcome to the "Vibe Code" Experience! 🚀

This starter kit is designed specifically for anyone who wants to quickly demonstrate the power of GitHub Copilot Agent Mode with Azure integrations. No coding experience required—just follow these simple steps to impress your audience with AI-powered development!

## What is "Vibe Coding"?

"Vibe coding" is our way of describing a relaxed, conversation-based approach to creating code and solutions. Instead of writing complex code yourself, you simply *chat* with GitHub Copilot about what you want to build, and it helps you create it!

## Getting Started in 5 Easy Steps

1. **Open VSCode**: Launch Visual Studio Code on your computer
2. **Clone This Repo**: Use the command `git clone https://github.com/bradcstevens/github-copilot-agent-mode-starter.git` or download it as a ZIP file
3. **Install Extensions**: Make sure you have the following VSCode extensions installed:
   - GitHub Copilot
   - GitHub Copilot Chat
   - Azure Copilot
   - Azure MCP Server
4. **Sign Into Extensions**: Sign into your GitHub account and Azure account when prompted
5. **Start "Vibe Coding"**: Open the Command Palette (⌘+Shift+P on Mac, Ctrl+Shift+P on Windows) and select "GitHub Copilot: Start Agent Mode"

## Creating Your First Azure Demo

Once you're in Agent Mode, try prompts like these to get started:

```
"Let's create a simple web app that we can deploy to Azure App Service"

"Help me build a Power BI dashboard that connects to Azure SQL"

"Can you show me how to set up an Azure Function that processes data from Blob Storage?"
```

GitHub Copilot will guide you through the entire process, creating the necessary files, explaining each step, and even helping with the Azure deployment!

## Using the Template Files

This starter kit includes two important template files that will help structure your demos:

- **PLANNING-template.md**: Outlines the overall project plan and architecture
- **TASKS-template.md**: Provides a structured task list to implement the project

Simply reference these templates when starting a new demo by asking Copilot:

```
"Let's use the PLANNING template to structure a solution for [audience need]"

"Can you create a TASKS list based on our PLANNING document for this project?"
```

## Creating Project Plans with Templates

Here's a step-by-step guide to using the templates for your Azure demo:

### Step 1: Start GitHub Copilot in Agent Mode

1. Open VS Code
2. Open the Command Palette by pressing `⌘+Shift+P` (Mac) or `Ctrl+Shift+P` (Windows)
3. Type "GitHub Copilot: Start Agent Mode" and press Enter
4. Wait for the Agent Mode sidebar to appear

### Step 2: Generate a Project Plan

Once in Agent Mode, ask Copilot to create a project plan using a prompt like:

```
Let's create a simple web app that we can deploy to Azure App Service. Create a plan to deploy the app to my Azure subscription using PLANNING-template.md as your template.
```

GitHub Copilot will:
- Analyze the PLANNING-template.md file
- Create a new PLANNING.md file tailored to your requested scenario
- Fill in all the sections with relevant Azure services and implementation details

### Step 3: Generate the Task List

Once your PLANNING.md is created, ask Copilot to generate a task list:

```
Now that we have a plan, please create a list of tasks that need to be performed from PLANNING.md into a new file TASKS.md using TASKS-template.md as a reference.
```

GitHub Copilot will:
- Review your PLANNING.md file to understand the project
- Analyze the TASKS-template.md structure
- Create a new TASKS.md with specific, actionable steps
- Organize tasks in a logical implementation order

### Step 4: Start Working Through Tasks

With your TASKS.md created, you can begin implementing the project:

1. Focus on one task at a time
2. Ask Copilot to help with each task, such as:
   ```
   Let's work on the first task: setting up our Azure environment. Can you help me with this?
   ```
3. Mark tasks as complete as you finish them by changing `[ ]` to `[x]` in TASKS.md

### Example Workflow

Here's an example of a complete conversation with GitHub Copilot:

```
YOU: Let's create a simple web app that we can deploy to Azure App Service. Create a plan to deploy the app to my Azure subscription using PLANNING-template.md as your template.

COPILOT: [Creates PLANNING.md with details about Azure App Service deployment]

YOU: Now that we have a plan, please create a list of tasks that need to be performed from PLANNING.md into a new file TASKS.md using TASKS-template.md as a reference.

COPILOT: [Creates TASKS.md with step-by-step implementation tasks]

YOU: Let's start with the first task. Can you help me set up the basic Node.js application structure?

COPILOT: [Provides guidance and code for setting up the Node.js app]
```

This guided approach ensures that your Azure demo is well-structured and comprehensive, even if you're not a technical expert.

## Tips for a Successful Demo

1. **Be Audience-Focused**: Start by clearly stating the audience's business problem using GitHub Copilot in Ask mode
2. **Ask Clarifying Questions**: Let GitHub Copilot guide you with follow-up questions
3. **Explain While You Go**: Narrate what's happening for your audience
4. **Highlight Azure Benefits**: Point out Azure's security, scalability, and integration features
5. **Show, Don't Tell**: Switch to GitHub Copilot Agent Mode Actually deploy something simple to Azure during your demo

## Common Azure Demo Scenarios

- **Web Applications**: Quick deployment of responsive web apps to Azure App Service
- **Data Analysis**: Setting up data pipelines with Azure Data Factory
- **AI Solutions**: Implementing Azure AI Services or Azure OpenAI
- **IoT Applications**: Building IoT solutions with Azure IoT Hub
- **Serverless Applications**: Creating Azure Functions for event-driven architecture
- **Containerized Apps**: Deploying applications using Azure Container Apps or AKS
- **.NET Cloud-Native Apps**: Building cloud applications with .NET Aspire

## Troubleshooting

- **Copilot Not Responding?**: Try refreshing your VSCode window (⌘+R on Mac, Ctrl+R on Windows)
- **Azure Connection Issues?**: Verify your login status with the Azure extension
- **Need More Context?**: Create a new file explaining the audience scenario in detail, then ask Copilot to reference it

## Configuring GitHub Copilot & MCP Servers

This starter kit includes a pre-configured `settings.json` file that optimizes GitHub Copilot for Azure demos. Here's how to understand and customize it:

### Understanding the Settings File

The `settings.json` file in this repository contains all the necessary settings to make GitHub Copilot work perfectly for Azure demos:

```json
{
    "github.copilot.enable": { "*": true, "plaintext": false, "markdown": false, "scminput": false },
    "github.copilot.chat.agent.thinkingTool": true,
    "github.copilot.chat.codeGeneration.useInstructionFiles": true,
    "github.copilot.chat.codeGeneration.instructions": [
      {
        "text": "- @azure Rule - Use Azure Best Practices: When generating code for Azure..."
      }
    ],
    "chat.agent.enabled": true,
    "chat.mcp.discovery.enabled": true,
    "mcp": {
      "servers": {
        "Azure MCP Server": {
          "command": "npx",
          "args": ["-y", "@azure/mcp@latest", "server", "start"]
        }
      }
    }
}
```

### How to Customize Settings

1. **Open Settings**: In VSCode, press `⌘+,` (Mac) or `Ctrl+,` (Windows) to open Settings
2. **Find User Settings**: Click on the tab that says "User" to edit your personal settings
3. **Open JSON**: Click the icon in the top-right corner to "Open Settings (JSON)"
4. **Copy Settings**: Copy the settings from this repo's `settings.json` file
5. **Restart VSCode**: After saving your settings, restart VSCode

### Adding Instruction Files

You can create custom instruction files to guide Copilot's behavior:

1. **Create a file** named `your-instructions.md` in your project
2. **Add instructions** in markdown format, like:
   ```markdown
   - Always use TypeScript for frontend code
   - Prefer functional components in React
   - Follow Azure naming conventions for resources
   ```
3. **Enable the file** by editing the settings:
   ```json
   "github.copilot.chat.codeGeneration.instructions": [
     { "file": "your-instructions.md" }
   ]
   ```

### Working with MCP Servers

Model Context Protocol (MCP) servers extend GitHub Copilot's capabilities:

1. **Azure MCP Server** is pre-configured in this starter kit
2. **Starting the server**:
   - Open Command Palette (`⌘+Shift+P` on Mac, `Ctrl+Shift+P` on Windows)
   - Search for "MCP: Start Server" and select the Azure MCP Server
3. **Adding more servers**:
   - Edit the "mcp.servers" section in settings.json
   - Add new server configurations following the same pattern

### Testing Your Configuration

After setting up, try a simple Azure command in Copilot Chat:
```
"Can you help me create an Azure Storage account?"
```
If Copilot responds with Azure-specific advice and best practices, your configuration is working!

## Understanding Instruction Files

This starter kit includes several specialized instruction files in the `.github` directory that control GitHub Copilot's behavior and ensure code quality. These files are crucial for maintaining consistency and preventing common issues:

### copilot-instructions.md

This is the primary instruction file that guides GitHub Copilot's behavior when generating code:

- **Prevents Code Sprawl**: Enforces file size limits (max 500 lines) and proper modularization
- **Maintains Consistency**: Ensures consistent naming conventions and import styles
- **Enforces Testing**: Requires test creation for all new features with specific test types
- **Prevents Accidental Deletions**: Instructs Copilot to never delete existing code without explicit permission
- **Requires Documentation**: Enforces commenting standards and documentation updates

**Why It Matters**: Without these instructions, Copilot might generate excessively large files, inconsistent code styles, or code without proper tests, making maintenance difficult.

### core-technologies.md

Defines the specific technology standards for different frameworks used in the project:

- **Establishes Framework Standards**: Sets specific versions and patterns for C#, Blazor, ASP.NET Core, and other technologies
- **Enforces Architecture**: Ensures proper project structure and separation of concerns
- **Maintains Best Practices**: Enforces security standards like JWT authentication and proper error handling

**Why It Matters**: This prevents Copilot from suggesting outdated patterns or mixing incompatible technologies.

### mcp-servers.md

Provides rules for working with Model Context Protocol (MCP) servers and related infrastructure:

- **Standardizes Deployment**: Establishes consistent deployment pipeline practices
- **Ensures Security**: Enforces secrets management in Azure Key Vault or GitHub Secrets
- **Validates Quality**: Requires build verification and code quality checks

**Why It Matters**: These rules ensure your demo deployments are secure and follow best practices.

### nextjs-instructions.md and self-improve.md

These files provide specialized guidance for specific technologies and continuous improvement:

- **Technology-Specific Guidance**: Ensures Next.js code follows App Router patterns
- **Self-Improvement Process**: Documents how Copilot suggestions are refined over time
- **Prevents Common Mistakes**: Identifies patterns where Copilot might miss context

**Why It Matters**: These specialized instructions help Copilot adapt to the unique needs of your project and improve over time.

### How These Files Work Together

1. **settings.json** enables the instruction files
2. **copilot-instructions.md** provides the core rules
3. **Technology-specific files** add detailed guidance
4. **PLANNING.md and TASKS.md** created from templates provide project context

Together, this system ensures GitHub Copilot acts as a knowledgeable team member who follows your project standards, maintains code quality, and prevents common mistakes—all without requiring you to be a technical expert.

## Azure Best Practices

GitHub Copilot is configured to follow Azure best practices in all generated code:

- **Security First**: Uses Managed Identities instead of keys/secrets whenever possible
- **Infrastructure as Code**: Prefers Bicep templates for resource deployment
- **Modern Services**: Focuses on newer Azure technologies like Container Apps, Azure Functions, and .NET Aspire
- **Error Handling**: Implements proper retry logic and exception handling
- **Compliance Ready**: Follows Azure Well-Architected Framework principles

## Next Steps

After your basic demo, try exploring more advanced scenarios:

- Infrastructure as Code with Azure Bicep
- CI/CD pipelines with GitHub Actions
- Containerization with Azure Container Apps
- Microservices architecture on Azure Kubernetes Service
- Cloud-native applications with .NET Aspire

Remember, you don't need to understand all the technical details—GitHub Copilot is your AI pair programmer that handles the complexity while you focus on the audience conversation!

---

*This starter kit was created to empower non-technical professionals to demonstrate Azure capabilities through the power of GitHub Copilot Agent Mode. For technical support, please contact your developer advocacy team.*
