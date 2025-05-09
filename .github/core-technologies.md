
# Core Technology Usage Rules

## C# (.NET Core)
- **Target Framework**: Use .NET 8 or greater if available and stable.
- **Project Structure**:
  - Organize code into `src/YourProject.Domain`, `src/YourProject.Application`, `src/YourProject.Infrastructure`, and `tests/`.
  - Keep each layer’s responsibilities clearly separated.
- **Coding Standards**:
  - Follow Microsoft’s C# conventions (PascalCase for types/methods, camelCase for locals/parameters).
  - Enable nullable reference types.
  - Use `async`/`await` for all I/O-bound work.
- **Dependency Management**:
  - Use `NuGet` packages; pin to exact versions in `Directory.Packages.props`.
  - Centralize versioning via `PackageReference` MSBuild props.

## Blazor WebAssembly (PWA)
- **Project Setup**:
  - Scaffold with `dotnet new blazorwasm --pwa`.
  - Use lazy-loaded assemblies for large modules.
- **State Management**:
  - Prefer `Fluxor` or `Redux` patterns for complex state.
  - Encapsulate shared state in scoped services.
- **Performance**:
  - Enable AOT compilation and tree-shaking.
  - Use HTTP caching headers for static assets.
- **Service Workers**:
  - Customize `service-worker.js` to cache API responses and static files.
  - Test offline scenarios regularly.

## ASP.NET Core Web API
- **Architecture**:
  - Follow RESTful principles; use attribute routing with consistent route naming.
  - Implement versioning via URL segment or header.
- **Security**:
  - Secure APIs with JWT Bearer tokens issued by Azure AD.
  - Validate scopes/roles on controllers/actions.
- **Serialization**:
  - Use `System.Text.Json` with custom converters only when necessary.
  - Enforce `camelCase` JSON naming.
- **Error Handling**:
  - Centralize error responses via `UseExceptionHandler` middleware.
  - Return RFC 7807–compliant Problem Details.

## Semantic Kernel
- **Use Cases**:
  - Implement semantic functions for natural-language workflows.
  - Store prompts and function definitions in source control.
- **Configuration**:
  - Manage skills via `kernel.ImportSkill(...)`.
  - Secure any keys (OpenAI, Azure) in user secrets or Key Vault.
- **Testing**:
  - Mock AI calls in unit tests.
  - Validate prompt outputs against expected schemas.

## Azure AI Agent Service
- **Agent Definition**:
  - Define agents with clear objectives and limited toolsets.
  - Store configuration as JSON or YAML in repo.
- **Connectivity**:
  - Use Managed Identity to call other Azure services (e.g., Cognitive Search).