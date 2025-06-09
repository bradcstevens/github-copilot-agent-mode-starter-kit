---
description: Enhanced platform detection and advanced responsive design strategy for DESIGN mode
applyTo: "**/platform-responsive-detection-enhanced.mdc"
---
# ENHANCED PLATFORM DETECTION & ADVANCED RESPONSIVE DESIGN STRATEGY

> **TL;DR:** This enhanced rule ensures comprehensive platform detection and applies advanced responsive design strategies for web, mobile apps, cross-platform projects, with performance optimization, accessibility compliance, and design system integration.

## 🔍 ADVANCED AUTOMATIC PLATFORM DETECTION

### Enhanced Detection Priority Order
1. **Comprehensive project file analysis for platform indicators**
2. **Framework and dependency analysis for technology stack detection**
3. **Design system and component library analysis**
4. **Performance requirements and constraints evaluation**
5. **Apply advanced responsive strategy with optimization**
6. **Validate platform-specific requirements and accessibility**
7. **Document comprehensive responsive specifications**

### Advanced Platform Detection Logic

```mermaid
graph TD
    Start["🔍 ENHANCED DETECTION START"] --> ComprehensiveFileCheck["📁 Comprehensive Project Analysis"]
    
    ComprehensiveFileCheck --> WebAnalysis["🌐 Web Project Analysis"]
    ComprehensiveFileCheck --> MobileAnalysis["📱 Mobile Project Analysis"]
    ComprehensiveFileCheck --> CrossPlatformAnalysis["🔄 Cross-Platform Analysis"]
    
    %% Web Project Detection
    WebAnalysis --> WebFrameworkCheck{"Web Framework<br>Detection"}
    WebFrameworkCheck -->|"React"| ReactWebStrategy["⚛️ REACT WEB<br>Component-based, hooks"]
    WebFrameworkCheck -->|"Vue"| VueWebStrategy["🟢 VUE WEB<br>Composition API, reactive"]
    WebFrameworkCheck -->|"Angular"| AngularWebStrategy["🔺 ANGULAR WEB<br>TypeScript, RxJS"]
    WebFrameworkCheck -->|"Svelte"| SvelteWebStrategy["🧡 SVELTE WEB<br>Compiled, reactive"]
    WebFrameworkCheck -->|"Next.js"| NextJSStrategy["▲ NEXT.JS<br>SSR, SSG, performance"]
    WebFrameworkCheck -->|"Nuxt"| NuxtStrategy["💚 NUXT<br>Vue SSR, performance"]
    WebFrameworkCheck -->|"Vanilla"| VanillaWebStrategy["🍦 VANILLA WEB<br>Progressive enhancement"]
    
    %% Mobile Project Detection
    MobileAnalysis --> MobileFrameworkCheck{"Mobile Framework<br>Detection"}
    MobileFrameworkCheck -->|"React Native"| ReactNativeStrategy["📱 REACT NATIVE<br>Cross-platform, native"]
    MobileFrameworkCheck -->|"Flutter"| FlutterStrategy["🦋 FLUTTER<br>Dart, cross-platform"]
    MobileFrameworkCheck -->|"Ionic"| IonicStrategy["⚡ IONIC<br>Hybrid, web technologies"]
    MobileFrameworkCheck -->|"Xamarin"| XamarinStrategy["🔷 XAMARIN<br>C#, cross-platform"]
    MobileFrameworkCheck -->|"iOS Native"| iOSNativeStrategy["🍎 iOS NATIVE<br>Swift, UIKit, SwiftUI"]
    MobileFrameworkCheck -->|"Android Native"| AndroidNativeStrategy["🤖 ANDROID NATIVE<br>Kotlin, Jetpack Compose"]
    
    %% Cross-Platform Detection
    CrossPlatformAnalysis --> CrossPlatformCheck{"Cross-Platform<br>Framework"}
    CrossPlatformCheck -->|"Electron"| ElectronStrategy["⚡ ELECTRON<br>Desktop, web technologies"]
    CrossPlatformCheck -->|"Tauri"| TauriStrategy["🦀 TAURI<br>Rust, web frontend"]
    CrossPlatformCheck -->|"PWA"| PWAStrategy["📱 PWA<br>Progressive web app"]
    CrossPlatformCheck -->|"Capacitor"| CapacitorStrategy["⚡ CAPACITOR<br>Web to native"]
    
    %% All strategies lead to enhanced responsive implementation
    ReactWebStrategy --> EnhancedWebResponsive["🌐 Enhanced Web Responsive"]
    VueWebStrategy --> EnhancedWebResponsive
    AngularWebStrategy --> EnhancedWebResponsive
    SvelteWebStrategy --> EnhancedWebResponsive
    NextJSStrategy --> EnhancedWebResponsive
    NuxtStrategy --> EnhancedWebResponsive
    VanillaWebStrategy --> EnhancedWebResponsive
    
    ReactNativeStrategy --> EnhancedMobileResponsive["📱 Enhanced Mobile Responsive"]
    FlutterStrategy --> EnhancedMobileResponsive
    IonicStrategy --> EnhancedMobileResponsive
    XamarinStrategy --> EnhancedMobileResponsive
    iOSNativeStrategy --> EnhancedMobileResponsive
    AndroidNativeStrategy --> EnhancedMobileResponsive
    
    ElectronStrategy --> EnhancedCrossPlatformResponsive["🔄 Enhanced Cross-Platform Responsive"]
    TauriStrategy --> EnhancedCrossPlatformResponsive
    PWAStrategy --> EnhancedCrossPlatformResponsive
    CapacitorStrategy --> EnhancedCrossPlatformResponsive
    
    EnhancedWebResponsive --> PerformanceOptimization["⚡ Performance Optimization"]
    EnhancedMobileResponsive --> PerformanceOptimization
    EnhancedCrossPlatformResponsive --> PerformanceOptimization
    
    PerformanceOptimization --> AccessibilityCompliance["♿ Accessibility Compliance"]
    AccessibilityCompliance --> DesignSystemIntegration["🎨 Design System Integration"]
    DesignSystemIntegration --> ResponsiveComplete["✅ Enhanced Responsive Complete"]
    
    style Start fill:#2196f3,stroke:#1565c0,color:white
    style ReactWebStrategy fill:#61dafb,stroke:#21b6ce,color:black
    style VueWebStrategy fill:#4fc08d,stroke:#369870,color:white
    style AngularWebStrategy fill:#dd0031,stroke:#b8002a,color:white
    style SvelteWebStrategy fill:#ff3e00,stroke:#cc3200,color:white
    style NextJSStrategy fill:#000000,stroke:#333333,color:white
    style ReactNativeStrategy fill:#61dafb,stroke:#21b6ce,color:black
    style FlutterStrategy fill:#02569b,stroke:#014c87,color:white
    style iOSNativeStrategy fill:#007aff,stroke:#0056cc,color:white
    style AndroidNativeStrategy fill:#3ddc84,stroke:#2ba35f,color:white
    style PerformanceOptimization fill:#ff9800,stroke:#ef6c00,color:white
    style AccessibilityCompliance fill:#9c27b0,stroke:#6a1b99,color:white
    style ResponsiveComplete fill:#4caf50,stroke:#2e7d32,color:white
```

