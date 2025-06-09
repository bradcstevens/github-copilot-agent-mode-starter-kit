---
description: Atomic design methodology rules for systematic component design
applyTo: "**/design*/**,**/ui*/**,**/ux*/**,**/component*/**"
---

# ATOMIC DESIGN METHODOLOGY FOR ENHANCED DESIGN MODE

> **TL;DR:** This document provides comprehensive rules for implementing atomic design methodology in the enhanced design mode, ensuring systematic component development from design tokens to complete user interfaces.

## ⚛️ ATOMIC DESIGN HIERARCHY OVERVIEW

### The Five Levels of Atomic Design
```mermaid
graph TD
    DesignTokens["🎨 DESIGN TOKENS<br>Colors, Typography, Spacing, Elevation"] --> Atoms["⚛️ ATOMS<br>Basic UI Elements"]
    Atoms --> Molecules["🧬 MOLECULES<br>Simple Component Groups"]
    Molecules --> Organisms["🦠 ORGANISMS<br>Complex UI Sections"]
    Organisms --> Templates["📋 TEMPLATES<br>Page-Level Structures"]
    Templates --> Pages["📄 PAGES<br>Complete User Interfaces"]
    
    %% Cross-cutting concerns
    DesignTokens -.-> Responsive["📱 RESPONSIVE BEHAVIOR<br>Applied at all levels"]
    DesignTokens -.-> Accessibility["♿ ACCESSIBILITY<br>Integrated throughout"]
    DesignTokens -.-> Performance["⚡ PERFORMANCE<br>Optimized at each level"]
    
    style DesignTokens fill:#ffeb3b,stroke:#f57c00,color:black
    style Atoms fill:#4caf50,stroke:#2e7d32,color:white
    style Molecules fill:#2196f3,stroke:#1565c0,color:white
    style Organisms fill:#ff9800,stroke:#ef6c00,color:white
    style Templates fill:#9c27b0,stroke:#6a1b99,color:white
    style Pages fill:#f44336,stroke:#c62828,color:white
    style Responsive fill:#795548,stroke:#5d4037,color:white
    style Accessibility fill:#607d8b,stroke:#455a64,color:white
    style Performance fill:#009688,stroke:#00695c,color:white
```

## 🎨 DESIGN TOKENS (FOUNDATION LEVEL)

### Design Token Categories
Design tokens are the foundational elements that ensure consistency across all atomic levels:

#### Color Tokens
```markdown
✅ COLOR TOKEN REQUIREMENTS
□ Primary color palette with accessibility-compliant variations
□ Secondary and accent color systems
□ Semantic color tokens (success, warning, error, info)
□ Neutral color scale (grays) with sufficient contrast ratios
□ Dark mode and high contrast variants
□ Platform-specific color adaptations (iOS Dynamic Colors, Material You)
□ WCAG AAA contrast ratios verified (7:1 for normal text, 4.5:1 for large text)
```

#### Typography Tokens
```markdown
✅ TYPOGRAPHY TOKEN REQUIREMENTS
□ Font family hierarchy (primary, secondary, monospace)
□ Font size scale with fluid typography support
□ Font weight variations (light, regular, medium, semibold, bold)
□ Line height system for optimal readability
□ Letter spacing adjustments for different sizes
□ Platform-specific typography (San Francisco for iOS, Roboto for Android)
□ Dynamic Type support (iOS) and font scaling (Android)
□ Accessibility considerations (minimum 16px base size)
```

#### Spacing Tokens
```markdown
✅ SPACING TOKEN REQUIREMENTS
□ Base spacing unit (typically 4px or 8px)
□ Spacing scale (0.25x, 0.5x, 1x, 1.5x, 2x, 3x, 4x, 6x, 8x)
□ Component-specific spacing (padding, margin, gap)
□ Touch target spacing (minimum 8px between interactive elements)
□ Platform-specific spacing adaptations
□ Responsive spacing adjustments
□ Accessibility spacing requirements
```

#### Elevation and Shadow Tokens
```markdown
✅ ELEVATION TOKEN REQUIREMENTS
□ Elevation scale (0-24 levels for Material Design)
□ Shadow definitions for each elevation level
□ Platform-specific elevation (iOS shadows vs Android elevation)
□ Dark mode shadow adaptations
□ Performance-optimized shadow implementations
□ Accessibility considerations (sufficient contrast for shadows)
```

