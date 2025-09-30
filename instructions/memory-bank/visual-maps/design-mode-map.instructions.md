---
description: Visual process map for DESIGN mode (UI/UX Design)
applyTo: "**/design*/**,**/ui*/**,**/ux*/**,**/component*/**"
---

# DESIGN MODE: UI/UX DESIGN PROCESS MAP

> **TL;DR:** This visual map guides the DESIGN mode process, focusing on structured UI/UX design decisions, platform-aware responsive design, and comprehensive component documentation with optimized context management.

## 🧭 DESIGN MODE PROCESS FLOW

```mermaid
graph TD
    Start["🎨 START DESIGN MODE"] --> MemoryBank["🚨 MEMORY BANK VERIFICATION<br>MANDATORY FIRST STEP"]

    MemoryBank --> MemoryBankCheck{"Memory Bank<br>Exists?"}
    MemoryBankCheck -->|"No"| CreateMemoryBank["CREATE MEMORY BANK<br>CRITICAL STEP"]
    MemoryBankCheck -->|"Yes"| StructureValidation["🔍 STRUCTURE VALIDATION"]
    CreateMemoryBank --> StructureValidation

    StructureValidation --> PlatformDetection["🔍 PLATFORM DETECTION<br>Auto-detect project type"]

    PlatformDetection --> PlatformType{"Platform<br>Detected?"}
    PlatformType -->|"Web"| WebStrategy["🌐 WEB RESPONSIVE STRATEGY<br>CSS breakpoints, mobile-first"]
    PlatformType -->|"React Native"| RNStrategy["📱 REACT NATIVE STRATEGY<br>Flexbox, platform-specific"]
    PlatformType -->|"Flutter"| FlutterStrategy["🦋 FLUTTER STRATEGY<br>MediaQuery, responsive widgets"]
    PlatformType -->|"iOS Native"| iOSStrategy["🍎 iOS STRATEGY<br>Auto Layout, size classes"]
    PlatformType -->|"Android Native"| AndroidStrategy["🤖 ANDROID STRATEGY<br>ConstraintLayout, resources"]
    PlatformType -->|"Unknown"| UniversalStrategy["🌍 UNIVERSAL STRATEGY<br>Cross-platform principles"]

    WebStrategy --> ContextLoading["📚 CONTEXT LOADING"]
    RNStrategy --> ContextLoading
    FlutterStrategy --> ContextLoading
    iOSStrategy --> ContextLoading
    AndroidStrategy --> ContextLoading
    UniversalStrategy --> ContextLoading

    ContextLoading --> LoadCore["Load Core Files:<br>tasks.md, style-guide.md, projectbrief.md"]
    LoadCore --> ContextOptimization["⚡ CONTEXT OPTIMIZATION<br>Component isolation strategy"]

    ContextOptimization --> DesignTypeIdentification{"🎯 DESIGN TYPE<br>IDENTIFICATION"}

    %% Design Type Branches
    DesignTypeIdentification -->|"Dashboard"| DashboardDesign["📊 DASHBOARD DESIGN"]
    DesignTypeIdentification -->|"Component"| ComponentDesign["🧩 COMPONENT DESIGN"]
    DesignTypeIdentification -->|"Layout"| LayoutDesign["📐 LAYOUT DESIGN"]
    DesignTypeIdentification -->|"User Flow"| FlowDesign["🔄 USER FLOW DESIGN"]

    %% Dashboard Design Flow
    DashboardDesign --> DashLayout["1️⃣ Layout Structure<br>Grid, sections, hierarchy"]
    DashLayout --> DashComponents["2️⃣ Component Inventory<br>Cards, charts, tables, widgets"]
    DashComponents --> DashData["3️⃣ Data Visualization<br>Chart types, metrics display"]
    DashData --> DashInteraction["4️⃣ Interaction Design<br>Filters, actions, navigation"]
    DashInteraction --> DashResponsive["5️⃣ Responsive Adaptation<br>Mobile, tablet, desktop"]
    DashResponsive --> DashValidation["6️⃣ Validate Dashboard<br>Against requirements"]

    %% Component Design Flow
    ComponentDesign --> CompAtomic["1️⃣ Atomic Analysis<br>Atoms → Molecules → Organisms"]
    CompAtomic --> CompVariants["2️⃣ Variant Design<br>States, sizes, themes"]
    CompVariants --> CompAPI["3️⃣ Component API<br>Props, slots, events"]
    CompAPI --> CompResponsive["4️⃣ Responsive Behavior<br>Breakpoint adaptations"]
    CompResponsive --> CompAccessibility["5️⃣ Accessibility<br>ARIA, keyboard, screen readers"]
    CompAccessibility --> CompValidation["6️⃣ Validate Component<br>Against design system"]

    %% Layout Design Flow
    LayoutDesign --> LayoutGrid["1️⃣ Grid System<br>Responsive breakpoints"]
    LayoutGrid --> LayoutSpacing["2️⃣ Spacing System<br>Margins, padding, gaps"]
    LayoutSpacing --> LayoutHierarchy["3️⃣ Visual Hierarchy<br>Typography, colors, sizing"]
    LayoutHierarchy --> LayoutResponsive["4️⃣ Responsive Design<br>Mobile-first approach"]
    LayoutResponsive --> LayoutAccessibility["5️⃣ Accessibility<br>Navigation, focus management"]
    LayoutAccessibility --> LayoutValidation["6️⃣ Validate Layout<br>Cross-device testing"]

    %% Flow Design
    FlowDesign --> FlowMap["1️⃣ Journey Mapping<br>User paths & touchpoints"]
    FlowMap --> FlowWireframe["2️⃣ Wireframing<br>Low-fidelity structure"]
    FlowWireframe --> FlowPrototype["3️⃣ Prototyping<br>Interactive flow"]
    FlowPrototype --> FlowResponsive["4️⃣ Responsive Flow<br>Cross-device experience"]
    FlowResponsive --> FlowUsability["5️⃣ Usability Testing<br>Flow validation"]
    FlowUsability --> FlowValidation["6️⃣ Validate Flow<br>Against user needs"]

    %% All paths converge to responsive validation
    DashValidation --> ResponsiveValidation["📱 RESPONSIVE VALIDATION<br>Cross-platform testing"]
    CompValidation --> ResponsiveValidation
    LayoutValidation --> ResponsiveValidation
    FlowValidation --> ResponsiveValidation

    ResponsiveValidation --> ResponsiveCheck{"Responsive<br>Requirements Met?"}
    ResponsiveCheck -->|"No"| ResponsiveFix["🔧 FIX RESPONSIVE ISSUES<br>Adjust breakpoints, touch targets"]
    ResponsiveCheck -->|"Yes"| AccessibilityValidation["♿ ACCESSIBILITY VALIDATION<br>WCAG compliance check"]
    ResponsiveFix --> ResponsiveValidation

    AccessibilityValidation --> AccessibilityCheck{"Accessibility<br>Requirements Met?"}
    AccessibilityCheck -->|"No"| AccessibilityFix["🔧 FIX ACCESSIBILITY ISSUES<br>ARIA, contrast, keyboard nav"]
    AccessibilityCheck -->|"Yes"| ContextMerge["🔄 CONTEXT MERGE<br>Combine component designs"]
    AccessibilityFix --> AccessibilityValidation

    ContextMerge --> StyleGuideUpdate["📝 UPDATE STYLE GUIDE<br>Document new patterns"]
    StyleGuideUpdate --> Documentation["📋 DESIGN DOCUMENTATION<br>Component specs, usage"]
    Documentation --> ImplementationPrep["🚀 IMPLEMENTATION PREPARATION<br>Ready for IMPLEMENT mode"]

    ImplementationPrep --> DesignComplete["✅ DESIGN COMPLETE<br>Transition to IMPLEMENT"]

    %% Error Handling
    StructureValidation -.-> ValidationError["❌ VALIDATION ERROR<br>Fix structure issues"]
    PlatformDetection -.-> DetectionError["❌ DETECTION ERROR<br>Manual platform specification"]
    ValidationError -.-> StructureValidation
    DetectionError -.-> UniversalStrategy

    %% Style Definitions
    style Start fill:#e91e63,stroke:#ad1457,color:white
    style MemoryBank fill:#ff0000,stroke:#cc0000,color:white,stroke-width:3px
    style PlatformDetection fill:#ff5722,stroke:#d84315,color:white
    style ContextOptimization fill:#9c27b0,stroke:#6a1b99,color:white
    style DesignTypeIdentification fill:#2196f3,stroke:#1565c0,color:white
    style DashboardDesign fill:#4caf50,stroke:#2e7d32,color:white
    style ComponentDesign fill:#ff9800,stroke:#ef6c00,color:white
    style LayoutDesign fill:#795548,stroke:#5d4037,color:white
    style FlowDesign fill:#607d8b,stroke:#455a64,color:white
    style ResponsiveValidation fill:#4caf50,stroke:#2e7d32,color:white
    style AccessibilityValidation fill:#9c27b0,stroke:#6a1b99,color:white
    style DesignComplete fill:#2196f3,stroke:#1565c0,color:white
```