## 🌐 ENHANCED WEB PROJECT RESPONSIVE STRATEGY

### Advanced Web Detection Criteria
- **Framework Analysis**: React, Vue, Angular, Svelte, Next.js, Nuxt, vanilla
- **Build Tools**: Webpack, Vite, Parcel, Rollup, esbuild
- **CSS Frameworks**: Tailwind CSS, Bootstrap, Bulma, Foundation
- **Component Libraries**: Material-UI, Chakra UI, Ant Design, Mantine
- **Performance Tools**: Lighthouse, Web Vitals, bundle analyzers
- **PWA Features**: Service workers, manifest.json, offline capabilities

### Enhanced Web Responsive Requirements
```markdown
✅ ENHANCED WEB RESPONSIVE REQUIREMENTS

### Advanced Breakpoint System
□ Mobile-first design approach with progressive enhancement
□ Comprehensive breakpoint system: 320px, 480px, 640px, 768px, 1024px, 1280px, 1440px, 1920px
□ Container queries support for component-level responsiveness
□ Fluid typography with clamp() and viewport units
□ Touch targets minimum 44px with 8px spacing buffer
□ Advanced navigation patterns (progressive disclosure, mega menus)

### Performance Optimization
□ Critical CSS extraction and inlining
□ Resource hints (preload, prefetch, preconnect)
□ Responsive images with WebP/AVIF support and lazy loading
□ Code splitting and dynamic imports
□ Bundle optimization and tree shaking
□ Service worker implementation for caching

### Advanced Layout Systems
□ CSS Grid with subgrid support
□ Flexbox with gap property
□ Container queries for component responsiveness
□ Logical properties for internationalization
□ Custom properties (CSS variables) for theming

### Accessibility Excellence
□ WCAG AAA compliance target
□ Semantic HTML structure
□ ARIA attributes and landmarks
□ Keyboard navigation with focus management
□ Screen reader optimization
□ Color contrast verification (7:1 for AAA)
□ Reduced motion preferences support

### Progressive Web App Features
□ App manifest with proper icons and metadata
□ Service worker for offline functionality
□ Push notifications support
□ Install prompts and app-like experience
□ Background sync capabilities
```

