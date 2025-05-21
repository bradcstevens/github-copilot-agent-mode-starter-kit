---
applyTo: "**/instruction-loading*/**,**/optimization*/**"
---

# HIERARCHICAL instruction LOADING SYSTEM

> **TL;DR:** This instruction implements an optimized loading system that only loads necessary instructions based on context, complexity level, and current phase to maximize token efficiency.

## 🧠 HIERARCHICAL instruction STRUCTURE

```mermaid
graph TD
    Root["Root instructions"] --> Core["Core Instructions<br>(Always Loaded)"]
    Root --> Common["Common instructions<br>(Mode Independent)"]
    Root --> Mode["Mode-Specific<br>instructions"]
    Root --> Level["Complexity Level<br>instructions"]
    
    Core --> Platform["Platform<br>Detection"]
    Core --> File["File<br>Operations"]
    Core --> Transition["Mode<br>Transitions"]
    
    Mode --> VAN["VAN Mode<br>instructions"]
    Mode --> PLAN["PLAN Mode<br>instructions"]
    Mode --> CREATIVE["CREATIVE Mode<br>instructions"]
    Mode --> IMPLEMENT["IMPLEMENT Mode<br>instructions"]
    Mode --> REFLECT["REFLECT Mode<br>instructions"]
    
    Level --> Level1["Level 1<br>instructions"]
    Level --> Level2["Level 2<br>instructions"]
    Level --> Level3["Level 3<br>instructions"]
    Level --> Level4["Level 4<br>instructions"]
    
    style Root fill:#4da6ff,stroke:#0066cc,color:white
    style Core fill:#ffa64d,stroke:#cc7a30,color:white
    style Common fill:#4dbb5f,stroke:#36873f,color:white
    style Mode fill:#d94dbb,stroke:#a3378a,color:white
    style Level fill:#4dbbbb,stroke:#368787,color:white
```

## 📊 instruction LOADING PROTOCOL

```mermaid
sequenceDiagram
    participant User
    participant LoadManager
    participant instructionCache
    participant FileSystem
    
    User->>LoadManager: Request mode activation
    LoadManager->>instructionCache: Check cached core instructions
    instructionCache-->>LoadManager: Return cached instructions if available
    
    LoadManager->>FileSystem: Load essential mode instructions
    FileSystem-->>LoadManager: Return essential instructions
    
    LoadManager->>LoadManager: Register lazy loaders for specialized instructions
    LoadManager->>User: Return initialized mode
    
    User->>LoadManager: Request specialized functionality
    LoadManager->>instructionCache: Check specialized instruction cache
    instructionCache-->>LoadManager: Return cached instruction if available
    
    alt instruction not in cache
        LoadManager->>FileSystem: Load specialized instruction
        FileSystem-->>LoadManager: Return specialized instruction
        LoadManager->>instructionCache: Cache specialized instruction
    end
    
    LoadManager->>User: Execute specialized functionality
```

## 🔄 instruction LOADING IMPLEMENTATION

```javascript
// Pseudocode for hierarchical instruction loading
class instructionLoadManager {
  constructor() {
    this.cache = {
      core: {},
      common: {},
      mode: {},
      level: {}
    };
    this.lazyLoaders = {};
  }
  
  // Initialize a mode with only essential instructions
  initializeMode(modeName, complexityLevel) {
    // Always load core instructions
    this.loadCoreinstructions();
    
    // Load common instructions
    this.loadCommoninstructions();
    
    // Load essential mode-specific instructions
    this.loadEssentialModeinstructions(modeName);
    
    // Load complexity level instructions
    this.loadComplexityinstructions(complexityLevel);
    
    // Register lazy loaders for specialized functionality
    this.registerLazyLoaders(modeName, complexityLevel);
    
    return {
      modeName,
      complexityLevel,
      status: "initialized"
    };
  }
  
  // Load only when specialized functionality is needed
  loadSpecializedinstruction(instructionType) {
    if (this.lazyLoaders[instructionType]) {
      if (!this.cache.specialized[instructionType]) {
        const instruction = this.lazyLoaders[instructionType]();
        this.cache.specialized[instructionType] = instruction;
      }
      return this.cache.specialized[instructionType];
    }
    return null;
  }
  
  // Register specialized instruction loaders based on mode and complexity
  registerLazyLoaders(modeName, complexityLevel) {
    // Clear existing lazy loaders
    this.lazyLoaders = {};
    
    // Register mode-specific lazy loaders
    if (modeName === "CREATIVE") {
      this.lazyLoaders["architecture"] = () => this.loadinstruction("creative-phase-architecture.md");
      this.lazyLoaders["algorithm"] = () => this.loadinstruction("creative-phase-algorithm.md");
      this.lazyLoaders["uiux"] = () => this.loadinstruction("creative-phase-uiux.md");
    } else if (modeName === "IMPLEMENT") {
      this.lazyLoaders["testing"] = () => this.loadinstruction("implementation-testing.md");
      this.lazyLoaders["deployment"] = () => this.loadinstruction("implementation-deployment.md");
    }
    
    // Register complexity-specific lazy loaders
    if (complexityLevel >= 3) {
      this.lazyLoaders["comprehensive-planning"] = () => this.loadinstruction("planning-comprehensive.md");
      this.lazyLoaders["advanced-verification"] = () => this.loadinstruction("verification-advanced.md");
    }
  }
}
```