## 🔍 PLATFORM-SPECIFIC RESPONSIVE STRATEGIES

### 🌐 Web Responsive Strategy
```mermaid
graph LR
    WebDetection["🌐 WEB PROJECT<br>DETECTED"] --> WebBreakpoints["📱 BREAKPOINTS<br>640px, 768px, 1024px, 1280px"]
    WebBreakpoints --> WebTouchTargets["👆 TOUCH TARGETS<br>44px minimum mobile"]
    WebTouchTargets --> WebLayout["📐 LAYOUT<br>CSS Grid/Flexbox"]
    WebLayout --> WebAccessibility["♿ ACCESSIBILITY<br>WCAG AA compliance"]

    style WebDetection fill:#4caf50,stroke:#2e7d32,color:white
    style WebBreakpoints fill:#2196f3,stroke:#1565c0,color:white
    style WebTouchTargets fill:#ff9800,stroke:#ef6c00,color:white
    style WebLayout fill:#9c27b0,stroke:#6a1b99,color:white
    style WebAccessibility fill:#f44336,stroke:#c62828,color:white
```

### 📱 Mobile App Responsive Strategy
```mermaid
graph LR
    MobileDetection["📱 MOBILE APP<br>DETECTED"] --> PlatformSpecific["🎯 PLATFORM SPECIFIC<br>iOS: 44pt / Android: 48dp"]
    PlatformSpecific --> SafeArea["🛡️ SAFE AREA<br>Notched device handling"]
    SafeArea --> Orientation["🔄 ORIENTATION<br>Portrait/Landscape support"]
    Orientation --> Performance["⚡ PERFORMANCE<br>Device capability optimization"]

    style MobileDetection fill:#61dafb,stroke:#21b6ce,color:black
    style PlatformSpecific fill:#ff5722,stroke:#d84315,color:white
    style SafeArea fill:#4caf50,stroke:#2e7d32,color:white
    style Orientation fill:#9c27b0,stroke:#6a1b99,color:white
    style Performance fill:#ff9800,stroke:#ef6c00,color:white
```

