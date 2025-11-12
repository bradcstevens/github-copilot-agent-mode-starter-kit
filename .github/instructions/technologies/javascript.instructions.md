---
description: "Enforces best practices for JavaScript development, including coding standards, performance considerations, and common pitfalls. This instruction provides actionable guidance for developers to write clean, maintainable, and scalable JavaScript code."
applyTo: "**/*.{js,jsx}"
---
# JavaScript Best Practices and Coding Standards

This document outlines best practices and coding standards for developing JavaScript applications. Following these guidelines will help ensure code quality, maintainability, and scalability.

## 1. Code Organization and Structure

- **Directory Structure:**
  - **Feature-based:** Group files related to a specific feature within a dedicated directory.

    ```text
    src/
    ├── feature1/
    │   ├── components/
    │   │   ├── ComponentA.jsx
    │   │   └── ComponentB.jsx
    │   ├── services/
    │   │   └── feature1.service.js
    │   ├── utils/
    │   │   └── helpers.js
    │   └── feature1.module.js
    ├── feature2/ 
    │   └── ...
    └── shared/
        ├── components/
        │   └── ReusableComponent.jsx
        ├── services/
        │   └── api.service.js
        └── utils/
            └── constants.js
    ```

  - **Type-based:** Separate files based on their role (components, services, utils, etc.).

    ```text
    src/
    ├── components/
    │   ├── Feature1Component.jsx
    │   └── Feature2Component.jsx
    ├── services/
    │   ├── feature1.service.js
    │   └── feature2.service.js
    ├── utils/
    │   ├── helpers.js
    │   └── validation.js
    └── modules/
        ├── feature1.module.js
        └── feature2.module.js
    ```

  - Choose the structure that best fits your project's complexity and team's preferences. Consistency is key.

- **File Naming Conventions:**
  - Use descriptive and consistent file names.
  - Components: `ComponentName.jsx`
  - Services: `serviceName.service.js`
  - Utilities: `utilityName.util.js` or `utilities.js` (if grouping related functions)
  - Modules: `moduleName.module.js`
  - Configuration: `config.js` or `app.config.js`

- **Module Organization:**
  - Use ES Modules (`import`/`export`) for modularity and reusability.
  - Favor named exports over default exports for better discoverability and refactoring.
  - Group related functionality into modules.
  - Avoid circular dependencies.

- **Component Architecture:**
  - Consider using component-based architectures like React, Vue.js, or vanilla components.
  - Follow component design principles: Single Responsibility Principle, separation of concerns.
  - Use composition over inheritance.
  - Keep components small and focused.

- **Code Splitting Strategies:**
  - Split your application into smaller chunks to improve initial load time.
  - Implement lazy loading for modules and components that are not immediately needed.
  - Use dynamic imports (`import()`).
  - Webpack, Parcel, and other bundlers offer built-in support for code splitting.

## 2. Common Patterns and Anti-patterns

- **Design Patterns:**
  - **Factory Pattern:** Use factories to create objects with complex initialization logic.
  - **Singleton Pattern:** Use sparingly, and only when a single instance is truly required.
  - **Observer Pattern:** Implement reactive patterns for handling events and data changes.
  - **Strategy Pattern:** Define a family of algorithms and encapsulate each one into a separate function or object.
  - **Dependency Injection:** Reduce coupling by injecting dependencies into components and services.

- **Recommended Approaches:**
  - **Data Fetching:** Use libraries like `axios` or native `fetch` for making API requests.
  - **State Management:** Choose a state management solution appropriate for your application's complexity (e.g., React Context, Redux, Zustand, MobX).
  - **Form Handling:** Use libraries like `react-hook-form` or `formik` for managing form state and validation.

- **Anti-patterns and Code Smells:**
  - **Loose type checking:** Use strict equality (`===`) instead of loose equality (`==`).
  - **Long methods/functions:** Break down large functions into smaller, more manageable units.
  - **Deeply nested code:** Refactor deeply nested code to improve readability.
  - **Magic numbers/strings:** Use constants for values that have a specific meaning.
  - **Duplicated code:** Extract common logic into reusable functions or modules.
  - **Ignoring errors:** Always handle errors gracefully. Don't just catch and ignore them.
  - **Over-commenting:** Write self-documenting code and use comments only when necessary to explain complex logic.

