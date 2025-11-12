---
mode: 'agent'
description: 'Create a comprehensive strategic project plan (PLANNING.md) that defines project vision, architecture, and implementation roadmap'
name: create-plan
argument-hint: 'Brief description of the project to plan'
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools:
  - create_file
  - file_search
  - read_file
---

# Create Project Plan - Strategic Planning Prompt

## Purpose
This prompt guides GitHub Copilot through creating a comprehensive PLANNING.md document that defines the project vision, architecture, and strategic roadmap.

---

## Instructions to Copilot

You are tasked with creating a strategic project plan. This plan will serve as the foundation for implementation and should clearly articulate what will be built, why it matters, and how it will be structured.

### Your Goal

Create a comprehensive PLANNING.md file in the project root that provides:
- Clear project vision and objectives
- Detailed architecture and component breakdown
- Technical approach and technology decisions
- Phased implementation roadmap

---

## Project Information

**Project Description:** ${input:project:Describe the project you want to plan for}

**Primary Use Case:** ${input:usage:Specify the primary use case or problem being solved}

**Technical Requirements:** ${input:tech:List any specific technologies, frameworks, or Azure services to include}

---

## PLANNING.md Structure

Create a PLANNING.md file with the following sections:

### 1. Overview Section
Clearly articulate:
- What problem does this project solve?
- Who is the target audience or end users?
- What makes this solution unique or valuable?
- What is the expected business or user impact?

### 2. Objectives & Scope
Define:
- Primary goal in one clear sentence
- Core components/modules to be built
- How components integrate with each other
- Azure services to be utilized (if applicable)
- Specific deliverables and success criteria
- Explicit non-goals (what's out of scope)

### 3. Target Industry & Use Cases
Identify:
- Primary industry verticals or domains
- Specific pain points being addressed
- Relevant Azure services for the industry
- Key user scenarios or workflows

### 4. Components & Responsibilities
Break down:
- Each major component with clear purpose
- Responsibilities and boundaries of each component
- Dependencies between components
- Data ownership and flow between components

### 5. Technical Approach
Specify:
- Foundation framework/technology stack
- Architecture pattern (microservices, serverless, monolithic, etc.)
- Data flow and integration points
- Deployment strategy and CI/CD approach
- Security and compliance considerations
- Scalability and performance considerations

### 6. Implementation Roadmap
Create a phased plan:
- **Phase 1 (MVP)**: Core features and essential functionality
- **Phase 2 (Enhancement)**: Additional features and optimizations
- **Phase 3 (Advanced)**: Advanced features and scaling capabilities
- Timeline estimates for each phase
- Key milestones and decision points

---

## How to Use This Prompt

### Starting Fresh:

```
I want to create a project plan for [brief project description].

Expected actions:
1. Ask clarifying questions if needed about the project
2. Create PLANNING.md in the project root using the template structure
3. Fill in all sections with thoughtful, detailed content
4. Review the plan with me to ensure alignment
```

### With Specific Requirements:

```
Create a project plan with these details:
- Project: [description]
- Use Case: [primary use case]
- Tech Stack: [technologies and frameworks]

Expected actions:
1. Create PLANNING.md with all sections completed
2. Ensure technical approach aligns with specified technologies
3. Highlight any assumptions or decisions made
```

---

## Best Practices

### Planning Phase
- ✅ Start with why: clearly articulate the problem and solution
- ✅ Be specific about scope to avoid scope creep
- ✅ Identify dependencies early
- ✅ Consider security and scalability upfront
- ✅ Make technology choices explicit with rationale
- ✅ Define success criteria that can be measured

### Writing Style
- ✅ Use clear, concise language
- ✅ Avoid jargon unless necessary (and define it when used)
- ✅ Be specific rather than abstract
- ✅ Include examples where helpful
- ✅ Make architectural decisions explicit

### Azure Integration (when applicable)
- ✅ Follow Azure Well-Architected Framework principles
- ✅ Consider cost optimization from the start
- ✅ Plan for monitoring and observability
- ✅ Use managed identities where possible
- ✅ Implement proper authentication and authorization

---

## Example Output Structure

**User:** "Create a project plan for a customer feedback analysis system using Azure AI"

**Expected Copilot Response:**

"I'll create a comprehensive project plan for your customer feedback analysis system. Let me create PLANNING.md with detailed sections covering:

- Project overview and the problem it solves
- Clear objectives and success criteria
- System architecture with Azure AI Language, storage, and processing components
- Technical approach using Azure Functions and Cosmos DB
- Three-phase implementation roadmap

Creating PLANNING.md now..."

[Creates detailed PLANNING.md file]

"I've created PLANNING.md with a complete strategic plan. Key highlights:
- MVP focuses on basic sentiment analysis and categorization
- Uses Azure AI Language for analysis, Cosmos DB for storage
- Serverless architecture with Azure Functions
- Three phases progressing from MVP to advanced features

Would you like me to:
1. Adjust any section of the plan?
2. Add more detail to specific areas?
3. Proceed to create TASKS.md for implementation?"

---

## Troubleshooting

**If project description is too vague:**
- Ask clarifying questions about the problem, users, and goals
- Suggest similar projects as examples
- Start with a narrow use case and expand from there

**If technology choices are unclear:**
- Research and suggest appropriate technologies
- Explain tradeoffs between different approaches
- Align suggestions with the project's goals and constraints

**If scope seems too large:**
- Recommend breaking into smaller phases
- Identify true MVP features
- Suggest deferring advanced features to later phases

---

## Success Criteria

A good PLANNING.md document:
- ✅ Clearly articulates the "why" behind the project
- ✅ Defines specific, measurable objectives
- ✅ Breaks down the system into logical components
- ✅ Makes architectural decisions explicit
- ✅ Provides a realistic phased roadmap
- ✅ Can serve as a reference throughout implementation
- ✅ Is detailed enough to create tasks from, but not overly prescriptive

---

## Next Steps

After creating PLANNING.md, you can:
1. Use `create-tasks.prompt.md` to generate actionable implementation tasks
2. Use `build.prompt.md` to begin implementation once TASKS.md exists
3. Manually review and refine the plan before proceeding

---

## Template Reference

This prompt uses the structure from: `templates/PLANNING.template.md`

**Template Location**: `/templates/PLANNING.template.md`

The template provides a structured starting point with all the standard sections. This prompt will:
- Use the template structure as a foundation
- Customize the content based on your specific project needs
- Fill in all sections with detailed, project-relevant information
- Adapt the template sections as needed for your use case
