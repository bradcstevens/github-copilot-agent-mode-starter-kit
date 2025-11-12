---
mode: 'agent'
description: 'Create actionable implementation tasks (TASKS.md) based on an existing PLANNING.md strategic project plan'
name: create-tasks
argument-hint: 'Optional: specify focus area or phase to emphasize'
agent: agent
model: Claude Sonnet 4.5 (copilot)
tools:
  - read_file
  - create_file
  - file_search
---
# Create Project Tasks - Tactical Execution Prompt

## Purpose
This prompt guides GitHub Copilot through creating a comprehensive TASKS.md document that breaks down a project plan into actionable implementation tasks.

---

## Prerequisites

**This prompt requires the following file to exist in your project:**
- ✅ `PLANNING.md` - Comprehensive project planning document

**If PLANNING.md doesn't exist yet**, use `create-plan.prompt.md` to create it first, or create it manually using the template in `samples/templates/`.

---

## Instructions to Copilot

You are tasked with creating a tactical implementation plan based on an existing strategic project plan. The project has a PLANNING.md file that defines the vision, architecture, and roadmap.

**Before starting, verify that PLANNING.md exists in the project. If it doesn't exist, inform the user that this file is required and cannot proceed with creating tasks.**

### Your Goal

Create a comprehensive TASKS.md file in the project root that provides:
- Actionable, specific implementation tasks
- Logical task organization and sequencing
- Clear acceptance criteria for each task
- Progress tracking with checkboxes

---

## Project Context

**Additional Context (Optional):** ${input:context:Add any additional context or specific requirements for task creation}

---

## TASKS.md Structure

Create a TASKS.md file with the following sections:

### 1. Initial Setup & Research
Environment configuration and foundational tasks:
- [ ] Development environment setup
- [ ] Install required tools and dependencies
- [ ] Configure version control and branching strategy
- [ ] Research and prototype key technologies
- [ ] Set up development database/services

### 2. Architecture & Design
Design artifacts before coding begins:
- [ ] Create system architecture diagrams
- [ ] Define data models and schemas
- [ ] Design API contracts and interfaces
- [ ] Create component interaction diagrams
- [ ] Document security architecture

### 3. Core Components Development
Implementation tasks for each component identified in PLANNING.md:
- [ ] Component 1: Basic structure
- [ ] Component 1: Core functionality
- [ ] Component 1: Unit tests
- [ ] Component 1: Error handling
- [ ] [Repeat for each component]

### 4. Integration & Configuration
Connect components and configure the system:
- [ ] Integrate Component A with Component B
- [ ] Configure environment variables
- [ ] Set up configuration management
- [ ] Implement logging and monitoring
- [ ] Configure external service connections

### 5. Azure Service Integration (if applicable)
Set up and integrate cloud resources:
- [ ] Provision Azure resources
- [ ] Configure authentication and authorization
- [ ] Set up managed identities
- [ ] Implement Azure service connections
- [ ] Configure monitoring and alerts

### 6. Testing & Quality Assurance
Comprehensive testing strategy:
- [ ] Write integration tests
- [ ] Write end-to-end tests
- [ ] Perform load/performance testing
- [ ] Security testing and vulnerability scans
- [ ] Verify all requirements met

### 7. Documentation
Create user and developer documentation:
- [ ] Write README with setup instructions
- [ ] Document API endpoints and usage
- [ ] Create architecture documentation
- [ ] Write user guides
- [ ] Document troubleshooting procedures

### 8. Deployment & Release
Prepare for production deployment:
- [ ] Set up CI/CD pipeline
- [ ] Configure production environment
- [ ] Create deployment runbook
- [ ] Perform dry-run deployment
- [ ] Deploy to production
- [ ] Post-deployment verification

### 9. Phase 2+ Features (Future Work)
Advanced features from later phases:
- [ ] [Feature from Phase 2]
- [ ] [Feature from Phase 3]
- [ ] [Additional enhancements]

### 10. Discovered During Work
Dynamic section for emergent tasks:
- [ ] [Tasks discovered during implementation]

---

## How to Use This Prompt

### Creating Tasks from Existing Plan:

```
I have PLANNING.md ready. Please create TASKS.md.

Expected actions:
1. Verify that PLANNING.md exists
2. Read and analyze the PLANNING.md file
3. Extract components, phases, and requirements
4. Create TASKS.md with all sections and specific tasks
5. Organize tasks in logical implementation order
6. Review the task list with me
```

### Creating Tasks with Specific Focus:

```
Create TASKS.md based on PLANNING.md, focusing on [specific area or phase].

Expected actions:
1. Verify PLANNING.md exists
2. Read the planning document
3. Create comprehensive TASKS.md
4. Give extra detail to the specified focus area
5. Ensure dependencies are clear
```

---

## Task Writing Guidelines

### Each Task Should:
- ✅ Be specific and actionable (verb + noun + context)
- ✅ Have clear acceptance criteria
- ✅ Be small enough to complete in one session (2-8 hours)
- ✅ Have obvious dependencies identified
- ✅ Include testing requirements where applicable

### Task Format Examples:

**Good Tasks:**
- [ ] Implement user authentication using Azure AD B2C with JWT validation
- [ ] Create REST API endpoint for feedback submission with JSON schema validation
- [ ] Write unit tests for sentiment analysis service achieving >80% coverage

**Poor Tasks:**
- [ ] Build the backend (too vague)
- [ ] Make it work (no specific outcome)
- [ ] Fix bugs (not specific enough)

### Task Organization:
- ✅ Group related tasks together
- ✅ Order tasks by dependency (prerequisites first)
- ✅ Separate MVP tasks from enhancement tasks
- ✅ Use sub-sections for major components
- ✅ Include checkboxes for progress tracking

---

## Example Output

**User:** "I have PLANNING.md for a customer feedback analysis system. Create TASKS.md."

**Expected Copilot Response:**

"I'll create a comprehensive task list based on your PLANNING.md. Let me first verify the file exists and review the plan..."

[Reads PLANNING.md]

"I've reviewed your planning document. I can see:
- 3 main components: Feedback API, Analysis Service, Dashboard
- Azure AI Language for sentiment analysis
- Cosmos DB for storage
- 3-phase roadmap

Creating TASKS.md now with tasks organized by setup, design, component development, integration, testing, and deployment..."

[Creates detailed TASKS.md]

"I've created TASKS.md with 47 specific tasks organized into logical sections:
- Initial Setup: 6 tasks for environment and tools
- Architecture & Design: 5 tasks for diagrams and data models
- Core Components: 18 tasks across 3 components
- Integration: 8 tasks for connecting services
- Azure Integration: 5 tasks for cloud setup
- Testing: 6 tasks for comprehensive QA
- Documentation: 4 tasks
- Deployment: 5 tasks for CI/CD and production

Phase 2+ features are captured but not detailed yet. Ready to begin implementation using build.prompt.md, or would you like to review and adjust any tasks first?"

**If PLANNING.md doesn't exist:**

"I cannot create TASKS.md because PLANNING.md is missing. PLANNING.md is required to understand:
- What components need to be built
- The technical architecture and approach
- The phased roadmap and priorities

Please create PLANNING.md first using `create-plan.prompt.md` or manually using the template in `samples/templates/`. Once PLANNING.md exists, I can generate a comprehensive task list."

---

## Best Practices

### Task Creation
- ✅ Base tasks directly on components in PLANNING.md
- ✅ Break large tasks into smaller sub-tasks
- ✅ Include testing tasks for each component
- ✅ Don't forget documentation and deployment tasks
- ✅ Capture Phase 2+ features but don't detail them yet

### Organization
- ✅ Group by logical workflow (setup → design → build → test → deploy)
- ✅ Within each group, order by dependency
- ✅ Use clear section headers
- ✅ Number tasks if helpful for reference

### Clarity
- ✅ Use action verbs (implement, create, configure, test, deploy)
- ✅ Be specific about what "done" looks like
- ✅ Include relevant technology names
- ✅ Reference specific files or components when known

### Azure Projects (when applicable)
- ✅ Include Azure resource provisioning tasks
- ✅ Add tasks for authentication setup
- ✅ Include monitoring and logging configuration
- ✅ Consider cost optimization tasks
- ✅ Plan for CI/CD with Azure DevOps or GitHub Actions

---

## Troubleshooting

**If PLANNING.md doesn't exist:**
- Stop and inform the user
- Direct them to create PLANNING.md first
- Do not attempt to create PLANNING.md yourself

**If PLANNING.md is too vague:**
- Ask user to clarify specific sections
- Suggest updating PLANNING.md before creating tasks
- Make reasonable assumptions but document them

**If task list becomes too large:**
- Focus on Phase 1/MVP tasks in detail
- Summarize Phase 2+ tasks at high level
- Suggest breaking into multiple epics or sprints

**If dependencies are complex:**
- Create a dependency section at the top
- Use task numbering for cross-referencing
- Consider creating a task dependency diagram

---

## Success Criteria

A good TASKS.md document:
- ✅ Translates all PLANNING.md components into concrete tasks
- ✅ Provides clear, actionable items that can be started immediately
- ✅ Includes all aspects: setup, development, testing, documentation, deployment
- ✅ Has tasks small enough to complete in one session
- ✅ Shows clear progression and dependencies
- ✅ Includes checkboxes for progress tracking
- ✅ Balances detail (enough to start) with flexibility (not overly prescriptive)

---

## Next Steps

After creating TASKS.md, you can:
1. Use `build.prompt.md` to begin systematic implementation
2. Review and adjust tasks based on team feedback
3. Start implementing the first uncompleted task

---

## Related Resources

**Required File:**
- `PLANNING.md` - Must exist in your project root

**Template Reference:**
- This prompt uses the structure from: `templates/TASKS.template.md`
- Template Location: `/templates/TASKS.template.md`
- The template provides a standard task organization structure
- Content will be customized based on your PLANNING.md file

**Related Templates:**
- Planning Template: `templates/PLANNING.template.md` (used by `create-plan.prompt.md`)

**Implementation Prompts:**
- `build.prompt.md` - Use this to implement tasks once TASKS.md is created

**Note:** This prompt does not create PLANNING.md. Use `create-plan.prompt.md` or create it manually before using this prompt.
