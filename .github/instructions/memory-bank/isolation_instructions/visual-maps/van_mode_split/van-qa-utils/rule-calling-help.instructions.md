---
applyTo: "**/van-qa-utils/instruction-calling-help.instructions.md"
---

# VAN QA: HOW TO CALL INSTRUCTIONS

> **TL;DR:** This file provides examples and reminders on how to properly call VAN QA instructions using the fetch_instructions tool.

## 🚨 instruction CALLING SYNTAX

Always use the `fetch_instructions` tool with the correct syntax:

```
<function_calls>
<invoke name="fetch_instructions">
<parameter name="instruction_names">["isolation_instructions/visual-maps/instruction-name"]
</invoke>
</function_calls> 