## ⚡ CONTEXT OPTIMIZATION WORKFLOW

### Component Isolation Strategy
```mermaid
graph TD
    ContextStart["⚡ CONTEXT OPTIMIZATION"] --> ComponentFocus["🎯 SINGLE COMPONENT FOCUS"]
    ComponentFocus --> ProgressiveDisclosure["📈 PROGRESSIVE DISCLOSURE"]
    ProgressiveDisclosure --> MemoryChunking["🧠 MEMORY CHUNKING"]
    MemoryChunking --> ValidationCheckpoints["✅ VALIDATION CHECKPOINTS"]

    ComponentFocus --> FocusExample["Example:<br>Header → Sidebar → Main → Footer"]
    ProgressiveDisclosure --> DisclosureExample["Example:<br>Basic → States → Variants → Edge Cases"]
    MemoryChunking --> ChunkingExample["Example:<br>Colors → Typography → Spacing → Layout"]
    ValidationCheckpoints --> CheckpointExample["Example:<br>Style Guide → Responsive → Accessibility"]

    style ContextStart fill:#9c27b0,stroke:#6a1b99,color:white
    style ComponentFocus fill:#4caf50,stroke:#2e7d32,color:white
    style ProgressiveDisclosure fill:#2196f3,stroke:#1565c0,color:white
    style MemoryChunking fill:#ff9800,stroke:#ef6c00,color:white
    style ValidationCheckpoints fill:#f44336,stroke:#c62828,color:white
```

## 🚨 VALIDATION CHECKPOINTS