- **State Management Best Practices:**
  - Choose a state management library based on project needs: React Context API, Redux, Zustand, MobX.
  - Keep state minimal and derive values where possible.
  - Follow immutable update patterns (especially with Redux).
  - Use selectors to access state.
  - Centralize state logic.

- **Error Handling Patterns:**
  - Use `try...catch` blocks to handle potential errors.
  - Implement a global error handler to catch unhandled exceptions.
  - Use error logging to track errors in production.
  - Create custom error classes for different error types.
  - Implement retry mechanisms for transient errors.

## 3. Performance Considerations

- **Optimization Techniques:**
  - **Memoization:** Use memoization techniques (e.g., `React.memo`, `useMemo`) to avoid unnecessary re-renders.
  - **Debouncing and Throttling:** Limit the rate at which functions are executed in response to user input.
  - **Virtualization:** Use virtualization for rendering large lists or tables.
  - **Code Splitting:** Split your code into smaller chunks to reduce initial load time.

- **Memory Management:**
  - Avoid memory leaks by properly cleaning up resources (e.g., event listeners, timers).
  - Use weak references to avoid circular dependencies that can prevent garbage collection.
  - Profile your application to identify memory leaks.

- **Rendering Optimization:**
  - Minimize DOM manipulations.
  - Use CSS transforms and animations instead of JavaScript animations.
  - Optimize images and other assets.
  - Use the `shouldComponentUpdate` lifecycle method or `React.memo` to prevent unnecessary re-renders.

- **Bundle Size Optimization:**
  - Use tree shaking to remove unused code from your bundle.
  - Minify your code to reduce bundle size.
  - Compress your code using gzip or Brotli.
  - Use code splitting to load only the code that is needed for a particular page or component.

- **Lazy Loading Strategies:**
  - Lazy load modules and components that are not immediately needed.
  - Use dynamic imports (`import()`) to load modules on demand.
  - Implement a loading indicator to provide feedback to the user while the module is loading.

## 4. Security Best Practices

- **Common Vulnerabilities and Prevention:**
  - **Cross-Site Scripting (XSS):** Sanitize user input and escape output to prevent XSS attacks.
  - **Cross-Site Request Forgery (CSRF):** Use anti-CSRF tokens to protect against CSRF attacks.
  - **SQL Injection:** Use parameterized queries or ORMs to prevent SQL injection attacks (relevant for backend JavaScript).
  - **Denial of Service (DoS):** Implement rate limiting and other measures to prevent DoS attacks.
  - **Man-in-the-Middle (MitM):** Use HTTPS to encrypt communication between the client and server.

- **Input Validation:**
  - Validate all user input on both the client and server sides.
  - Use strong validation rules to prevent malicious input.
  - Sanitize user input to remove potentially harmful characters.

- **Authentication and Authorization Patterns:**
  - Use a secure authentication mechanism to verify user identities.
  - Implement authorization checks to control access to resources.
  - Use role-based access control (RBAC) to manage user permissions.
  - Use JSON Web Tokens (JWT) for stateless authentication.

- **Data Protection Strategies:**
  - Encrypt sensitive data at rest and in transit.
  - Use strong encryption algorithms.
  - Store passwords securely using a hashing algorithm and salt.
  - Protect API keys and other secrets.

- **Secure API Communication:**
  - Use HTTPS for all API communication.
  - Implement proper authentication and authorization for API endpoints.
  - Use rate limiting to prevent abuse.
  - Validate API requests and responses.

## 5. Testing Approaches

- **Unit Testing Strategies:**
  - Write unit tests for individual functions and components.
  - Use mocking and stubbing to isolate units of code.
  - Test edge cases and error conditions.
  - Aim for high code coverage.

- **Integration Testing:**
  - Test the interaction between different modules and components.
  - Verify that different parts of the application work together correctly.

- **End-to-End Testing:**
  - Test the entire application from the user's perspective.
  - Use tools like Cypress or Playwright to automate end-to-end tests.

- **Test Organization:**
  - Organize tests in a way that makes it easy to find and run them.
  - Group tests by feature or module.
  - Use descriptive test names.

- **Mocking and Stubbing:**
  - Use mocking and stubbing to isolate units of code and simulate dependencies.
  - Use mocking libraries like Jest or Sinon.js.

## 6. Common Pitfalls and Gotchas

