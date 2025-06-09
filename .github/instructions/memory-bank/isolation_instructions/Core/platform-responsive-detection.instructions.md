---
description: Platform detection and responsive design strategy for DESIGN mode
applyTo: "**/platform-responsive-detection.mdc"
---
# PLATFORM DETECTION & RESPONSIVE DESIGN STRATEGY

> **TL;DR:** This rule ensures proper platform detection and applies appropriate responsive design strategies for web, mobile apps, and cross-platform projects.

## 🔍 AUTOMATIC PLATFORM DETECTION

### Detection Priority Order
1. **Check project files for platform indicators**
2. **Apply appropriate responsive strategy**
3. **Validate platform-specific requirements**
4. **Document responsive specifications**

### Platform Detection Logic

```mermaid
graph TD
    Start["🔍 START DETECTION"] --> FileCheck["📁 Check Project Files"]
    
    FileCheck --> WebCheck{"package.json +<br>CSS/SCSS files?"}
    FileCheck --> ReactNativeCheck{"package.json +<br>ios/ + android/?"}
    FileCheck --> FlutterCheck{"pubspec.yaml +<br>lib/ folder?"}
    FileCheck --> iOSCheck{".xcodeproj +<br>Info.plist?"}
    FileCheck --> AndroidCheck{"build.gradle +<br>AndroidManifest.xml?"}
    
    WebCheck -->|Yes| WebStrategy["🌐 WEB STRATEGY<br>CSS Breakpoints"]
    ReactNativeCheck -->|Yes| RNStrategy["📱 REACT NATIVE<br>Flexbox + Platform"]
    FlutterCheck -->|Yes| FlutterStrategy["🦋 FLUTTER<br>MediaQuery + Widgets"]
    iOSCheck -->|Yes| iOSStrategy["🍎 iOS NATIVE<br>Auto Layout + Size Classes"]
    AndroidCheck -->|Yes| AndroidStrategy["🤖 ANDROID NATIVE<br>ConstraintLayout + Resources"]
    
    WebStrategy --> ResponsiveWeb["📱 Web Responsive<br>Implementation"]
    RNStrategy --> ResponsiveRN["📱 RN Responsive<br>Implementation"]
    FlutterStrategy --> ResponsiveFlutter["📱 Flutter Responsive<br>Implementation"]
    iOSStrategy --> ResponsiveiOS["📱 iOS Responsive<br>Implementation"]
    AndroidStrategy --> ResponsiveAndroid["📱 Android Responsive<br>Implementation"]
    
    style Start fill:#2196f3,stroke:#1565c0,color:white
    style WebStrategy fill:#4caf50,stroke:#2e7d32,color:white
    style RNStrategy fill:#61dafb,stroke:#21b6ce,color:black
    style FlutterStrategy fill:#02569b,stroke:#014c87,color:white
    style iOSStrategy fill:#007aff,stroke:#0056cc,color:white
    style AndroidStrategy fill:#3ddc84,stroke:#2ba35f,color:white
```

## 🌐 WEB PROJECT RESPONSIVE STRATEGY

### Detection Criteria
- package.json (with web frameworks: React, Vue, Angular, Svelte)
- HTML files (index.html, public/index.html)
- CSS/SCSS/Tailwind files
- Webpack/Vite/Parcel config files
- No mobile platform folders (ios/, android/)

### Web Responsive Requirements
- Mobile-first design approach (min-width media queries)
- Breakpoints: 640px (sm), 768px (md), 1024px (lg), 1280px (xl)
- Touch targets minimum 44px for mobile viewports
- Readable text without zooming (16px+ base font size)
- Navigation: hamburger menu for mobile, full nav for desktop
- Images: responsive with srcset/picture elements
- Layout: CSS Grid/Flexbox for flexible responsive layouts
- Forms: single-column mobile, multi-column desktop
- Tables: stack or horizontal scroll on mobile

## 📱 MOBILE APP RESPONSIVE STRATEGY

### React Native Detection & Strategy
- package.json with "react-native" dependency
- ios/ and android/ folders present
- metro.config.js or react-native.config.js

### React Native Responsive Requirements
- Flexbox layouts for responsive design
- Dimensions API for screen size detection
- Platform.OS checks for iOS/Android differences
- SafeAreaProvider for notched devices
- TouchableOpacity/Pressable with minimum 44pt/48dp touch targets
- Platform-specific components (Platform.select)
- Orientation handling with react-native-orientation-locker
- KeyboardAvoidingView for keyboard management

### Flutter Detection & Strategy
- pubspec.yaml with Flutter SDK
- lib/ folder with Dart files
- android/ and ios/ folders (generated)

### Flutter Responsive Requirements
- MediaQuery for screen dimensions and breakpoints
- LayoutBuilder for responsive widgets
- Flexible/Expanded for responsive flex layouts
- Material Design 3 responsive breakpoints
- Cupertino widgets for iOS-style components
- SafeArea widget for notched devices
- OrientationBuilder for landscape/portrait