### Pre-Design Validation
```mermaid
graph TD
    PreDesign["🚨 PRE-DESIGN VALIDATION"] --> MemoryBankExists{"Memory Bank<br>Structure Exists?"}
    MemoryBankExists -->|"No"| CreateMemoryBank["CREATE MEMORY BANK"]
    MemoryBankExists -->|"Yes"| PlatformDetected{"Platform<br>Detected?"}

    CreateMemoryBank --> PlatformDetected
    PlatformDetected -->|"No"| ManualPlatform["MANUAL PLATFORM<br>SPECIFICATION"]
    PlatformDetected -->|"Yes"| StyleGuideExists{"Style Guide<br>Available?"}

    ManualPlatform --> StyleGuideExists
    StyleGuideExists -->|"No"| CreateStyleGuide["CREATE STYLE GUIDE<br>TEMPLATE"]
    StyleGuideExists -->|"Yes"| RequirementsDocumented{"Requirements<br>Documented?"}

    CreateStyleGuide --> RequirementsDocumented
    RequirementsDocumented -->|"No"| DocumentRequirements["DOCUMENT DESIGN<br>REQUIREMENTS"]
    RequirementsDocumented -->|"Yes"| PreValidationComplete["✅ PRE-VALIDATION<br>COMPLETE"]

    DocumentRequirements --> PreValidationComplete

    style PreDesign fill:#ff0000,stroke:#cc0000,color:white,stroke-width:3px
    style PreValidationComplete fill:#4caf50,stroke:#2e7d32,color:white
```

### Mid-Design Validation
```mermaid
graph TD
    MidDesign["🔄 MID-DESIGN VALIDATION"] --> StyleGuideCompliance{"Style Guide<br>Compliance?"}
    StyleGuideCompliance -->|"No"| FixStyleGuide["FIX STYLE GUIDE<br>VIOLATIONS"]
    StyleGuideCompliance -->|"Yes"| ResponsiveBehavior{"Responsive<br>Behavior Defined?"}

    FixStyleGuide --> StyleGuideCompliance
    ResponsiveBehavior -->|"No"| DefineResponsive["DEFINE RESPONSIVE<br>BEHAVIOR"]
    ResponsiveBehavior -->|"Yes"| AccessibilityRequirements{"Accessibility<br>Requirements Met?"}

    DefineResponsive --> ResponsiveBehavior
    AccessibilityRequirements -->|"No"| FixAccessibility["FIX ACCESSIBILITY<br>ISSUES"]
    AccessibilityRequirements -->|"Yes"| InteractionStates{"Interaction States<br>Documented?"}

    FixAccessibility --> AccessibilityRequirements
    InteractionStates -->|"No"| DocumentStates["DOCUMENT INTERACTION<br>STATES"]
    InteractionStates -->|"Yes"| MidValidationComplete["✅ MID-VALIDATION<br>COMPLETE"]

    DocumentStates --> MidValidationComplete

    style MidDesign fill:#ff9800,stroke:#ef6c00,color:white
    style MidValidationComplete fill:#4caf50,stroke:#2e7d32,color:white
```

### Post-Design Validation
```mermaid
graph TD
    PostDesign["🏁 POST-DESIGN VALIDATION"] --> FinalResponsive{"Final Responsive<br>Validation?"}
    FinalResponsive -->|"Fail"| FixFinalResponsive["FIX RESPONSIVE<br>ISSUES"]
    FinalResponsive -->|"Pass"| AccessibilityAudit{"Accessibility<br>Audit Complete?"}

    FixFinalResponsive --> FinalResponsive
    AccessibilityAudit -->|"Fail"| FixFinalAccessibility["FIX ACCESSIBILITY<br>ISSUES"]
    AccessibilityAudit -->|"Pass"| StyleGuideCompliance{"Style Guide<br>Compliance Verified?"}

    FixFinalAccessibility --> AccessibilityAudit
    StyleGuideCompliance -->|"Fail"| FixFinalStyleGuide["FIX STYLE GUIDE<br>COMPLIANCE"]
    StyleGuideCompliance -->|"Pass"| ImplementationReady{"Implementation<br>Ready?"}

    FixFinalStyleGuide --> StyleGuideCompliance
    ImplementationReady -->|"No"| PrepareImplementation["PREPARE IMPLEMENTATION<br>NOTES"]
    ImplementationReady -->|"Yes"| DocumentationComplete{"Documentation<br>Complete?"}

    PrepareImplementation --> ImplementationReady
    DocumentationComplete -->|"No"| CompleteDocumentation["COMPLETE<br>DOCUMENTATION"]
    DocumentationComplete -->|"Yes"| PostValidationComplete["✅ POST-VALIDATION<br>COMPLETE"]

    CompleteDocumentation --> DocumentationComplete

    style PostDesign fill:#9c27b0,stroke:#6a1b99,color:white
    style PostValidationComplete fill:#4caf50,stroke:#2e7d32,color:white
```

## 🔄 MODE TRANSITION PROTOCOLS

