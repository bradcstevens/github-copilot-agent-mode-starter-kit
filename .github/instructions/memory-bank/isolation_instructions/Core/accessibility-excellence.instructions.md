---
description: Advanced accessibility excellence rules for WCAG AAA compliance in design mode
globs: "**/design*/**", "**/ui*/**", "**/ux*/**", "**/component*/**", "**/accessibility*/**"
alwaysApply: false
---

# ACCESSIBILITY EXCELLENCE FOR ENHANCED DESIGN MODE

> **TL;DR:** This document provides comprehensive accessibility rules for achieving WCAG AAA compliance in the enhanced design mode, ensuring inclusive design for all users across all platforms and assistive technologies.

## ♿ ACCESSIBILITY EXCELLENCE OVERVIEW

### WCAG AAA Compliance Framework
```mermaid
graph TD
    AccessibilityStart["♿ ACCESSIBILITY EXCELLENCE"] --> Perceivable["👁️ PERCEIVABLE<br>Information must be presentable to users"]
    AccessibilityStart --> Operable["🖱️ OPERABLE<br>Interface components must be operable"]
    AccessibilityStart --> Understandable["🧠 UNDERSTANDABLE<br>Information and UI operation must be understandable"]
    AccessibilityStart --> Robust["🔧 ROBUST<br>Content must be robust enough for assistive technologies"]
    
    %% Perceivable Guidelines
    Perceivable --> TextAlternatives["📝 Text Alternatives<br>Alt text, captions, descriptions"]
    Perceivable --> TimeBasedMedia["🎬 Time-based Media<br>Captions, audio descriptions"]
    Perceivable --> Adaptable["🔄 Adaptable<br>Multiple presentations without losing meaning"]
    Perceivable --> Distinguishable["🎨 Distinguishable<br>Easier to see and hear content"]
    
    %% Operable Guidelines
    Operable --> KeyboardAccessible["⌨️ Keyboard Accessible<br>All functionality via keyboard"]
    Operable --> Seizures["⚡ Seizures and Physical Reactions<br>No content causes seizures"]
    Operable --> Navigable["🧭 Navigable<br>Help users navigate and find content"]
    Operable --> InputModalities["👆 Input Modalities<br>Various input methods beyond keyboard"]
    
    %% Understandable Guidelines
    Understandable --> Readable["📖 Readable<br>Text content readable and understandable"]
    Understandable --> Predictable["🔮 Predictable<br>Web pages appear and operate predictably"]
    Understandable --> InputAssistance["🆘 Input Assistance<br>Help users avoid and correct mistakes"]
    
    %% Robust Guidelines
    Robust --> Compatible["🤝 Compatible<br>Maximize compatibility with assistive technologies"]
    
    style AccessibilityStart fill:#9c27b0,stroke:#6a1b99,color:white
    style Perceivable fill:#4caf50,stroke:#2e7d32,color:white
    style Operable fill:#2196f3,stroke:#1565c0,color:white
    style Understandable fill:#ff9800,stroke:#ef6c00,color:white
    style Robust fill:#f44336,stroke:#c62828,color:white
```

## 👁️ PERCEIVABLE: MAKING CONTENT ACCESSIBLE TO ALL SENSES

### Text Alternatives (WCAG 1.1 - AAA Level)
```markdown
✅ TEXT ALTERNATIVES REQUIREMENTS (AAA)
□ All images have descriptive alt text that conveys meaning and context
□ Decorative images marked with empty alt="" or role="presentation"
□ Complex images (charts, diagrams) have detailed descriptions
□ Audio content has text transcripts available
□ Video content has captions and audio descriptions
□ Icons have accessible names via aria-label or aria-labelledby
□ Image maps have accessible alternative text for each area
□ CAPTCHA has alternative forms for different disabilities
□ Live audio content has real-time captions
□ Prerecorded video has sign language interpretation
```

### Time-based Media (WCAG 1.2 - AAA Level)
```markdown
✅ TIME-BASED MEDIA REQUIREMENTS (AAA)
□ Prerecorded audio has text transcripts
□ Prerecorded video has captions and audio descriptions
□ Live audio content has real-time captions
□ Live video content has real-time captions
□ Prerecorded video has sign language interpretation
□ Audio descriptions provided for all prerecorded video
□ Extended audio descriptions when pauses are insufficient
□ Media alternatives for text (when text is primary)
□ Live audio-only content has real-time text alternative
□ All media controls are keyboard accessible
```

### Adaptable Content (WCAG 1.3 - AAA Level)
```markdown
✅ ADAPTABLE CONTENT REQUIREMENTS (AAA)
□ Content structure conveyed through proper semantic markup
□ Information and relationships preserved in all presentations
□ Reading sequence logical and meaningful
□ Instructions don't rely solely on sensory characteristics
□ Content orientation works in both portrait and landscape
□ Input purpose identified for form fields (autocomplete)
□ Content can be presented without loss of information or functionality
□ Headings and labels describe topic or purpose
□ Focus order preserves meaning and operability
□ Context changes don't occur without user request
```

