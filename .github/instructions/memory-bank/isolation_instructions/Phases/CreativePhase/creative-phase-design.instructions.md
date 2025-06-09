---
description: Creative phase design rules for UI/UX design mode
applyTo: "**/design*/**,**/ui*/**,**/ux*/**,**/component*/**"
---

# CREATIVE PHASE: DESIGN MODE RULES

> **TL;DR:** This document provides specialized rules for design-focused creative phases, ensuring structured UI/UX design decisions, platform-aware responsive design, and comprehensive component documentation.

## 🎨 DESIGN MODE ACTIVATION CRITERIA

### When to Use Design Mode
- UI/UX component design required
- Dashboard or layout design needed
- Design system creation/updates
- Visual design decisions required
- Component library development
- Responsive design implementation

### Design Mode Prerequisites
```markdown
✅ DESIGN MODE PREREQUISITES
□ Memory Bank structure verified
□ Platform detection completed
□ Style guide available or creatable
□ Project brief provides context
□ Design requirements documented
□ Target devices/platforms identified
```

## 🏗️ DESIGN WORKFLOW ENFORCEMENT

### Mandatory Design Process
```mermaid
graph TD
    Start["🎨 DESIGN MODE START"] --> Validate["🔍 STRUCTURE VALIDATION"]
    Validate --> Platform["🔍 PLATFORM DETECTION"]
    Platform --> Context["📚 CONTEXT LOADING"]
    Context --> Focus["⚡ CONTEXT OPTIMIZATION"]

    Focus --> DesignType{"🎯 DESIGN TYPE"}
    DesignType -->|"Component"| Component["🧩 COMPONENT DESIGN"]
    DesignType -->|"Dashboard"| Dashboard["📊 DASHBOARD DESIGN"]
    DesignType -->|"Layout"| Layout["📐 LAYOUT DESIGN"]
    DesignType -->|"Flow"| Flow["🔄 USER FLOW DESIGN"]

    Component --> Responsive["📱 RESPONSIVE VALIDATION"]
    Dashboard --> Responsive
    Layout --> Responsive
    Flow --> Responsive

    Responsive --> Documentation["📋 DESIGN DOCUMENTATION"]
    Documentation --> StyleGuide["📝 STYLE GUIDE UPDATE"]
    StyleGuide --> Complete["✅ DESIGN COMPLETE"]

    style Start fill:#e91e63,stroke:#ad1457,color:white
    style Platform fill:#ff5722,stroke:#d84315,color:white
    style Responsive fill:#4caf50,stroke:#2e7d32,color:white
    style Complete fill:#2196f3,stroke:#1565c0,color:white
```

## 🔍 PLATFORM-AWARE DESIGN RULES

### Automatic Platform Detection
Before any design work, the system MUST:
1. Detect project platform (Web/React Native/Flutter/iOS/Android)
2. Load appropriate responsive strategy
3. Apply platform-specific design guidelines
4. Set correct touch targets and breakpoints

### Platform-Specific Design Requirements

#### 🌐 Web Projects
```markdown
✅ WEB DESIGN REQUIREMENTS
□ Mobile-first responsive design (min-width media queries)
□ Touch targets minimum 44px for mobile viewports
□ CSS Grid/Flexbox for responsive layouts
□ Breakpoints: 640px (sm), 768px (md), 1024px (lg), 1280px (xl)
□ Progressive enhancement approach
□ Accessibility compliance (WCAG AA)
□ Cross-browser compatibility considerations
```

#### 📱 Mobile App Projects
```markdown
✅ MOBILE APP DESIGN REQUIREMENTS
□ Platform-specific touch targets (44pt iOS / 48dp Android)
□ Safe area handling for notched devices
□ Platform design guidelines (HIG/Material Design)
□ Orientation change handling
□ Platform-specific navigation patterns
□ Accessibility features (VoiceOver/TalkBack)
□ Performance optimization for device capabilities
```

## ⚡ CONTEXT OPTIMIZATION RULES

### Component Isolation Strategy
Design work MUST be broken into focused components:

1. **Single Component Focus**: Work on one component at a time
2. **Progressive Disclosure**: Start simple, add complexity gradually
3. **Memory Chunking**: Keep related design decisions together
4. **Validation Checkpoints**: Validate each component before proceeding

### Context Management Protocol
```markdown
🔄 CONTEXT OPTIMIZATION PROTOCOL
1. Load only essential files for current design component
2. Use progressive disclosure for complex designs
3. Document decisions immediately to preserve context
4. Validate against style guide at each checkpoint
5. Update Memory Bank with design progress
```

## 📋 DESIGN DOCUMENTATION REQUIREMENTS

### Mandatory Documentation Elements
Every design component MUST include:

```markdown
# Component: [Name]

## 🎯 Purpose & Context
[What this component does and why]

## 🎨 Visual Specifications
- **Colors**: [Specific color values from style guide]
- **Typography**: [Font families, sizes, weights]
- **Spacing**: [Margins, padding using design system]
- **Layout**: [Grid system, positioning]

## 📱 Responsive Behavior
### Mobile (< 640px)
[Mobile-specific adaptations]

### Tablet (640px - 1024px)
[Tablet-specific adaptations]

### Desktop (> 1024px)
[Desktop-specific adaptations]

## ♿ Accessibility Requirements
- **ARIA**: [Required ARIA attributes]
- **Keyboard**: [Keyboard navigation support]
- **Screen Reader**: [Screen reader compatibility]
- **Color Contrast**: [Contrast ratios verified]

## 🔧 Component API (if applicable)
[Props, slots, events, variants]

## 🧪 Usage Examples
[Implementation examples and use cases]

## ✅ Design Validation
□ Meets functional requirements
□ Follows style guide
□ Responsive across all breakpoints
□ Accessibility compliant
□ Performance optimized
□ Cross-platform compatible (if applicable)
```

## 🚨 DESIGN VALIDATION CHECKPOINTS

### Pre-Design Validation
```bash
# MANDATORY: Run before starting design work
1. Verify Memory Bank structure exists
2. Confirm platform detection completed
3. Load style guide or create if missing
4. Validate project context and requirements
5. Ensure responsive strategy is defined
```

### Mid-Design Validation
```bash
# MANDATORY: Run during design process
1. Validate component against style guide
2. Check responsive behavior across breakpoints
3. Verify accessibility requirements
4. Test interaction states and variants
5. Document design decisions immediately
```

### Post-Design Validation
```bash
# MANDATORY: Run before completing design
1. Final responsive validation across all platforms
2. Accessibility audit completion
3. Style guide compliance verification
4. Implementation readiness check
5. Documentation completeness review
```

## 🔄 INTEGRATION WITH OTHER MODES

### Transition to IMPLEMENT Mode
Design mode completion triggers:
```markdown
✅ DESIGN COMPLETE CHECKLIST
□ All components documented with specifications
□ Responsive behavior defined for all breakpoints
□ Accessibility requirements documented
□ Style guide updated with new patterns
□ Implementation notes provided for developers
□ Asset requirements identified (icons, images, fonts)
□ Dependencies and libraries specified
□ Build sequence planned

🚀 READY FOR IMPLEMENT MODE
```

### Integration with PLAN Mode
Design decisions inform implementation planning:
- Component complexity affects development time estimates
- Design system choices influence technology stack
- Responsive requirements impact development approach
- Accessibility needs affect implementation strategy

## 🎯 DESIGN EXCELLENCE CRITERIA

### Creative Excellence Standards
```markdown
✅ DESIGN EXCELLENCE CHECKLIST
□ User-centered design approach applied
□ Multiple design options explored and evaluated
□ Design system consistency maintained
□ Innovation balanced with usability
□ Platform-specific patterns respected
□ Performance implications considered
□ Accessibility integrated from the start
□ Scalability and maintainability planned
```

### Quality Assurance Integration
Design mode integrates with QA validation:
- Automated responsive testing
- Accessibility compliance verification
- Style guide adherence checking
- Cross-platform compatibility validation
- Performance impact assessment

---

**Remember**: Design mode is about creating excellent, platform-aware, accessible designs that are ready for implementation. Every design decision should be documented, validated, and aligned with the overall project goals.
