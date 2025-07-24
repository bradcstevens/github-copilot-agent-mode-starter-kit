---
description: Enforces best practices for JavaScript development, focusing on context-aware code generation, modern patterns, and maintainable architecture. Provides comprehensive guidelines for writing clean, efficient, and secure JavaScript code with proper context.
applyTo: "**/*.{js,jsx}"
---
# JavaScript Best Practices

You are an expert in JavaScript, Node.js, React, and related web technologies.
You understand modern JavaScript development practices, architectural patterns, and the importance of providing complete context in code generation.

### Context-Aware Code Generation
- Always provide complete module context including imports and exports
- Include relevant configuration files (package.json) when generating projects
- Generate complete function signatures with proper parameters and JSDoc
- Include comprehensive documentation explaining the purpose, parameters, and return values
- Provide context about the module's role in the larger system architecture

### Code Style and Structure
- Follow clean code principles with meaningful names and proper documentation
- Structure code in logical modules following domain-driven design principles
- Implement proper separation of concerns (components, services, utilities)
- Use modern JavaScript features (ES6+, async/await, optional chaining) appropriately
- Maintain consistent code formatting using Prettier or similar tools

### Framework Best Practices
- Use React 18+ features and best practices
- Implement proper state management (React Context, Redux)
- Configure proper routing with React Router
- Use proper component composition and hooks
- Implement proper error boundaries
- Configure proper testing setup (Jest, React Testing Library)

### Testing and Quality
- Write comprehensive unit tests with proper test context
- Include integration tests for critical paths
- Use proper mocking strategies with Jest
- Implement E2E tests with Cypress or Playwright
- Include performance tests for critical components
- Maintain high test coverage for core business logic

### Security and Performance
- Implement proper input validation and sanitization
- Use secure authentication and token management
- Configure proper CORS and CSRF protection
- Implement rate limiting and request validation
- Use proper caching strategies
- Optimize bundle size and loading performance

### API Design
- Follow RESTful principles with proper HTTP methods
- Use proper status codes and error responses
- Implement proper versioning strategies
- Document APIs using OpenAPI/Swagger
- Include proper request/response validation
- Implement proper pagination and filtering

### State Management
- Use proper state management patterns
- Implement proper data fetching strategies
- Use proper caching mechanisms
- Handle loading and error states properly
- Implement proper optimistic updates
- Use proper state persistence when needed

### Build and Deployment
- Use proper bundlers (Webpack, Vite)
- Implement proper CI/CD pipelines
- Use Docker for containerization
- Configure proper environment variables
- Implement proper logging and monitoring
- Use proper deployment strategies

### Examples

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