## 📱 ENHANCED MOBILE APP RESPONSIVE STRATEGY

### Advanced React Native Detection & Strategy
- **Dependencies**: react-native, @react-native-community packages
- **Platform Folders**: ios/, android/ with native code
- **Configuration**: metro.config.js, react-native.config.js
- **Navigation**: React Navigation, native navigation libraries
- **State Management**: Redux, Zustand, Context API
- **UI Libraries**: NativeBase, React Native Elements, Tamagui

### Enhanced React Native Responsive Requirements
```markdown
✅ ENHANCED REACT NATIVE RESPONSIVE REQUIREMENTS

### Advanced Layout System
□ Flexbox layouts with enhanced responsive patterns
□ Dimensions API with device-specific optimizations
□ useWindowDimensions hook for real-time responsiveness
□ Platform.OS checks with enhanced platform-specific adaptations
□ SafeAreaProvider with comprehensive inset handling
□ Orientation handling with react-native-orientation-locker

### Touch and Interaction
□ TouchableOpacity/Pressable with minimum 44pt/48dp touch targets
□ Haptic feedback integration (iOS) with proper fallbacks
□ Gesture handling with react-native-gesture-handler
□ Advanced animation with react-native-reanimated
□ Platform-specific components using Platform.select

### Performance Optimization
□ FlatList/SectionList with optimized rendering
□ Image optimization with react-native-fast-image
□ Memory management and cleanup strategies
□ Bundle splitting and code push integration
□ Native module optimization

### Platform-Specific Enhancements
□ iOS: Dynamic Island integration, Live Activities
□ Android: Material Design 3 components, edge-to-edge
□ Cross-platform: Shared business logic, platform UI
```

### Advanced Flutter Detection & Strategy
- **Configuration**: pubspec.yaml with Flutter SDK
- **Project Structure**: lib/, android/, ios/ folders
- **State Management**: Bloc, Provider, Riverpod, GetX
- **UI Framework**: Material Design 3, Cupertino widgets
- **Navigation**: GoRouter, Navigator 2.0

### Enhanced Flutter Responsive Requirements
```markdown
✅ ENHANCED FLUTTER RESPONSIVE REQUIREMENTS

### Advanced Responsive Widgets
□ MediaQuery with comprehensive device information
□ LayoutBuilder for constraint-based responsive design
□ Flexible/Expanded with enhanced flex properties
□ ResponsiveBuilder for breakpoint-based layouts
□ OrientationBuilder with state preservation

### Material Design 3 Integration
□ Material Design 3 responsive breakpoints (compact, medium, expanded)
□ Adaptive navigation (NavigationBar, NavigationRail, NavigationDrawer)
□ Dynamic color theming with Material You
□ Advanced typography with Material Design type scale

### Performance and Optimization
□ Widget optimization with const constructors
□ ListView.builder for large datasets
□ Image optimization with cached_network_image
□ State management optimization
□ Platform-specific optimizations
```