### Distinguishable Content (WCAG 1.4 - AAA Level)
```markdown
✅ DISTINGUISHABLE CONTENT REQUIREMENTS (AAA)
□ Color not used as only visual means of conveying information
□ Audio controls available for auto-playing audio
□ Contrast ratio minimum 7:1 for normal text (AAA)
□ Contrast ratio minimum 4.5:1 for large text (AAA)
□ Text can be resized up to 200% without assistive technology
□ Images of text avoided except for logos and essential images
□ Low or no background audio in speech recordings
□ Visual presentation allows for customization (line spacing, margins)
□ Text images only used for decoration or when essential
□ Contrast ratio minimum 3:1 for non-text content
□ Text spacing can be adjusted without loss of content
□ Content on hover/focus can be dismissed, hoverable, and persistent
□ No loss of content when changing orientation or viewport size
```

## 🖱️ OPERABLE: ENSURING ALL USERS CAN INTERACT

### Keyboard Accessible (WCAG 2.1 - AAA Level)
```markdown
✅ KEYBOARD ACCESSIBILITY REQUIREMENTS (AAA)
□ All functionality available via keyboard interface
□ No keyboard traps - users can navigate away from any component
□ Keyboard shortcuts don't conflict with assistive technology
□ Character key shortcuts can be turned off or remapped
□ All interactive elements have visible focus indicators
□ Focus indicators have sufficient contrast (3:1 minimum)
□ Focus order is logical and intuitive
□ Custom keyboard shortcuts documented and configurable
□ Keyboard navigation works consistently across all components
□ Alternative keyboard navigation methods provided where helpful
```

### No Seizures and Physical Reactions (WCAG 2.3 - AAA Level)
```markdown
✅ SEIZURE PREVENTION REQUIREMENTS (AAA)
□ No content flashes more than 3 times per second
□ No large flashing areas that could trigger seizures
□ Motion animation can be disabled unless essential
□ Parallax scrolling can be reduced or disabled
□ Auto-playing animations respect prefers-reduced-motion
□ Vestibular disorder considerations for motion design
□ Warning provided for content that may trigger seizures
□ Alternative static versions available for animated content
□ Motion-based interactions have alternative input methods
□ Smooth scrolling can be disabled by user preference
```

### Navigable (WCAG 2.4 - AAA Level)
```markdown
✅ NAVIGATION REQUIREMENTS (AAA)
□ Bypass blocks mechanism provided (skip links, headings)
□ Page titles describe topic or purpose
□ Focus order preserves meaning and operability
□ Link purpose clear from link text or context
□ Multiple ways to locate pages (sitemap, search, navigation)
□ Headings and labels describe topic or purpose
□ Focus visible with sufficient contrast and clarity
□ Location within site or application clearly indicated
□ Section headings organize content logically
□ Link purpose can be determined from link text alone
□ Consistent navigation across pages/screens
□ Consistent identification of functional components
```

### Input Modalities (WCAG 2.5 - AAA Level)
```markdown
✅ INPUT MODALITIES REQUIREMENTS (AAA)
□ Pointer gestures have keyboard or single-point alternatives
□ Pointer cancellation - up-event used for activation
□ Label in name matches accessible name for speech input
□ Motion actuation can be disabled and has alternatives
□ Target size minimum 44x44 CSS pixels (AAA)
□ Concurrent input mechanisms supported
□ Drag operations have keyboard alternatives
□ Touch targets have adequate spacing (minimum 8px)
□ Voice control compatibility ensured
□ Switch control navigation supported
```

## 🧠 UNDERSTANDABLE: MAKING CONTENT COMPREHENSIBLE

### Readable (WCAG 3.1 - AAA Level)
```markdown
✅ READABLE CONTENT REQUIREMENTS (AAA)
□ Language of page programmatically determined
□ Language of parts identified when different from page language
□ Unusual words defined in glossary or inline
□ Abbreviations expanded on first use or in glossary
□ Reading level appropriate for audience (lower secondary education after removing proper names and titles)
□ Pronunciation provided for words where meaning is ambiguous
□ Content written in clear, simple language
□ Complex instructions broken into manageable steps
□ Important information highlighted appropriately
□ Consistent terminology used throughout
```

### Predictable (WCAG 3.2 - AAA Level)
```markdown
✅ PREDICTABLE INTERFACE REQUIREMENTS (AAA)
□ Focus doesn't trigger unexpected context changes
□ Input doesn't trigger unexpected context changes
□ Navigation mechanisms consistent across pages
□ Components identified consistently across pages
□ Context changes only occur on user request
□ Help available in consistent location
□ Consistent interaction patterns across components
□ Predictable response to user actions
□ Clear indication when context will change
□ Undo functionality available for significant actions
```