- **Frequent Mistakes:**
  - Incorrectly handling asynchronous operations (Promises, async/await).
  - Not handling errors properly.
  - Using `var` instead of `let` or `const`.
  - Confusing `==` with `===`.
  - Not keeping dependencies up to date.

- **Edge Cases:**
  - Handling different browser versions and devices.
  - Dealing with network latency and failures.
  - Handling different time zones and locales.
  - Handling large datasets and complex calculations.

- **Version-Specific Issues:**
  - Be aware of breaking changes in new versions of JavaScript frameworks and libraries.
  - Consult the release notes for each new version to identify potential issues.
  - Use transpilation tools like Babel to maintain backwards compatibility if needed.

- **Compatibility Concerns:**
  - Ensure that your code is compatible with the target browsers and devices.
  - Use polyfills to provide support for older browsers.
  - Test your code on different platforms to identify compatibility issues.

- **Debugging Strategies:**
  - Use a debugger to step through your code and inspect variables.
  - Use console logging to track the flow of execution and identify errors.
  - Use browser developer tools for client-side debugging.
  - Use source maps to debug code that has been transpiled or minified.
  - Learn to read and understand stack traces.

## 7. Tooling and Environment

- **Recommended Development Tools:**
  - **IDE:** Visual Studio Code with JavaScript/React extensions.
  - **Package Manager:** npm, Yarn, or pnpm.
  - **Bundler:** Webpack, Parcel, Vite, or Rollup.
  - **Linter:** ESLint with JavaScript-specific rules.
  - **Formatter:** Prettier.
  - **Testing Framework:** Jest, Vitest, Mocha, or Jasmine.

- **Build Configuration:**
  - Use a `package.json` file to manage dependencies and scripts.
  - Configure build tools like Webpack or Vite for your project needs.
  - Use environment variables to configure different environments.

- **Linting and Formatting:**
  - Use ESLint with JavaScript-specific rules to enforce coding standards.
  - Use Prettier to automatically format your code.
  - Integrate linting and formatting into your development workflow using Git hooks or CI/CD pipelines.

- **Deployment Best Practices:**
  - Use a build process to transpile and bundle your code.
  - Minify and compress your code to reduce bundle size.
  - Use a CDN to serve static assets.
  - Implement caching strategies to improve performance.

- **CI/CD Integration:**
  - Integrate your tests and linters into your CI/CD pipeline.
  - Automate the build and deployment process.
  - Use environment variables to configure your application for different environments.

## 8. Examples

```javascript
/**
 * UserService handles user-related operations.
 * Provides methods for user management and authentication.
 */
class UserService {
  constructor(apiClient, cache) {
    this.apiClient = apiClient;
    this.cache = cache;
  }

  /**
   * Finds a user by their email address.
   *
   * @param {string} email - The email address to search for
   * @returns {Promise<Object|null>} Promise containing the user if found
   * @throws {Error} if the request fails
   */
  async findUserByEmail(email) {
    try {
      const cachedUser = await this.cache.get(`user:${email}`);
      if (cachedUser) {
        return JSON.parse(cachedUser);
      }

      const user = await this.apiClient.get(`/users?email=${email}`);
      await this.cache.set(`user:${email}`, JSON.stringify(user));
      return user;
    } catch (error) {
      throw new Error('Failed to find user by email: ' + error.message);
    }
  }
}

/**
 * Tests for UserService functionality.
 */
describe('UserService', () => {
  let service;
  let apiClient;
  let cache;

  beforeEach(() => {
    apiClient = {
      get: jest.fn(),
    };
    
    cache = {
      get: jest.fn(),
      set: jest.fn(),
    };
    
    service = new UserService(apiClient, cache);
  });

  it('should find user by email when user exists', async () => {
    // Given
    const email = 'test@example.com';
    const user = { id: 1, email };
    apiClient.get.mockResolvedValue(user);

    // When
    const result = await service.findUserByEmail(email);

    // Then
    expect(result).toEqual(user);
    expect(apiClient.get).toHaveBeenCalledWith(`/users?email=${email}`);
  });

  it('should return null when user not found', async () => {
    // Given
    const email = 'nonexistent@example.com';
    apiClient.get.mockResolvedValue(null);

    // When
    const result = await service.findUserByEmail(email);

    // Then
    expect(result).toBeNull();
    expect(apiClient.get).toHaveBeenCalledWith(`/users?email=${email}`);
  });
});
