#!/bin/bash
# Rico CSS Build Script
# Concatenates and minifies all CSS modules

set -e

echo "🚀 Building Rico CSS..."

# Concatenate files
echo "📦 Concatenating modules..."
cat rico-core.css rico-utilities.css rico-responsive.css > rico.bundle.css

# Basic minification
echo "🔧 Minifying CSS..."
# Remove comments, empty lines, and extra whitespace
cat rico.bundle.css | \
  sed 's/\/\*[^*]*\*\+\([^\/][^*]*\*\+\)*\// /g' | \
  sed 's/^[[:space:]]*//g' | \
  sed '/^$/d' | \
  tr -s ' ' | \
  sed 's/ { /{/g' | \
  sed 's/ }/}/g' | \
  sed 's/: /:/g' | \
  sed 's/; /;/g' | \
  sed 's/, /,/g' > rico.min.css

# Get file sizes
CORE_SIZE=$(wc -c < rico-core.css)
UTIL_SIZE=$(wc -c < rico-utilities.css)
RESP_SIZE=$(wc -c < rico-responsive.css)
BUNDLE_SIZE=$(wc -c < rico.bundle.css)
MIN_SIZE=$(wc -c < rico.min.css)

echo ""
echo "✅ Build complete!"
echo ""
echo "📊 File sizes:"
echo "   rico-core.css:       $(printf '%6d' $CORE_SIZE) bytes"
echo "   rico-utilities.css:  $(printf '%6d' $UTIL_SIZE) bytes"
echo "   rico-responsive.css: $(printf '%6d' $RESP_SIZE) bytes"
echo "   ─────────────────────────────────"
echo "   rico.bundle.css:     $(printf '%6d' $BUNDLE_SIZE) bytes"
echo "   rico.min.css:        $(printf '%6d' $MIN_SIZE) bytes ($(echo "scale=1; ($BUNDLE_SIZE-$MIN_SIZE)/$BUNDLE_SIZE*100" | bc)% reduction)"
echo ""
echo "📁 Output files:"
echo "   - rico.bundle.css (concatenated)"
echo "   - rico.min.css (minified)"