### Input Assistance (WCAG 3.3 - AAA Level)
```markdown
✅ INPUT ASSISTANCE REQUIREMENTS (AAA)
□ Error identification automatic and descriptive
□ Labels or instructions provided for user input
□ Error suggestions provided when possible
□ Error prevention for legal, financial, data modification
□ Context-sensitive help available
□ Error prevention for all user input
□ Comprehensive error messages with correction guidance
□ Confirmation required for significant actions
□ Input validation happens in real-time when helpful
□ Clear indication of required vs optional fields
```

## 🔧 ROBUST: ENSURING COMPATIBILITY WITH ASSISTIVE TECHNOLOGY

### Compatible (WCAG 4.1 - AAA Level)
```markdown
✅ COMPATIBILITY REQUIREMENTS (AAA)
□ Valid, semantic HTML markup used
□ Name, role, value available for all UI components
□ Status messages programmatically determinable
□ Custom components have appropriate ARIA implementation
□ Assistive technology compatibility tested
□ Screen reader navigation optimized
□ Voice control software compatibility ensured
□ Switch navigation support implemented
□ Magnification software compatibility verified
□ High contrast mode support implemented
```

## 🎯 PLATFORM-SPECIFIC ACCESSIBILITY IMPLEMENTATION

### Web Platform Accessibility
```markdown
✅ WEB ACCESSIBILITY IMPLEMENTATION
□ Semantic HTML5 elements used appropriately
□ ARIA landmarks for page structure (banner, main, navigation, contentinfo)
□ Proper heading hierarchy (h1-h6) for content structure
□ Form labels associated with inputs (for/id or aria-labelledby)
□ Focus management for single-page applications
□ Live regions for dynamic content updates
□ Skip links for keyboard navigation
□ High contrast mode CSS support
□ Reduced motion media query implementation
□ Screen reader testing with NVDA, JAWS, VoiceOver
```

### iOS Platform Accessibility
```markdown
✅ iOS ACCESSIBILITY IMPLEMENTATION
□ VoiceOver labels and hints for all interactive elements
□ Accessibility traits set appropriately (button, link, header)
□ Custom accessibility actions for complex gestures
□ Accessibility containers for grouped content
□ Dynamic Type support with custom font scaling
□ VoiceOver rotor navigation support
□ Switch Control compatibility
□ Voice Control phrase recognition
□ Reduce Motion preference support
□ High Contrast mode support
□ VoiceOver testing on physical devices
```

### Android Platform Accessibility
```markdown
✅ ANDROID ACCESSIBILITY IMPLEMENTATION
□ Content descriptions for all meaningful UI elements
□ TalkBack navigation optimization
□ Accessibility focus handling
□ Custom accessibility actions for complex interactions
□ Live regions for dynamic content updates
□ Accessibility node info for custom views
□ Switch Access compatibility
□ Voice Access phrase recognition
□ Font size and display size support
□ High contrast text support
□ TalkBack testing on physical devices
```

### Cross-Platform Accessibility
```markdown
✅ CROSS-PLATFORM ACCESSIBILITY IMPLEMENTATION
□ Consistent accessibility patterns across platforms
□ Platform-appropriate accessibility APIs used
□ Shared accessibility testing protocols
□ Unified accessibility documentation
□ Cross-platform screen reader testing
□ Consistent keyboard navigation patterns
□ Platform-specific accessibility feature support
□ Accessibility performance optimization
□ User preference synchronization across platforms
□ Accessibility feedback collection and iteration
```

## 🧪 ACCESSIBILITY TESTING PROTOCOLS

### Automated Testing
```markdown
✅ AUTOMATED ACCESSIBILITY TESTING
□ axe-core integration for continuous testing
□ Lighthouse accessibility audits
□ WAVE (Web Accessibility Evaluation Tool) testing
□ Color contrast ratio automated checking
□ Keyboard navigation automated testing
□ ARIA implementation validation
□ HTML validation for semantic correctness
□ Focus management testing
□ Screen reader compatibility testing (automated)
□ Performance impact of accessibility features
```

### Manual Testing
```markdown
✅ MANUAL ACCESSIBILITY TESTING
□ Keyboard-only navigation testing
□ Screen reader testing (NVDA, JAWS, VoiceOver, TalkBack)
□ Voice control testing (Dragon, Voice Control, Voice Access)
□ Switch control testing
□ Magnification software testing
□ High contrast mode testing
□ Reduced motion preference testing
□ Color blindness simulation testing
□ Cognitive load assessment
□ User testing with people with disabilities
```

