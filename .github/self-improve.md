# GitHub Copilot Suggestion Improvement Process

## Suggestion Improvement Triggers

- Frequent manual edits to Copilot-generated code
- Repeated acceptance of the same Copilot completions
- Common correction patterns after suggestions
- Usage of new frameworks or libraries where suggestions lag
- Emerging best practices in VSCode workflows

## Analysis Process

- Compare generated suggestions with actual code implementations
- Identify patterns where Copilot frequently misses context
- Look for references to VSCode settings or extensions
- Check for consistent post-edit corrections
- Monitor acceptance vs. rejection rates of suggestions

## Suggestion Updates

### Add New Suggestion Patterns When:

- A pattern emerges in 3+ files where Copilot misses context
- Common bugs are introduced by generated code
- Repeated feedback shows the same missing completion
- New performance or security practices arise

### Refine Existing Prompts When:

- Better examples exist in the codebase
- Additional edge cases are discovered
- VSCode or Copilot settings are updated
- Implementation details have evolved

## Example Pattern Recognition

```typescript
// If you see repeated patterns like:
const data = await prisma.user.findMany({
  select: { id: true, email: true },
  where: { status: 'ACTIVE' }
});
  
// Consider refining your Copilot prompt templates:
// - Standard select fields
// - Common where conditions
// - Performance optimization patterns
```

## Suggestion Quality Checks

- Rules should be actionable and specific
- Examples should come from actual code
- References should be up to date
- Patterns should be consistently enforced

## Continuous Improvement

- Monitor VSCode feedback and editor logs
- Track common post-suggestion edits
- Update prompt templates after major refactors
- Share improved prompts in team settings or Gist
- Cross-reference with GitHub Copilot documentation

## Suggestion Deprecation

- Mark outdated prompt patterns as deprecated
- Remove unused prompt definitions
- Document migration paths for legacy prompts

## Documentation Updates

- Keep example prompts synchronized with code
- Update links to GitHub Copilot docs
- Maintain cross-references between related prompt templates
- Document any breaking changes in suggestion patterns

Follow [copilot-instructions.md](.github/copilot-instructions.md) for proper prompt formatting and structure.
