# GitHub Copilot Agent Mode Starter Kit

A comprehensive collection of **prompts**, **instruction files**, and **templates** designed to enhance GitHub Copilot's capabilities in Agent Mode, with a focus on Azure development and best practices.

## What's Inside

This starter kit provides:

- **Custom Prompts** - Pre-built prompt files for common workflows (planning, task generation, cost optimization, documentation)
- **Instruction Files** - Behavioral guidelines that teach GitHub Copilot your standards and best practices
- **Templates** - Reusable project structure templates for planning and task management
- **Scripts** - Automation tools for managing collections and generating documentation

## Why Use This Kit?

Instead of repeatedly instructing GitHub Copilot on your preferences, this kit allows you to:

- **Standardize workflows** across your team with consistent prompts
- **Enforce best practices** through instruction files that Copilot automatically follows
- **Accelerate project setup** with ready-to-use templates
- **Customize behavior** for your specific development needs

## Quick Start

### Prerequisites

- Visual Studio Code
- GitHub Copilot extension
- GitHub Copilot Chat extension (with Agent Mode enabled)
- Azure MCP Server (optional, for Azure-specific features)

### Installation

1. **Clone this repository**:
   ```bash
   git clone https://github.com/bradcstevens/github-copilot-agent-mode-starter-kit.git
   cd github-copilot-agent-mode-starter-kit
   ```

2. **Enable instruction files** in VS Code settings:
   ```json
   {
     "github.copilot.chat.codeGeneration.useInstructionFiles": true
   }
   ```

3. **Start using prompts** by typing `/` in GitHub Copilot Chat and selecting from available prompts

## Repository Structure

```
.
├── .github/
│   ├── instructions/       # Instruction files for Copilot behavior
│   │   ├── copilot-instructions.md
│   │   └── memory-bank/    # Advanced instruction system
│   └── prompts/            # Custom prompt files
│       ├── az-cost-optimize.prompt.md
│       ├── create-plan.prompt.md
│       ├── create-readme.prompt.md
│       └── create-tasks.prompt.md
├── .vscode/                # VS Code configuration
│   ├── mcp.json           # Example MCP server configurations
│   └── settings.json      # Example VS Code settings for Copilot
├── templates/              # Project templates
│   ├── PLANNING.template.md
│   └── TASKS.template.md
└── scripts/                # Automation utilities
    ├── create-collection.js
    ├── update-readme.js
    └── validate-collections.js
```

### Configuration Files

The `.vscode/` folder contains example configurations to help you get started:

- **`mcp.json`** - Pre-configured MCP servers including:
  - Azure MCP Server (Azure resource management)
  - task-master-ai (Task automation)
  - context7 (Library documentation)
  - browser-tools & playwright (Browser automation)
  - brave-search (Web search)
  - sequential-thinking (Advanced reasoning)
  - time (Timezone utilities)

- **`settings.json`** - VS Code settings optimized for GitHub Copilot:
  - Enables instruction files from `.github/instructions/` and Memory Bank
  - Configures prompt file locations (`.github/prompts/`)
  - Sets up Agent Mode and thinking tools
  - Defines auto-approval rules for safe terminal commands
  - Configures file associations for `.chatmode.md`, `.instructions.md`, `.prompt.md` files

## Available Prompts

### `/create-plan`
**Purpose**: Generate a comprehensive PLANNING.md file for your project

Creates a strategic project plan with:
- Project overview and objectives
- Component architecture and responsibilities
- Technical approach and technology stack
- Phased implementation roadmap

**Usage**: Type `/create-plan` in Copilot Chat and provide a brief project description

### `/create-tasks`
**Purpose**: Generate actionable TASKS.md from an existing PLANNING.md

Converts your strategic plan into:
- Organized implementation tasks
- Clear acceptance criteria
- Logical task sequencing
- Progress tracking checkboxes

**Usage**: Type `/create-tasks` after creating your PLANNING.md file

### `/create-readme`
**Purpose**: Generate or update README.md documentation

Analyzes your project and creates:
- Clear project description
- Installation and setup instructions
- Usage examples and API documentation
- Contribution guidelines

**Usage**: Type `/create-readme` to analyze and document your project

### `/az-cost-optimize`
**Purpose**: Analyze Azure resources and generate cost optimization recommendations

Features:
- Scans IaC files (Bicep, Terraform) for resource configurations
- Analyzes deployed Azure resources
- Generates prioritized optimization recommendations
- Creates GitHub issues for each optimization opportunity

**Usage**: Type `/az-cost-optimize` with optional subscription ID or resource group name

## Using Templates

The `templates/` folder contains reusable project structure templates:

### PLANNING.template.md
Standard sections for project planning:
- Overview and objectives
- Component responsibilities
- Technical approach
- Implementation roadmap

### TASKS.template.md
Task organization structure:
- Setup and research
- Architecture and design
- Component development
- Testing and deployment

These templates are automatically used by the corresponding prompts (`/create-plan` and `/create-tasks`).

## Instruction Files

The `.github/instructions/` directory contains behavioral guidelines for GitHub Copilot:

### copilot-instructions.md
Core instructions that establish:
- Project awareness (reads PLANNING.md and TASKS.md)
- Code structure and modularity rules
- Testing requirements
- Documentation standards
- Task completion tracking

### Memory Bank System
Advanced instruction hierarchy in `.github/instructions/memory-bank/`:

- **Core/**: Fundamental rules (complexity decisions, file verification, platform awareness)
- **Level1-4/**: Progressive workflow complexity levels
- **Phases/**: Mode-specific instructions (Analyze, Creative, Implement, etc.)
- **visual-maps/**: Process flow diagrams for different work modes

The Memory Bank system enables sophisticated workflows with mode transitions and context preservation.

## Scripts

### `update-readme.js`
Generates or updates the README.md file based on project structure

**Usage**:
```bash
node scripts/update-readme.js
```

### `validate-collections.js`
Validates all collection manifest files for correctness

**Usage**:
```bash
node scripts/validate-collections.js
```

### `create-collection.js`
Creates new collection manifest templates

**Usage**:
```bash
node scripts/create-collection.js --id <collection-id> --tags <tag1,tag2>
```

## Configuration

### Enabling Instruction Files

Add to your VS Code `settings.json`:

```json
{
  "github.copilot.chat.codeGeneration.useInstructionFiles": true,
  "github.copilot.chat.agent.thinkingTool": true
}
```

### MCP Servers (Optional)

The included `.vscode/mcp.json` file contains example configurations for popular MCP servers. To use them:

1. Copy `.vscode/mcp.json` to your user settings or workspace settings
2. Set required API keys as environment variables (e.g., `$ANTHROPIC_API_KEY`, `$BRAVE_API_KEY`)
3. Restart VS Code to activate the servers

**Note**: Some servers require API keys or additional setup. See each server's documentation for details.

### Custom Instructions

Create project-specific instruction files:

1. Add `.md` files to `.github/instructions/`
2. Use frontmatter to specify application scope:
   ```markdown
   ---
   applyTo: '**/*.ts'
   ---
   # Your instructions here
   ```

## How It Works

1. **Prompts** are invoked using `/` commands in Copilot Chat
2. **Instruction files** are automatically loaded when `useInstructionFiles` is enabled
3. **Templates** are referenced by prompts to generate consistent project structures
4. **Scripts** automate repository maintenance and validation

This creates a feedback loop where:
- Prompts generate structured content using templates
- Instruction files ensure consistent code quality
- Scripts maintain repository organization

## Best Practices

### Creating Custom Prompts

When adding new prompts to `.github/prompts/`:

1. Use the `.prompt.md` extension
2. Include frontmatter with metadata:
   ```yaml
   ---
   mode: 'agent'
   description: 'Brief description'
   name: command-name
   argument-hint: 'Usage hint'
   agent: agent
   model: Claude Sonnet 4.5 (copilot)
   tools:
     - tool1
     - tool2
   ---
   ```
3. Structure the prompt with clear sections and expected behaviors

### Writing Instruction Files

Effective instruction files should:

- Be specific and actionable
- Use clear examples
- Define boundaries (what to do and what NOT to do)
- Include context about when the instructions apply
- Use frontmatter to scope application: `applyTo: '**/*.py'`

### Using the Memory Bank System

The Memory Bank provides progressive complexity levels:

- **Level 1**: Quick fixes and simple tasks
- **Level 2**: Standard feature development
- **Level 3**: Complex features with planning
- **Level 4**: Architectural changes and system design

Copilot automatically selects the appropriate level based on task complexity.

## Contributing

Contributions are welcome! This starter kit is designed to be extended with:

- New prompt templates for common workflows
- Additional instruction files for specific technologies
- Enhanced Memory Bank levels for specialized scenarios
- Scripts for repository automation

## License

This project is open source and available under the MIT License.

## Related Resources

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Azure MCP Server](https://github.com/Azure/azure-mcp)
- [VS Code Extension API](https://code.visualstudio.com/api)
- [Awesome Copilot](https://github.com/github/awesome-copilot) - For more community-contributed examples, prompts, and resources

---

**Built for developers who want to enhance GitHub Copilot with structured workflows, consistent behaviors, and Azure best practices.**