## 📋 instruction DEPENDENCY MAP

```mermaid
graph TD
    Main["main.instructions.md"] --> Core1["platform-awareness.md"]
    Main --> Core2["file-verification.md"]
    Main --> Core3["command-execution.md"]
    
    subgraph "VAN Mode"
        VanMap["van-mode-map.md"] --> Van1["van-complexity-determination.md"]
        VanMap --> Van2["van-file-verification.md"]
        VanMap --> Van3["van-platform-detection.md"]
    end
    
    subgraph "PLAN Mode"
        PlanMap["plan-mode-map.md"] --> Plan1["task-tracking-basic.md"]
        PlanMap --> Plan2["planning-comprehensive.md"]
    end
    
    subgraph "CREATIVE Mode"
        CreativeMap["creative-mode-map.instructions.md"] --> Creative1["creative-phase-enforcement.md"]
        CreativeMap --> Creative2["creative-phase-metrics.md"]
        Creative1 & Creative2 -.-> CreativeSpecialized["Specialized Creative instructions"]
        CreativeSpecialized --> CArch["creative-phase-architecture.md"]
        CreativeSpecialized --> CAlgo["creative-phase-algorithm.md"]
        CreativeSpecialized --> CUIUX["creative-phase-uiux.md"]
    end
    
    subgraph "IMPLEMENT Mode"
        ImplementMap["implement-mode-map.md"] --> Impl1["implementation-guide.md"]
        ImplementMap --> Impl2["testing-strategy.md"]
    end
```

## 🔍 MODE-SPECIFIC instruction LOADING

### VAN Mode Essential instructions
```markdown
- main.instructions.md (Core)
- platform-awareness.md (Core)
- file-verification.md (Core)
- van-mode-map.md (Mode)
```

### PLAN Mode Essential instructions
```markdown
- main.instructions.md (Core)
- plan-mode-map.md (Mode)
- task-tracking-[complexity].md (Level)
```

### CREATIVE Mode Essential instructions
```markdown
- main.instructions.md (Core)
- creative-mode-map.instructions.md (Mode)
- creative-phase-enforcement.md (Mode)
```

### CREATIVE Mode Specialized instructions (Lazy Loaded)
```markdown
- creative-phase-architecture.md (Specialized)
- creative-phase-algorithm.md (Specialized)
- creative-phase-uiux.md (Specialized)
```

### IMPLEMENT Mode Essential instructions
```markdown
- main.instructions.md (Core)
- command-execution.md (Core)
- implement-mode-map.md (Mode)
```

## 🚀 IMPLEMENTATION BENEFITS

The hierarchical loading system provides:

1. **Reduced Initial Loading**: Only essential instructions loaded at start (~70% token reduction)
2. **Cached Core Instructions**: instructions shared between modes are cached
3. **Specialized instruction Loading**: Specialized instructions loaded only when needed
4. **Complexity-Based Loading**: Only load instructions appropriate for task complexity

## 📈 TOKEN USAGE COMPARISON

| Approach | Initial Tokens | Specialized Tokens | Total Tokens |
|----------|---------------|-------------------|--------------|
| Original System | ~70,000 | Included in initial | ~70,000 |
| Hierarchical System | ~15,000 | ~10,000 (on demand) | ~25,000 |
| **Token Reduction** | **~55,000 (78%)** | **N/A** | **~45,000 (64%)** |

## 🔄 USAGE EXAMPLE

### Example: Creative Phase with Architecture instruction

```javascript
// Initialize the CREATIVE mode with only essential instructions
const mode = instructionManager.initializeMode("CREATIVE", 3);

// Core and essential mode instructions are loaded 
// Architecture instructions are NOT loaded yet

// Later, when architecture design is needed:
const architectureinstruction = instructionManager.loadSpecializedinstruction("architecture");

// Now the architecture instruction is loaded and cached
```

## 🧪 instruction LOADING VERIFICATION

To ensure the instruction loading system is working optimally:

```markdown
## instruction Loading Verification

- Core Instructions: [Loaded]
- Mode-Essential instructions: [Loaded]
- Complexity-Level instructions: [Loaded]
- Specialized instructions: [Not Loaded]

Current Token Usage: [X] tokens
Potential Token Savings: [Y] tokens
```

This hierarchical approach ensures optimal token usage while maintaining all functionality.