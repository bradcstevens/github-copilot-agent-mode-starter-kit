
# MCP Server Usage Rules

## Azure MCP Server
- **Primary Environment**: Use Azure MCP Server for deploying and managing cloud-native services and infrastructure.
- **Deployment Pipelines**: Integrate with GitHub Actions to automate build and deployment workflows. Ensure that pipelines:
  - Use separate environments for staging and production.
  - Store secrets in Azure Key Vault.
  - Run unit tests, integration tests, and security scans before promotion.

## GitHub
- **Repository Structure**:
  - Use clear naming conventions: `service-name-api`, `service-name-ui`, `infra`.
  - Protect the default branch; require PR reviews and status checks.
- **CI/CD**:
  - Centralize workflows in `.github/workflows/`.
  - Use reusable workflow templates for build, test, and deploy steps.
  - Store secrets in GitHub Secrets with fine-grained access.
- **Code Quality**:
  - Require linting and formatting (e.g., EditorConfig, Prettier) applied in CI.
  - Enforce code coverage thresholds.
  - Integrate Dependabot for dependency updates.
- **Collaboration**:
  - Enforce issue and PR templates.
  - Use labels and projects to track work in progress.
  - Hold regular code review rotations.

## task-master-ai
- **Build Verification & Task Completion**:
  - Agents must create and maintain GitHub Actions workflows (or use GitHub MCP Server if available) to:
    1. Execute a full build of the affected codebase (e.g., `dotnet build --no-restore --configuration Release`).
    2. Run all unit and integration tests.
    3. Confirm that the build and test runs produce **no warnings or errors**.
    4. Optionally, perform a smoke-run of the application to verify it starts and responds without issues.
  - Automate these checks through CI workflows or local pre-commit hooks.
  - Only upon passing all build and run validations may the agent mark a task complete and proceed to the next.

## Playwright MCP
- **Purpose**: Leverage Playwright MCP for end-to-end browser testing within your MCP orchestration.
- **Integration**:
  - Install and configure the [Playwright MCP](https://github.com/microsoft/playwright-mcp) package in your testing suite.
  - Authenticate Playwright agents using the same OAuth 2.0 / Azure AD tokens as other MCP services.
- **Test Definitions**:
  - Store Playwright test scripts alongside task schemas in the central registry.
  - Organize tests by feature or user flow, versioning scripts with task definitions.
- **Pipeline Steps**:
  1. **Install Dependencies**: `npm ci` or `dotnet tool restore` for Playwright CLI.
  2. **Run Playwright Tests**: `npx playwright test` targeting your deployed staging environment.
  3. **Capture Artifacts**: Save screenshots, videos, and trace logs for failed tests.
- **Reporting & Metrics**:
  - Emit structured JSON test results to your logging service.
  - Track pass/fail rates, test durations, and flakiness over time.
- **Error Handling**:
  - Automatically retry flaky tests up to a configurable threshold.
  - Surface persistent failures as task failures, blocking task completion.
- **Governance**:
  - Enforce a minimum pass rate (e.g., 95%) before a task can be completed.
  - Require approval for adding new Playwright tests or modifying existing flows.