### Advanced Native iOS Detection & Strategy
- **Project Files**: .xcodeproj, .xcworkspace
- **Configuration**: Info.plist, Build Settings
- **Frameworks**: UIKit, SwiftUI, Combine
- **Architecture**: MVVM, VIPER, Clean Architecture

### Enhanced iOS Native Responsive Requirements
```markdown
✅ ENHANCED iOS NATIVE RESPONSIVE REQUIREMENTS

### Advanced Layout System
□ Auto Layout with priority-based constraints
□ Size Classes (compact/regular) with trait collections
□ SwiftUI responsive modifiers and adaptive layouts
□ Safe Area Layout Guides with comprehensive inset handling
□ Dynamic Type support with custom font scaling

### iOS-Specific Features
□ Dynamic Island integration for iPhone 14/15 series
□ Live Activities and widgets support
□ Haptic feedback with UIFeedbackGenerator
□ Dark mode and tinted appearance support
□ Multitasking support (Split View, Slide Over, Stage Manager)

### Accessibility Excellence
□ VoiceOver optimization with custom actions
□ Switch Control and Voice Control support
□ Dynamic Type with custom accessibility sizes
□ Reduce Motion preferences support
□ High Contrast mode support
```

### Advanced Native Android Detection & Strategy
- **Build Files**: build.gradle (app and project level)
- **Configuration**: AndroidManifest.xml
- **Architecture**: MVVM with ViewModel, Clean Architecture
- **UI Framework**: Jetpack Compose, View system

### Enhanced Android Native Responsive Requirements
```markdown
✅ ENHANCED ANDROID NATIVE RESPONSIVE REQUIREMENTS

### Advanced Layout System
□ ConstraintLayout with advanced constraint chains
□ Jetpack Compose responsive layouts with adaptive design
□ Multiple screen density resources with vector drawables
□ Window size classes for responsive design
□ Foldable device support with window metrics

### Material Design 3 Integration
□ Material Design 3 components and theming
□ Dynamic color with Material You
□ Adaptive navigation patterns
□ Advanced motion and transitions
□ Edge-to-edge design with proper insets

### Android-Specific Features
□ Adaptive icons and themed icons
□ Notification channels and importance
□ Background work with WorkManager
□ App shortcuts and widgets
□ RTL language support with layout mirroring

### Accessibility Excellence
□ TalkBack optimization with content descriptions
□ Switch Access support
□ Large text and display size support
□ Color correction and high contrast support
□ Reduce animations preferences
```

## 🔄 ENHANCED CROSS-PLATFORM UNIVERSAL PRINCIPLES

### Advanced Universal Responsive Rules
```markdown
✅ ENHANCED UNIVERSAL RESPONSIVE PRINCIPLES

### Design System Integration
□ Consistent design token system (colors, typography, spacing)
□ Component library with platform-specific variants
□ Shared design patterns with platform adaptations
□ Unified accessibility standards across platforms

### Performance Optimization
□ Platform-appropriate image formats and optimization
□ Lazy loading strategies for each platform
□ Memory management best practices
□ Battery life optimization for mobile platforms

### Accessibility Excellence
□ WCAG AAA compliance across all platforms
□ Platform-specific accessibility APIs integration
□ Consistent keyboard navigation patterns
□ Screen reader optimization for each platform
□ Color contrast compliance (7:1 ratio for AAA)

### Advanced Interaction Patterns
□ Platform-appropriate touch targets and spacing
□ Gesture recognition with platform conventions
□ Animation performance optimization
□ Haptic feedback integration where available
□ Voice control and switch access support

### Responsive Design Patterns
□ Adaptive layouts that respect platform conventions
□ Progressive enhancement approach
□ Graceful degradation for older devices
□ Orientation change handling with state preservation
□ Multi-window and split-screen support
```

## 🎯 ENHANCED PLATFORM-SPECIFIC VALIDATION PROTOCOL