### Design Token Implementation Protocol
```markdown
🔄 DESIGN TOKEN WORKFLOW
1. Define base tokens (primitive values)
2. Create semantic tokens (purpose-based aliases)
3. Implement platform-specific token variations
4. Validate accessibility compliance for all tokens
5. Test tokens across different themes and modes
6. Document token usage guidelines and examples
7. Create token validation and testing protocols
```

## ⚛️ ATOMS (BASIC UI ELEMENTS)

### Atom Categories and Requirements
Atoms are the basic building blocks of the interface, built using design tokens:

#### Input Atoms
```markdown
✅ INPUT ATOM REQUIREMENTS
□ Text inputs with all states (default, focus, error, disabled)
□ Checkbox and radio button components
□ Toggle switches with platform-appropriate styling
□ Slider components with accessibility support
□ File upload components with drag-and-drop
□ Search input with clear and submit actions
□ All inputs meet minimum touch target requirements (44pt/48dp)
□ Proper ARIA labeling and keyboard navigation
□ Error state handling with clear messaging
□ Platform-specific styling (iOS vs Android vs Web)
```

#### Button Atoms
```markdown
✅ BUTTON ATOM REQUIREMENTS
□ Primary, secondary, and tertiary button variants
□ Icon buttons with proper accessibility labels
□ Floating action buttons (mobile platforms)
□ Link buttons with proper focus indicators
□ All button states (default, hover, active, disabled, loading)
□ Minimum touch target size with proper spacing
□ Keyboard navigation and activation support
□ Screen reader compatibility with proper announcements
□ Platform-specific button styling and behavior
□ Loading states with appropriate feedback
```

#### Display Atoms
```markdown
✅ DISPLAY ATOM REQUIREMENTS
□ Typography components (headings, body text, captions)
□ Icon components with accessibility support
□ Avatar components with fallback states
□ Badge and tag components
□ Divider and separator components
□ Loading indicators (spinners, progress bars)
□ All components responsive across breakpoints
□ Proper semantic HTML structure
□ Screen reader optimization
□ High contrast mode support
```

### Atom Design Protocol
```markdown
🔄 ATOM DESIGN WORKFLOW
1. Start with design token foundation
2. Design basic visual appearance
3. Define all interactive states
4. Implement responsive behavior
5. Add accessibility features (ARIA, keyboard support)
6. Test across platforms and devices
7. Document component API and usage guidelines
8. Validate against design system standards
```

## 🧬 MOLECULES (SIMPLE COMPONENT GROUPS)

### Molecule Categories and Requirements
Molecules combine atoms to create functional UI components:

#### Form Molecules
```markdown
✅ FORM MOLECULE REQUIREMENTS
□ Form field groups (label + input + help text + error message)
□ Search bars with input, icon, and clear functionality
□ Login forms with username, password, and submit
□ Filter groups with multiple input types
□ Address forms with proper field grouping
□ All molecules maintain atom accessibility features
□ Proper form validation and error handling
□ Responsive layout adaptation
□ Platform-specific form patterns
□ Keyboard navigation between form elements
```

#### Navigation Molecules
```markdown
✅ NAVIGATION MOLECULE REQUIREMENTS
□ Breadcrumb navigation with proper hierarchy
□ Pagination components with accessibility
□ Tab navigation with proper ARIA implementation
□ Menu items with icons and labels
□ Navigation links with active states
□ All navigation accessible via keyboard
□ Screen reader navigation support
□ Responsive navigation patterns
□ Platform-specific navigation conventions
□ Focus management and indication
```

#### Content Molecules
```markdown
✅ CONTENT MOLECULE REQUIREMENTS
□ Card headers with title, subtitle, and actions
□ Media objects with image and text content
□ List items with various content types
□ Notification components with dismiss functionality
□ Tooltip components with proper positioning
□ All content accessible and semantic
□ Responsive content adaptation
□ Proper heading hierarchy
□ Screen reader optimization
□ Touch-friendly interaction areas
```

