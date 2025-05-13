#!/bin/bash
set -e

# Install dependencies
npm ci

# Build backend
npx ampx build

# Generate amplify_outputs.json
npx ampx generate outputs

# Build frontend
npm run build