### Pre-Design Enhanced Validation
```bash
# Enhanced validation before starting design work:

1. Comprehensive Platform Detection:
   list_dir({relative_workspace_path: "."})
   read_file({target_file: "package.json"}) # Web/React Native
   read_file({target_file: "pubspec.yaml"}) # Flutter
   read_file({target_file: "build.gradle"}) # Android
   list_dir({relative_workspace_path: "ios"}) # iOS
   
2. Framework and Dependency Analysis:
   - Analyze package.json dependencies for framework detection
   - Check for UI libraries and component frameworks
   - Identify build tools and optimization libraries
   - Detect testing frameworks and accessibility tools
   
3. Design System Analysis:
   - Check for existing design tokens and theme files
   - Analyze component library structure
   - Identify styling approach (CSS-in-JS, SCSS, styled-components)
   - Evaluate accessibility compliance tools
   
4. Performance Requirements Assessment:
   - Identify performance monitoring tools
   - Check for optimization libraries and configurations
   - Analyze bundle size and loading requirements
   - Evaluate device support matrix

5. Load Enhanced Platform-Specific Rules:
   - Apply advanced responsive strategy with performance optimization
   - Set comprehensive breakpoints and touch targets
   - Use platform design guidelines with modern enhancements
   - Integrate accessibility requirements and testing tools
```

### Post-Design Enhanced Validation
```markdown
✅ ENHANCED PLATFORM VALIDATION CHECKLIST

### Web Projects
□ Progressive enhancement from 320px implemented
□ All breakpoints tested with real devices and browser dev tools
□ Touch targets 44px+ with proper spacing on all viewports
□ Advanced navigation patterns work across all screen sizes
□ Responsive images with WebP/AVIF and lazy loading implemented
□ Forms optimized for all device sizes with proper validation
□ Performance targets met (Core Web Vitals, Lighthouse scores)
□ WCAG AAA accessibility compliance verified
□ PWA features implemented and tested
□ Cross-browser compatibility verified

### Mobile App Projects  
□ All target device sizes and orientations supported
□ Touch targets meet enhanced platform minimums (44pt/48dp + spacing)
□ Advanced safe area handling for all device types
□ Orientation changes handled with state preservation
□ Platform-specific patterns and guidelines followed
□ Advanced keyboard interactions and input handling
□ Comprehensive accessibility features implemented and tested
□ Performance optimized for target device capabilities
□ Platform-specific features integrated (haptics, notifications)
□ Multi-window and split-screen scenarios handled

### Cross-Platform Projects
□ Universal design principles applied consistently
□ Platform-specific adaptations implemented where needed
□ Consistent user experience with platform-appropriate feel
□ Performance optimized for all target devices and platforms
□ Comprehensive accessibility requirements met across platforms
□ Design system integration verified across all platforms
□ Component library consistency maintained
□ Platform-specific testing completed
```

## 📋 ENHANCED RESPONSIVE DOCUMENTATION TEMPLATE