### Molecule Design Protocol
```markdown
🔄 MOLECULE DESIGN WORKFLOW
1. Identify required atoms for the molecule
2. Design composition and layout
3. Define interaction patterns and states
4. Implement responsive behavior
5. Ensure accessibility compliance
6. Test component combinations
7. Document molecule API and usage
8. Validate against design system patterns
```

## 🦠 ORGANISMS (COMPLEX UI SECTIONS)

### Organism Categories and Requirements
Organisms are complex UI components that combine molecules and atoms:

#### Navigation Organisms
```markdown
✅ NAVIGATION ORGANISM REQUIREMENTS
□ Header navigation with logo, menu, and user actions
□ Sidebar navigation with hierarchical menu structure
□ Footer navigation with links and information
□ Mobile navigation with hamburger menu and drawer
□ Breadcrumb navigation with proper hierarchy
□ All navigation organisms fully accessible
□ Responsive navigation patterns
□ Keyboard navigation support
□ Screen reader navigation landmarks
□ Focus management across navigation elements
```

#### Content Organisms
```markdown
✅ CONTENT ORGANISM REQUIREMENTS
□ Article layouts with header, content, and metadata
□ Card grids with responsive layout
□ Data tables with sorting, filtering, and pagination
□ Form sections with grouped fields and validation
□ Comment sections with threading and actions
□ All content organisms semantically structured
□ Responsive layout adaptation
□ Accessibility compliance (landmarks, headings)
□ Keyboard navigation support
□ Screen reader optimization
```

#### Interactive Organisms
```markdown
✅ INTERACTIVE ORGANISM REQUIREMENTS
□ Modal dialogs with proper focus management
□ Dropdown menus with keyboard navigation
□ Accordion components with expand/collapse
□ Carousel components with accessibility controls
□ Dashboard widgets with data visualization
□ All interactive organisms accessible
□ Proper focus management and trapping
□ Keyboard interaction support
□ Screen reader announcements
□ Touch gesture support (mobile)
```

### Organism Design Protocol
```markdown
🔄 ORGANISM DESIGN WORKFLOW
1. Analyze required molecules and atoms
2. Design overall layout and structure
3. Define complex interaction patterns
4. Implement advanced responsive behavior
5. Ensure comprehensive accessibility
6. Test organism in various contexts
7. Document organism API and integration
8. Validate against user experience requirements
```

## 📋 TEMPLATES (PAGE-LEVEL STRUCTURES)

### Template Categories and Requirements
Templates define page-level layout structures without specific content:

#### Layout Templates
```markdown
✅ LAYOUT TEMPLATE REQUIREMENTS
□ Single-column layouts for mobile and simple content
□ Two-column layouts with sidebar and main content
□ Three-column layouts for complex information architecture
□ Dashboard layouts with widget areas and navigation
□ Landing page layouts with hero, features, and footer
□ All templates responsive across all breakpoints
□ Proper semantic structure (header, main, aside, footer)
□ Accessibility landmarks and navigation
□ Flexible content areas for various content types
□ Platform-specific layout adaptations
```

#### Modal and Overlay Templates
```markdown
✅ MODAL TEMPLATE REQUIREMENTS
□ Dialog templates with header, content, and actions
□ Drawer templates for mobile navigation
□ Popover templates for contextual information
□ Full-screen overlay templates
□ Sheet templates for mobile bottom sheets
□ All modal templates with proper focus management
□ Escape key and backdrop click handling
□ Screen reader announcements
□ Responsive modal behavior
□ Platform-specific modal patterns
```

#### Specialized Templates
```markdown
✅ SPECIALIZED TEMPLATE REQUIREMENTS
□ Form templates with multi-step flows
□ E-commerce templates with product layouts
□ Blog templates with article structure
□ Dashboard templates with data visualization areas
□ Error page templates with recovery actions
□ All templates semantically structured
□ Responsive layout adaptation
□ Accessibility compliance
□ SEO optimization (web platforms)
□ Performance optimization
```

### Template Design Protocol
```markdown
🔄 TEMPLATE DESIGN WORKFLOW
1. Define page structure and layout requirements
2. Identify required organisms and their placement
3. Design responsive layout behavior
4. Implement accessibility structure (landmarks, headings)
5. Test template with various content types
6. Validate responsive behavior across devices
7. Document template usage and customization
8. Ensure performance optimization
```

