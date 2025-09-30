---
description: "This instruction provides comprehensive guidance for Nuxt 3 development, covering code organization, performance, security, testing, and common pitfalls. It helps developers build robust, scalable, and maintainable Nuxt 3 applications by adhering to community-accepted best practices and coding standards."
applyTo: "*.js,*.jsx,*.ts,*.tsx,*.vue"
---
# Nuxt 3 Best Practices

This document outlines best practices for developing Nuxt 3 applications, focusing on code organization, performance optimization, security, testing strategies, and common pitfalls to avoid. Adhering to these guidelines will help you build robust, scalable, and maintainable applications.

## 1. Code Organization and Structure

### Directory Structure

*   **`pages/`**: Contains page components that automatically become routes.
    *   `index.vue`: Home page route (`/`)
    *   `about.vue`: About page route (`/about`)
    *   `[slug].vue`: Dynamic route segments using brackets
    *   `[...slug].vue`: Catch-all dynamic routes
*   **`layouts/`**: Contains layout components that wrap pages.
    *   `default.vue`: Default layout applied to all pages
    *   `custom.vue`: Custom layouts for specific pages
*   **`components/`**: Auto-imported reusable Vue components.
    *   Automatically available without explicit imports
    *   Use subdirectories for organization (e.g., `components/ui/Button.vue`)
    *   Use `Lazy` prefix for lazy-loaded components (`LazyModal.vue`)
*   **`composables/`**: Auto-imported Vue composables and utility functions.
    *   Use `use` prefix for composables (e.g., `useAuth.ts`)
    *   Automatically available across the application
*   **`plugins/`**: Plugins to extend Vue or add global functionality.
*   **`middleware/`**: Route middleware for navigation guards.
    *   `auth.ts`: Authentication middleware
    *   `guest.ts`: Guest-only middleware
*   **`server/`**: Server-side functionality powered by Nitro.
    *   `api/`: API routes (`server/api/users.ts` → `/api/users`)
    *   `middleware/`: Server middleware
*   **`assets/`**: Assets processed by the build tool (Vite/Webpack).
    *   Images, stylesheets, fonts that need processing
    *   Referenced with `~/assets/` or imported
*   **`public/`**: Static assets served directly.
    *   Files served from the root (`public/favicon.ico` → `/favicon.ico`)
    *   Not processed by the build tool
*   **`utils/`**: Auto-imported utility functions.
    *   Available throughout the Vue part of your app
    *   Semantic separation from composables

### File Naming Conventions

*   **Components:** `ComponentName.vue` (PascalCase)
*   **Pages:** `kebab-case.vue` or `index.vue`
*   **Layouts:** `kebab-case.vue` or `default.vue`
*   **Composables:** `useComposableName.ts`
*   **Utils:** `utilityName.ts`
*   **Middleware:** `middleware-name.ts`
*   **API Routes:** `route-name.ts` or `[param].ts`

### Component Architecture

*   **Use `<script setup>` syntax:** Modern composition API approach for all components
*   **Server Components by default:** Leverage server-side rendering for better performance
*   **Client Components when needed:** Use `.client.vue` suffix for client-only components
*   **Lazy Loading:** Use `Lazy` prefix for components that should load on demand
*   **Auto-imports:** Take advantage of Nuxt's auto-import system
*   **definePageMeta:** Use for page-specific configuration and metadata

### Code Splitting and Lazy Loading

*   **Automatic code splitting:** Nuxt automatically splits code by routes
*   **Lazy components:** Add `Lazy` prefix to component names for on-demand loading
*   **Dynamic imports:** Use for conditional component loading
*   **Prefetching:** Nuxt automatically prefetches linked pages in viewport

## 2. Common Patterns and Anti-patterns

### Design Patterns

*   **Composables:** Extract reusable stateful logic into composables
*   **Auto-imports:** Leverage Nuxt's auto-import system for cleaner code
*   **Universal Rendering:** Combine SSR and SPA benefits
*   **Middleware patterns:** Use route middleware for authentication and guards
*   **Plugin system:** Extend functionality with plugins

### Recommended Approaches

*   **Data fetching:** Use `useFetch`, `useAsyncData`, or `$fetch` for data fetching
*   **State management:** Use `useState` for SSR-compatible reactive state, or Pinia for complex state
*   **Styling:** Use Tailwind CSS, CSS Modules, or `<style scoped>` in components
*   **Form handling:** Use `useForm` composables or libraries like VeeValidate
*   **Error handling:** Use `NuxtErrorBoundary` and `error.vue` pages
*   **SEO:** Use `useHead`, `useSeoMeta`, or `definePageMeta` for meta tags

### Anti-patterns and Code Smells

*   **Using `$fetch` without `useAsyncData`:** Causes double data fetching (server + client)
*   **Not using auto-imports:** Manually importing what Nuxt provides automatically
*   **Overusing useState:** For simple local state, use regular `ref` or `reactive`
*   **Ignoring hydration:** Not considering server-client differences
*   **Heavy client-side components:** Not leveraging server-side rendering benefits
*   **Manual route definitions:** Let Nuxt handle routing through file structure

