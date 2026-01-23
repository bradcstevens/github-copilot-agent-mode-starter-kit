Generate a complete, working full-stack web app.

GOAL
Create a faithful replica of the public-facing website TARGET_WEBSITE with a natural-language Customer Support Chat experience for site visitors. 

TARGET_WEBSITE is defined at the end of these instructions.

IMPORTANT CONSTRAINTS
- The site should visually and structurally resemble TARGET_WEBSITE as closely as practical.
- Do NOT scrape or copy protected/paid content behind logins.
- Use public pages only.
- Keep the experience fast, mobile-friendly, and accessible (WCAG-minded).
- The chat must be usable on every page (floating button + drawer/modal).

CHAT EXPERIENCE REQUIREMENTS
1) User-facing UI
   - A floating "Support" button anchored bottom-right on all pages.
   - Clicking opens a chat drawer (or modal) that contains:
     - Chat transcript (user + assistant bubbles)
     - Text input + send button
     - Optional "Reset chat" action
     - Optional "Helpful / Not helpful" feedback buttons on assistant messages
   - Chat should stream responses if feasible; if not, render once complete.
   - Provide clear states:
     - Loading / thinking indicator
     - Error banner with technical details (non-sensitive) when backend fails
     - Empty state with 2–4 example questions tailored to TARGET_WEBSITE
   - Support scrolling inside the chat drawer for reviewing older messages in a conversation thread.

2) Grounded answers with citations (non-negotiable)
   - Every assistant answer must include citations as source links (URLs) that support the claims.
   - Cite at least 1 source for short answers; more for multi-claim answers.
   - Citations must be clickable links and appear inline or as a "Sources" list.
   - If the answer cannot be supported by sources, the assistant must say so and ask a clarifying question or provide a safe fallback.
   - If the user asks for something unrelated to TARGET_WEBSITE, politely redirect and explain scope.

3) Retrieval behavior
   - The assistant must answer questions using only information from:
     - TARGET_WEBSITE public pages, AND/OR
     - A curated list of support sources you discover on TARGET_WEBSITE (FAQ, help center, docs, pricing, policies, contact pages).
   - When possible, fetch or reference the most relevant pages from TARGET_WEBSITE.
   - Prefer official pages; avoid third-party sources unless TARGET_WEBSITE links to them as official.

AZURE AI FOUNDRY MODELS CONNECTIVITY (SERVER-SIDE) — REQUIRED
Implement a backend endpoint:
- POST /api/chat

Behavior:
- The client calls POST /api/chat with:
  - messages: chat transcript in { role: "user"|"assistant"|"system", content: string }[] form
  - optional: pageUrl (string), pageTitle (string) for context
- The server calls Microsoft Foundry Models using:
  - Foundry Models endpoint + api-version query parameter
  - Pass the deployment name as the "model" (deployment identifier)
  - Return assistant message text to the client (and any citations data you can structure)

ENVIRONMENT VARIABLES (LOCAL .env)
The support chat component must connect to Microsoft Foundry Model Deployment Endpoints using a Model Endpoint URL and API Key to authenticate. These values:
- Must be stored in a local .env file
- Must automatically load at runtime
- Must generate clear errors when requests cannot be completed with declared values
- Must use supported parameters for the specified Endpoint, API Version, and Model deployed on Microsoft Foundry.

Required env vars:
```
FOUNDRY_PROJECT_ENDPOINT = "{{ENDPOINT_URL}}"
FOUNDRY_PROJECT_API_KEY = "{{SECRET}}"
FOUNDRY_MODEL_API_VERSION = "{{MODEL_API_VERSION}}"
FOUNDRY_MODEL_DEPLOYMENT_NAME = "{{MODEL_DEPLOYMENT_NAME}}"
```

SECURITY & SAFETY REQUIREMENTS
- Never expose the API key to the browser/client.
- Client must only call /api/chat; server holds secrets.
- Redact secrets from logs. Log only high-level diagnostics.
- Implement basic abuse guardrails:
  - Max input length
  - Max tokens/response size (reasonable default)
  - Basic rate limiting (in-memory is fine)
- Provide robust error messages:
  - "Misconfigured endpoint" vs "Unauthorized" vs "Network error"
  - Include HTTP status codes and a short troubleshooting hint

