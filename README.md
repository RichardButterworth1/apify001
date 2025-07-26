# GPT LinkedIn Search Service (Apify-powered)

A minimal Node.js/Express service that:
1. Accepts a company name and 3+ job titles.
2. Uses an Apify **search actor** to discover LinkedIn profile URLs matching those terms.
3. Passes those profile URLs to your specified **enrichment actor** (`2SyF0bVxmgGr8IVCZ`) to scrape data.
4. Returns the **top 5** results to the caller (intended to be a GPT Action).

## Quick Start

```bash
cp .env.example .env
# Fill in APIFY_TOKEN and actor IDs
npm install
npm start