### State Management

*   **Local State:** Use `ref` and `reactive` for component-specific state
*   **Global State (SSR-compatible):** Use `useState` with unique keys
*   **Complex State:** Use Pinia for advanced state management needs
*   **Shared State:** Use composables to share state between components

### Error Handling

*   **`NuxtErrorBoundary`:** Wrap components to catch and handle errors gracefully
*   **Error pages:** Use `error.vue` in layouts or pages directory
*   **`createError`:** Create structured errors with metadata
*   **`clearError`:** Clear errors and redirect users
*   **Server errors:** Handle API errors in server routes properly

## 3. Performance Considerations

### Optimization Techniques

*   **Image optimization:** Use `<NuxtImg>` and `<NuxtPicture>` for automatic optimization
*   **Font optimization:** Use `@nuxtjs/google-fonts` or `@nuxt/fonts` modules
*   **Lazy loading:** Use `Lazy` prefix for components and `v-lazy` for images
*   **Prefetching:** Leverage automatic prefetching with `<NuxtLink>`
*   **Code splitting:** Automatic route-based splitting, manual with dynamic imports
*   **SSR/SSG:** Use appropriate rendering mode for your content
*   **Caching:** Implement caching strategies for API calls and static content

### Memory Management

*   **Cleanup in composables:** Use `onUnmounted` to clean up event listeners
*   **Avoid memory leaks:** Be cautious with global state and event listeners
*   **Efficient reactivity:** Use `shallowRef` and `shallowReactive` when appropriate

### Rendering Optimization

*   **Universal Rendering:** Get fast first load (SSR) + fast navigation (SPA)
*   **Static Generation:** Use `nuxt generate` for static content
*   **Hybrid Rendering:** Mix SSR and static generation with ISR
*   **Client-side rendering:** Use for highly interactive applications

### Bundle Size Optimization

*   **Tree shaking:** Nuxt automatically removes unused code
*   **Module optimization:** Choose lightweight modules and libraries
*   **Dynamic imports:** Split large dependencies into separate chunks
*   **Bundle analysis:** Use Nuxt DevTools to analyze bundle size

### Data Fetching Best Practices

*   **`useFetch`:** For simple HTTP requests with automatic key generation
*   **`useAsyncData`:** For complex data fetching logic with custom keys
*   **`$fetch`:** For programmatic API calls (with proper wrapping)
*   **Key management:** Use unique keys for data fetching to prevent conflicts
*   **Error handling:** Always handle loading and error states

## 4. Security Best Practices

### Common Vulnerabilities

*   **XSS Prevention:** Sanitize user input and use Vue's built-in XSS protection
*   **CSRF Protection:** Implement CSRF tokens for forms and API calls
*   **Server-side validation:** Always validate input on the server
*   **Secrets management:** Never expose API keys or secrets in client code
*   **Authentication:** Use secure authentication methods and session management

### Input Validation

*   **Server-side validation:** Validate all input in API routes
*   **Client-side validation:** Use for UX, but don't rely on it for security
*   **Sanitization:** Clean user input to prevent malicious code injection
*   **Type safety:** Use TypeScript and validation libraries like Zod

### Authentication and Authorization

*   **Secure authentication:** Use proven solutions like Supabase, Auth0, or custom JWT
*   **Session management:** Implement secure session handling
*   **Route protection:** Use middleware for authentication guards
*   **Role-based access:** Implement proper authorization checks

### Data Protection

*   **Environment variables:** Use `.env` files and `runtimeConfig` for secrets
*   **HTTPS enforcement:** Always use HTTPS in production
*   **Secure headers:** Configure security headers in Nuxt config
*   **Data encryption:** Encrypt sensitive data at rest and in transit

### Runtime Configuration

*   **`runtimeConfig`:** For environment variables and secrets
*   **`app.config`:** For public configuration that can be updated at runtime
*   **Environment separation:** Different configs for development/staging/production

## 5. Testing Approaches

### Unit Testing

*   **Component testing:** Use `@nuxt/test-utils` with Vitest or Jest
*   **Composable testing:** Test composables in isolation
*   **Mock dependencies:** Mock external services and APIs
*   **Test utilities:** Use Vue Test Utils for component testing

### Integration Testing

*   **API testing:** Test server routes and middleware
*   **Page testing:** Test complete page functionality
*   **Navigation testing:** Test routing and middleware behavior

### End-to-End Testing

*   **User flow testing:** Use Cypress or Playwright for E2E tests
*   **Critical path testing:** Focus on essential user journeys
*   **Cross-browser testing:** Ensure compatibility across browsers

### Test Organization

*   **Co-location:** Keep tests near the code they test
*   **Naming conventions:** Use `.test.ts` or `.spec.ts` suffixes
*   **Test categories:** Organize by unit, integration, and E2E tests

## 6. Common Pitfalls and Gotchas

### Frequent Mistakes