CITATION FORMAT REQUIREMENTS
- Assistant output must always include citations for factual claims.
- Use this format at minimum:
  - A "Sources" section at the end with bullet links
  - Each bullet includes the page title (if known) + URL
- If you can, also include inline markers like [1], [2] that map to the sources list.

ARCHITECTURE REQUIREMENTS
- Use a modern web framework appropriate for Spark's default stack.
- Implement:
  - Frontend: pages replicating TARGET_WEBSITE navigation and key content sections
  - Backend: /api/chat route that calls Foundry Models
- Add a small "Support Context" layer:
  - The client sends current pageUrl/pageTitle with each request
  - The server can incorporate these for more relevant grounding

RETRIEVAL IMPLEMENTATION (CHOOSE A PRACTICAL APPROACH)
Implement one of the following approaches (prefer the simplest that works reliably):

A) Lightweight site index:
   - At build-time or first-run, crawl TARGET_WEBSITE within a safe limit (e.g., 50–200 pages max, same domain).
   - Extract: title, headings, main content, canonical URL.
   - Store in a local JSON index.
   - At query time, retrieve top K relevant pages using simple keyword + TF-IDF or embedding similarity.
   - Provide retrieved URLs to the model and require it to cite them.

B) "On-demand fetch":
   - For each user question, search within the pre-known curated support URLs (FAQ, policies, contact, pricing).
   - Fetch the most relevant pages and include excerpts + URLs in the model prompt.
   - Ensure the assistant cites those URLs.

Whichever approach you implement:
- Keep it deterministic and explainable.
- Ensure citations come from the retrieved URLs.
- Do not hallucinate sources.

MODEL PROMPTING REQUIREMENTS (SYSTEM / DEVELOPER INSTRUCTIONS)
In the server request to the model, enforce:
- You are a support agent for TARGET_WEBSITE.
- You must ground answers in provided sources.
- You must include citations with URLs.
- If sources are insufficient, say so and ask clarifying questions.
- Do not fabricate policies, pricing, or contact details.

API CONTRACT
POST /api/chat

Request JSON:
```json
{
  "messages": [{ "role": "...", "content": "..." }],
  "pageUrl": "optional",
  "pageTitle": "optional"
}
```

Response JSON:
```json
{
  "message": "assistant text with citations",
  "sources": [
     { "title": "optional", "url": "https://..." }
  ],
  "error": null
}
```

If error:
```json
{
  "message": "",
  "sources": [],
  "error": { "code": "...", "message": "...", "details": "..." }
}
```

UI REQUIREMENTS FOR SOURCES
- Render citations nicely:
  - If response includes a "Sources" list, keep it clickable.
  - Also render "sources[]" as a compact "Sources" block under the message.

TESTING / VALIDATION
Add a simple validation checklist page or developer notes that verifies:
- /api/chat works with correct env vars
- Errors are clear with incorrect env vars
- Citations appear in every response
- Chat is accessible (keyboard navigation, aria labels)
- Mobile layout works

DELIVERABLES
- Full working project with:
  - Replica site pages for TARGET_WEBSITE
  - Floating support chat UI on all pages
  - POST /api/chat backend using Foundry Models + env vars above
  - Retrieval method (A or B) implemented
  - Citations always included, derived from real TARGET_WEBSITE URLs
- Include a short README with:
  - Setup steps
  - .env example (with placeholders)
  - Common errors and troubleshooting tips (401/403, bad endpoint, missing api-version, etc.)

NOW BUILD IT WITH THE FOLLOWING GUIDELINES AND VARIABLE VALUES
- Produce the full project code.
- Use clean, readable structure and comments where helpful.
- Make sure it runs locally with minimal steps.
- Use the following values for the environment variables: 

```
FOUNDRY_PROJECT_ENDPOINT = "https://foundry.cognitiveservices.azure.com/"
FOUNDRY_PROJECT_API_KEY = ""
FOUNDRY_MODEL_API_VERSION = "2024-12-01-preview"
FOUNDRY_MODEL_DEPLOYMENT_NAME = "gpt-5.2"
TARGET_WEBSITE = ""
```
 