### Native iOS Detection & Strategy
- .xcodeproj or .xcworkspace files
- Info.plist file
- Swift/Objective-C source files
- Storyboard/XIB files

### iOS Native Responsive Requirements
- Auto Layout constraints for flexible layouts
- Size Classes (compact/regular) for different screen sizes
- Trait Collections for adaptive interfaces
- Safe Area Layout Guides for notched devices
- Dynamic Type support for accessibility
- Stack Views (UIStackView) for responsive layouts
- Multitasking support (Split View, Slide Over)
- Landscape/Portrait orientation handling

### Native Android Detection & Strategy
- build.gradle files
- AndroidManifest.xml
- res/ folder with layouts
- Java/Kotlin source files

### Android Native Responsive Requirements
- ConstraintLayout for flexible responsive layouts
- Multiple screen density resources (mdpi, hdpi, xhdpi, xxhdpi, xxxhdpi)
- Screen size qualifiers (small, normal, large, xlarge)
- Breakpoint qualifiers (w<N>dp) for specific widths
- Material Design 3 responsive breakpoints
- WindowInsets for system bars and keyboard
- Foldable device support (if applicable)
- RTL language support (layout mirroring)
- Touch targets minimum 48dp (Material Design)

## 🔄 CROSS-PLATFORM UNIVERSAL PRINCIPLES

### Universal Responsive Rules
- Consistent spacing system (8pt/dp grid)
- Scalable typography (relative units)
- Accessible touch targets (44pt iOS / 48dp Android minimum)
- Color contrast compliance (WCAG AA: 4.5:1 for normal text)
- Keyboard navigation support
- Screen reader compatibility
- Orientation change handling
- Performance optimization for lower-end devices
- Progressive enhancement approach
- Error state responsive design

## 🎯 PLATFORM-SPECIFIC VALIDATION PROTOCOL

### Pre-Design Validation
```bash
# Run this validation before starting design work:

1. Detect platform:
   list_dir({relative_workspace_path: "."})
   
2. Check for platform files:
   - Web: package.json, CSS files
   - React Native: ios/, android/ folders
   - Flutter: pubspec.yaml
   - iOS: .xcodeproj, Info.plist
   - Android: build.gradle, AndroidManifest.xml
   
3. Load platform-specific rules:
   - Apply appropriate responsive strategy
   - Set correct breakpoints/touch targets
   - Use platform design guidelines
```

### Post-Design Validation
```markdown
✅ PLATFORM VALIDATION CHECKLIST

### Web Projects
□ Mobile-first responsive design implemented
□ All breakpoints tested and functional
□ Touch targets 44px+ on mobile viewports
□ Navigation adapts properly across screen sizes
□ Images responsive with proper loading
□ Forms usable on all device sizes

### Mobile App Projects  
□ All target device sizes supported
□ Touch targets meet platform minimums (44pt/48dp)
□ Safe area handling implemented
□ Orientation changes handled gracefully
□ Platform-specific patterns followed
□ Keyboard interactions properly managed
□ Accessibility features implemented

### Cross-Platform Projects
□ Universal design principles applied
□ Platform-specific adaptations where needed
□ Consistent experience across platforms
□ Performance optimized for all target devices
□ All accessibility requirements met
```

## 📋 RESPONSIVE DOCUMENTATION TEMPLATE

```markdown
# Platform-Specific Responsive Specifications

## 🔍 Detected Platform
**Project Type**: [Web/React Native/Flutter/iOS Native/Android Native]
**Framework**: [Specific framework detected]
**Target Devices**: [List of supported devices/screen sizes]

## 📱 Responsive Strategy Applied
**Approach**: [Mobile-first/Platform-adaptive/Universal]
**Breakpoints**: [Specific breakpoints for this platform]
**Touch Targets**: [44pt/48dp/44px minimum enforced]

## 🎯 Platform-Specific Adaptations
[List specific adaptations for detected platform]

## ✅ Validation Results
□ Platform detection completed
□ Appropriate responsive strategy applied  
□ Touch targets validated
□ Accessibility requirements met
□ Platform guidelines followed
□ Implementation specifications ready
```

## 🚨 CRITICAL FAILURE HANDLING

### Platform Detection Failures
```markdown
❌ IF PLATFORM DETECTION FAILS:
1. Manually examine project structure
2. Ask user to specify platform type
3. Apply universal responsive principles
4. Document uncertainty for implementation team
5. Provide multiple platform specifications
```

### Responsive Strategy Conflicts
```markdown
❌ IF MULTIPLE PLATFORMS DETECTED:
1. Prioritize by primary target (user specification)
2. Create hybrid responsive strategy
3. Document platform-specific variants
4. Ensure cross-platform compatibility
5. Test on all detected platforms
```

---

**Remember**: Platform detection drives responsive strategy. Always validate detection before applying responsive design patterns.