*   **Double data fetching:** Using `$fetch` without proper wrapping
*   **Hydration mismatches:** Server and client rendering differently
*   **useState key conflicts:** Using non-unique keys for global state
*   **Middleware order:** Not understanding middleware execution order
*   **Build vs. runtime:** Confusing build-time and runtime configuration
*   **Auto-import conflicts:** Naming conflicts with auto-imported utilities

### Edge Cases

*   **Client-only code:** Use `.client.vue` or `process.client` checks
*   **Server-only code:** Use `.server.vue` or `process.server` checks
*   **Browser compatibility:** Test across different browsers and devices
*   **SEO considerations:** Ensure proper meta tags and structured data

### Version-Specific Issues

*   **Nuxt 2 to 3 migration:** Use Nuxt Bridge or migrate incrementally
*   **Breaking changes:** Stay updated with Nuxt release notes
*   **Module compatibility:** Ensure modules support Nuxt 3

### Debugging Strategies

*   **Nuxt DevTools:** Use the official DevTools for debugging
*   **Server logs:** Check server console for SSR issues
*   **Client debugging:** Use browser DevTools for client-side issues
*   **Network inspection:** Monitor API calls and data fetching

## 7. Tooling and Environment

### Recommended Development Tools

*   **VS Code:** With Volar extension (not Vetur) for Vue 3 support
*   **Nuxt DevTools:** Official debugging and development tools
*   **TypeScript:** Built-in TypeScript support with zero configuration
*   **ESLint:** Code linting with Nuxt-specific rules
*   **Prettier:** Code formatting for consistent style

### Build Configuration

*   **Vite:** Default build tool (faster than Webpack)
*   **Nitro:** Server engine for universal apps
*   **Environment variables:** Use `.env` files and `runtimeConfig`
*   **Module configuration:** Configure modules in `nuxt.config.ts`

### Development Workflow

*   **`nuxi` CLI:** Use Nuxt's CLI for scaffolding and commands
*   **Hot Module Replacement:** Automatic with Vite in development
*   **Type checking:** Enable with `nuxi typecheck` command
*   **Auto-imports:** Leverage automatic imports for better DX

### Deployment

*   **GitHub Pages:** Recommended for static sites with free hosting and automatic deployment via GitHub Actions
*   **Vercel:** Excellent platform with zero-config deployment and edge functions
*   **Netlify:** Good alternative with form handling and edge functions
*   **Static hosting:** Use `nuxt generate` for static site deployment
*   **Server deployment:** Use `nuxt build` for SSR deployment

### Modules and Ecosystem

*   **Official modules:** Use `@nuxt/` modules for common functionality
*   **Community modules:** Browse https://nuxt.com/modules for third-party modules
*   **Module development:** Use `@nuxt/kit` for creating custom modules
*   **Layer system:** Use layers for code reuse across projects

## 8. Nuxt 3 Specific Features

### Composition API and Auto-imports

*   **`<script setup>`:** Default syntax for all components
*   **Auto-imports:** Components, composables, and utils imported automatically
*   **`definePageMeta`:** Set page metadata and configuration
*   **`defineNuxtComponent`:** Alternative for Options API (if needed)

### Built-in Composables

*   **`useHead`:** Manage document head reactively
*   **`useSeoMeta`:** Server-optimized SEO meta tags
*   **`useRoute`:** Access current route information
*   **`useRouter`:** Navigate programmatically
*   **`useState`:** SSR-friendly global state
*   **`useCookie`:** Manage cookies reactively
*   **`useRequestHeaders`:** Access request headers
*   **`useRuntimeConfig`:** Access runtime configuration

### Data Fetching Composables

*   **`useFetch`:** Simple HTTP requests with caching
*   **`useAsyncData`:** Advanced data fetching with custom logic
*   **`useLazyFetch`:** Non-blocking data fetching
*   **`useLazyAsyncData`:** Non-blocking async data
*   **`$fetch`:** Programmatic HTTP requests

### Utilities and Helpers

*   **`navigateTo`:** Programmatic navigation
*   **`createError`:** Create structured errors
*   **`clearError`:** Clear error state
*   **`refresh`:** Refresh specific data
*   **`preloadComponents`:** Preload components manually
*   **`defineNuxtLink`:** Create custom link components

### Server-side Features

*   **API routes:** File-based API in `server/api/`
*   **Server middleware:** Global server middleware
*   **Storage API:** Built-in key-value storage
*   **Server utilities:** Auto-imported server utilities

## 9. Migration and Compatibility

### Nuxt 2 to Nuxt 3 Migration

*   **Nuxt Bridge:** Transitional layer for gradual migration
*   **Breaking changes:** Review composition API changes
*   **Module updates:** Ensure modules support Nuxt 3
*   **Testing strategy:** Comprehensive testing during migration

### Compatibility Considerations

*   **Vue 3:** Built on Vue 3 with Composition API
*   **TypeScript:** First-class TypeScript support
*   **Node.js:** Minimum Node.js version requirements
*   **Browser support:** Modern browsers with ES2015+ support

This document provides a comprehensive guide to Nuxt 3 best practices. Regularly review the official Nuxt 3 documentation and community resources for the latest updates and patterns.