### User Testing with Disabilities
```markdown
✅ INCLUSIVE USER TESTING
□ Blind and low vision user testing
□ Deaf and hard of hearing user testing
□ Motor disability user testing
□ Cognitive disability user testing
□ Multiple disability user testing
□ Assistive technology user testing
□ Mobile accessibility user testing
□ Cross-platform accessibility user testing
□ Task completion rate measurement
□ User satisfaction and feedback collection
```

## 📋 ACCESSIBILITY DOCUMENTATION TEMPLATE

```markdown
# Accessibility Specifications: [Component Name]

## ♿ Accessibility Overview
**WCAG Level**: AAA
**Platforms**: [Web/iOS/Android/Cross-Platform]
**Assistive Technologies**: [Screen readers, voice control, switch access, etc.]
**Testing Status**: [Automated: Pass/Fail, Manual: Pass/Fail, User Testing: Complete/Pending]

## 🎯 Accessibility Features Implemented

### Perceivable
- **Text Alternatives**: [Alt text, captions, descriptions implementation]
- **Color and Contrast**: [Contrast ratios, color independence]
- **Text Scaling**: [Font scaling support, layout adaptation]
- **Media Alternatives**: [Captions, transcripts, audio descriptions]

### Operable
- **Keyboard Navigation**: [Tab order, keyboard shortcuts, focus management]
- **Touch Targets**: [Size requirements, spacing, gesture alternatives]
- **Motion and Animation**: [Reduced motion support, seizure prevention]
- **Input Methods**: [Keyboard, voice, switch, touch compatibility]

### Understandable
- **Content Clarity**: [Language, reading level, terminology]
- **Predictable Behavior**: [Consistent navigation, interaction patterns]
- **Error Prevention**: [Validation, confirmation, error recovery]
- **Help and Instructions**: [Context-sensitive help, clear instructions]

### Robust
- **Semantic Markup**: [HTML structure, ARIA implementation]
- **Assistive Technology**: [Screen reader, voice control compatibility]
- **Platform Integration**: [Native accessibility API usage]
- **Future Compatibility**: [Standards compliance, extensibility]

## 🧪 Testing Results

### Automated Testing
- **axe-core**: [Pass/Fail with specific issues]
- **Lighthouse**: [Accessibility score and recommendations]
- **Color Contrast**: [All ratios meet AAA standards]
- **Keyboard Navigation**: [All functionality accessible]

### Manual Testing
- **Screen Readers**: [NVDA, JAWS, VoiceOver, TalkBack results]
- **Voice Control**: [Dragon, Voice Control, Voice Access results]
- **Switch Control**: [Navigation and interaction testing]
- **Keyboard Only**: [Complete functionality verification]

### User Testing
- **Participants**: [Number and types of disabilities represented]
- **Tasks**: [Specific tasks tested and completion rates]
- **Feedback**: [User satisfaction and improvement suggestions]
- **Issues Found**: [Accessibility barriers identified and resolved]

## 🔧 Implementation Notes
- **Technical Details**: [Specific ARIA attributes, semantic elements used]
- **Platform Considerations**: [Platform-specific implementations]
- **Performance Impact**: [Accessibility feature performance analysis]
- **Maintenance**: [Ongoing testing and update requirements]

## ✅ Accessibility Validation Checklist
□ WCAG AAA compliance verified across all success criteria
□ Platform-specific accessibility guidelines followed
□ Automated testing passes with no critical issues
□ Manual testing completed with assistive technologies
□ User testing conducted with people with disabilities
□ Documentation complete and accurate
□ Performance impact assessed and optimized
□ Maintenance plan established for ongoing compliance
```

## 🚨 ACCESSIBILITY ERROR PREVENTION AND RECOVERY

### Common Accessibility Pitfalls
```markdown
❌ ACCESSIBILITY ANTI-PATTERNS TO AVOID
□ Using color alone to convey information
□ Missing or inadequate alt text for images
□ Poor keyboard navigation or focus management
□ Insufficient color contrast ratios
□ Missing form labels or instructions
□ Inaccessible custom components without ARIA
□ Auto-playing media without controls
□ Content that flashes or moves excessively
□ Touch targets that are too small or close together
□ Inconsistent navigation or interaction patterns
```

### Accessibility Recovery Protocols
```markdown
🔧 ACCESSIBILITY RECOVERY STRATEGIES
□ Immediate accessibility audit with automated tools
□ Manual testing with assistive technologies
□ User testing with people with disabilities
□ Accessibility expert consultation
□ Systematic remediation of identified issues
□ Implementation of accessibility testing protocols
□ Team training on accessibility best practices
□ Establishment of ongoing accessibility monitoring
□ Documentation of accessibility standards and procedures
□ Regular accessibility review and improvement cycles
```

---

**Remember**: Accessibility excellence is not optional—it's essential for creating inclusive experiences that work for everyone. WCAG AAA compliance ensures that your design serves users with diverse abilities and needs across all platforms and assistive technologies.