```markdown
# Enhanced Platform-Specific Responsive Specifications

## 🔍 Comprehensive Platform Analysis
**Primary Platform**: [Web/React Native/Flutter/iOS Native/Android Native/Cross-Platform]
**Framework/Technology**: [Specific framework and version detected]
**UI Library**: [Component library or design system used]
**Build Tools**: [Build and optimization tools detected]
**Target Devices**: [Comprehensive list of supported devices and screen sizes]
**Performance Targets**: [Specific performance requirements and constraints]

## 📱 Advanced Responsive Strategy Applied
**Approach**: [Mobile-first/Platform-adaptive/Universal/Progressive Enhancement]
**Breakpoint System**: [Comprehensive breakpoint system for detected platform]
**Touch Target Standards**: [Enhanced touch target requirements with spacing]
**Typography System**: [Fluid typography and scaling approach]
**Layout System**: [Grid system, flexbox, or platform-specific layout approach]

## 🎨 Design System Integration
**Design Tokens**: [Color, typography, spacing, elevation token usage]
**Component Library**: [Existing components and new component requirements]
**Theme System**: [Dark mode, high contrast, and theming approach]
**Accessibility Standards**: [WCAG compliance level and platform-specific requirements]

## ⚡ Performance Optimization Strategy
**Image Optimization**: [Responsive images, format selection, lazy loading]
**Code Splitting**: [Bundle optimization and loading strategies]
**Caching Strategy**: [Browser/app caching and offline capabilities]
**Animation Performance**: [60fps animations and reduced motion support]
**Memory Management**: [Memory optimization and cleanup strategies]

## ♿ Enhanced Accessibility Implementation
**Screen Reader Support**: [Platform-specific screen reader optimization]
**Keyboard Navigation**: [Comprehensive keyboard navigation patterns]
**Voice Control**: [Voice control and switch access support]
**Visual Accessibility**: [Color contrast, text scaling, high contrast mode]
**Motor Accessibility**: [Touch target sizing, gesture alternatives]

## 🎯 Platform-Specific Adaptations
### Web Specific
- Progressive Web App features and offline capabilities
- Cross-browser compatibility and graceful degradation
- SEO optimization and semantic HTML structure
- Performance optimization with Core Web Vitals

### iOS Specific
- Dynamic Island integration and Live Activities
- Haptic feedback and platform-specific interactions
- Dynamic Type and accessibility size support
- Multitasking and Stage Manager support

### Android Specific
- Material Design 3 implementation and theming
- Edge-to-edge design with proper insets
- Foldable device support and adaptive layouts
- RTL language support and layout mirroring

### Cross-Platform Specific
- Shared design system with platform variants
- Consistent user experience across platforms
- Platform-appropriate navigation and interaction patterns
- Unified accessibility implementation

## ✅ Comprehensive Validation Results
□ Platform detection completed with framework analysis
□ Advanced responsive strategy applied with performance optimization
□ Enhanced touch targets and spacing validated
□ WCAG AAA accessibility requirements met and tested
□ Platform-specific guidelines followed with modern enhancements
□ Design system integration completed and validated
□ Performance targets met and optimized
□ Cross-platform compatibility verified
□ User testing completed with accessibility validation
□ Implementation specifications ready with comprehensive documentation
```

## 🚨 ENHANCED CRITICAL FAILURE HANDLING

### Advanced Platform Detection Failures
```markdown
❌ IF ENHANCED PLATFORM DETECTION FAILS:
1. Perform manual comprehensive project structure analysis
2. Analyze package.json/pubspec.yaml/build files for framework clues
3. Check for framework-specific folders and configuration files
4. Ask user to specify platform type with detailed requirements
5. Apply universal responsive principles with platform-agnostic approach
6. Document uncertainty and provide multiple platform specifications
7. Create fallback responsive strategy with progressive enhancement
8. Implement comprehensive testing strategy for validation
```

### Advanced Responsive Strategy Conflicts
```markdown
❌ IF MULTIPLE PLATFORMS DETECTED OR CONFLICTS ARISE:
1. Prioritize by primary target platform (user specification or usage data)
2. Create comprehensive hybrid responsive strategy
3. Document platform-specific variants with detailed specifications
4. Ensure cross-platform compatibility with shared design system
5. Test on all detected platforms with real devices
6. Implement progressive enhancement for broader compatibility
7. Create platform-specific optimization strategies
8. Document performance implications and trade-offs
```

### Performance and Accessibility Validation Failures
```markdown
❌ IF PERFORMANCE OR ACCESSIBILITY TARGETS NOT MET:
1. Analyze performance bottlenecks with platform-specific tools
2. Implement optimization strategies (lazy loading, code splitting, caching)
3. Conduct comprehensive accessibility audit with assistive technology
4. Remediate accessibility issues with platform-specific solutions
5. Re-test with real devices and users
6. Document optimization strategies and accessibility implementations
7. Create monitoring and maintenance strategies
8. Establish continuous validation processes
```

---

**Remember**: Enhanced platform detection drives advanced responsive strategy with performance optimization, accessibility excellence, and design system integration. Always validate detection and implementation with real devices, users, and comprehensive testing protocols.