### Design to Implement Transition
```mermaid
graph LR
    DesignComplete["✅ DESIGN COMPLETE"] --> TransitionCheck["🔍 TRANSITION CHECKLIST"]
    TransitionCheck --> ComponentSpecs["📋 Component Specifications"]
    ComponentSpecs --> ResponsiveSpecs["📱 Responsive Specifications"]
    ResponsiveSpecs --> AccessibilitySpecs["♿ Accessibility Specifications"]
    AccessibilitySpecs --> StyleGuideUpdated["📝 Style Guide Updated"]
    StyleGuideUpdated --> ImplementationNotes["💻 Implementation Notes"]
    ImplementationNotes --> AssetRequirements["🎨 Asset Requirements"]
    AssetRequirements --> DependencyList["📦 Dependency List"]
    DependencyList --> BuildSequence["🔨 Build Sequence"]
    BuildSequence --> ReadyForImplement["🚀 READY FOR IMPLEMENT"]

    style DesignComplete fill:#4caf50,stroke:#2e7d32,color:white
    style ReadyForImplement fill:#2196f3,stroke:#1565c0,color:white
```

## 🎯 DESIGN EXCELLENCE CRITERIA

### Excellence Validation Matrix
```mermaid
graph TD
    Excellence["🎯 DESIGN EXCELLENCE"] --> UserCentered["👥 USER-CENTERED<br>DESIGN"]
    Excellence --> MultipleOptions["🔄 MULTIPLE OPTIONS<br>EXPLORED"]
    Excellence --> SystemConsistency["🎨 DESIGN SYSTEM<br>CONSISTENCY"]
    Excellence --> Innovation["💡 INNOVATION<br>BALANCED"]
    Excellence --> PlatformPatterns["📱 PLATFORM PATTERNS<br>RESPECTED"]
    Excellence --> Performance["⚡ PERFORMANCE<br>CONSIDERED"]
    Excellence --> AccessibilityFirst["♿ ACCESSIBILITY<br>FIRST"]
    Excellence --> Scalability["📈 SCALABILITY<br>PLANNED"]

    UserCentered --> ExcellenceValidation["✅ EXCELLENCE<br>VALIDATION"]
    MultipleOptions --> ExcellenceValidation
    SystemConsistency --> ExcellenceValidation
    Innovation --> ExcellenceValidation
    PlatformPatterns --> ExcellenceValidation
    Performance --> ExcellenceValidation
    AccessibilityFirst --> ExcellenceValidation
    Scalability --> ExcellenceValidation

    style Excellence fill:#9c27b0,stroke:#6a1b99,color:white
    style ExcellenceValidation fill:#4caf50,stroke:#2e7d32,color:white
```

## 🚨 ERROR HANDLING & RECOVERY

### Common Design Mode Errors
```mermaid
graph TD
    ErrorDetection["🚨 ERROR DETECTION"] --> ErrorType{"Error Type?"}

    ErrorType -->|"Memory Bank Missing"| MemoryBankError["❌ MEMORY BANK ERROR"]
    ErrorType -->|"Platform Detection Failed"| PlatformError["❌ PLATFORM ERROR"]
    ErrorType -->|"Style Guide Conflict"| StyleGuideError["❌ STYLE GUIDE ERROR"]
    ErrorType -->|"Responsive Validation Failed"| ResponsiveError["❌ RESPONSIVE ERROR"]
    ErrorType -->|"Accessibility Audit Failed"| AccessibilityError["❌ ACCESSIBILITY ERROR"]

    MemoryBankError --> CreateMemoryBankFix["🔧 CREATE MEMORY BANK"]
    PlatformError --> ManualPlatformFix["🔧 MANUAL PLATFORM SETUP"]
    StyleGuideError --> ResolveStyleGuideFix["🔧 RESOLVE STYLE CONFLICTS"]
    ResponsiveError --> FixResponsiveFix["🔧 FIX RESPONSIVE ISSUES"]
    AccessibilityError --> FixAccessibilityFix["🔧 FIX ACCESSIBILITY ISSUES"]

    CreateMemoryBankFix --> RetryDesign["🔄 RETRY DESIGN PROCESS"]
    ManualPlatformFix --> RetryDesign
    ResolveStyleGuideFix --> RetryDesign
    FixResponsiveFix --> RetryDesign
    FixAccessibilityFix --> RetryDesign

    style ErrorDetection fill:#ff0000,stroke:#cc0000,color:white
    style RetryDesign fill:#4caf50,stroke:#2e7d32,color:white
```

---

**Remember**: Design mode ensures platform-aware, accessible, and excellent UI/UX designs that are ready for implementation. Every step includes validation checkpoints to maintain quality and consistency.