## 📄 PAGES (COMPLETE USER INTERFACES)

### Page Categories and Requirements
Pages are complete user interfaces that apply templates with real content:

#### Application Pages
```markdown
✅ APPLICATION PAGE REQUIREMENTS
□ Dashboard pages with real data and interactions
□ Profile pages with user information and settings
□ Settings pages with configuration options
□ Search results pages with filtering and sorting
□ Detail pages with comprehensive information
□ All pages fully functional and accessible
□ Complete user task flows
□ Error handling and edge cases
□ Performance optimization
□ SEO optimization (web platforms)
```

#### Marketing Pages
```markdown
✅ MARKETING PAGE REQUIREMENTS
□ Landing pages with compelling content and CTAs
□ Product pages with features and benefits
□ Pricing pages with comparison tables
□ About pages with team and company information
□ Contact pages with forms and information
□ All pages optimized for conversion
□ Responsive design across all devices
□ Accessibility compliance
□ SEO optimization
□ Performance optimization
```

#### Utility Pages
```markdown
✅ UTILITY PAGE REQUIREMENTS
□ Login and registration pages
□ Error pages (404, 500, etc.) with recovery options
□ Loading pages with progress indicators
□ Maintenance pages with status information
□ Privacy policy and terms of service pages
□ All pages accessible and functional
□ Proper error handling
□ Clear user guidance
□ Responsive design
□ Performance optimization
```

### Page Design Protocol
```markdown
🔄 PAGE DESIGN WORKFLOW
1. Apply appropriate template structure
2. Populate with real content and data
3. Implement complete user interactions
4. Test full user task flows
5. Validate accessibility with real content
6. Optimize performance with actual data
7. Test across all target devices and platforms
8. Document page specifications and requirements
```

## 🔄 ATOMIC DESIGN INTEGRATION PROTOCOLS

### Cross-Level Consistency
```markdown
✅ ATOMIC DESIGN CONSISTENCY REQUIREMENTS
□ Design tokens used consistently across all levels
□ Component APIs follow consistent patterns
□ Accessibility implementation consistent throughout
□ Responsive behavior coherent across components
□ Performance optimization applied at all levels
□ Documentation standards maintained across levels
□ Testing protocols applied consistently
□ Platform adaptations coordinated across levels
```

### Component Dependency Management
```markdown
✅ DEPENDENCY MANAGEMENT REQUIREMENTS
□ Clear dependency hierarchy documented
□ Version compatibility maintained across levels
□ Breaking changes managed with migration guides
□ Component composition patterns documented
□ Reusability maximized through proper abstraction
□ Performance impact of dependencies monitored
□ Accessibility inheritance properly implemented
□ Platform-specific dependencies clearly identified
```

### Validation and Testing Protocols
```markdown
✅ ATOMIC DESIGN VALIDATION REQUIREMENTS
□ Unit testing for individual atoms
□ Integration testing for molecules and organisms
□ Visual regression testing across all levels
□ Accessibility testing with assistive technology
□ Performance testing for component combinations
□ Cross-platform testing for all components
□ User testing with complete page implementations
□ Documentation accuracy validation
```

## 🚨 ATOMIC DESIGN ERROR PREVENTION

### Common Atomic Design Pitfalls
```markdown
❌ ATOMIC DESIGN ANTI-PATTERNS TO AVOID
□ Skipping design token foundation
□ Creating atoms that are too complex
□ Molecules that don't compose properly
□ Organisms that are too tightly coupled
□ Templates that are too rigid or too flexible
□ Pages that don't follow template structure
□ Inconsistent component APIs across levels
□ Poor accessibility implementation inheritance
□ Inadequate responsive behavior coordination
□ Performance issues from component composition
```

### Recovery and Remediation Strategies
```markdown
🔧 ATOMIC DESIGN RECOVERY PROTOCOLS
□ Design token audit and standardization
□ Component complexity analysis and refactoring
□ API consistency review and standardization
□ Accessibility audit across all levels
□ Performance optimization review
□ Documentation update and validation
□ Testing protocol implementation
□ User feedback integration and iteration
```

---

**Remember**: Atomic design methodology ensures systematic, scalable, and maintainable component development. Every level builds upon the previous one while maintaining consistency, accessibility, and performance across the entire design system.