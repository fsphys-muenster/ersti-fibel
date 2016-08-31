#!/bin/sh
# Use ghostscript to compress the PDF file/reduce image resolution
# Change parameters to obtain desired PDF file size, e.g. ColorImageResolution
# Program documentation:
# http://www.ghostscript.com/doc/9.18/Use.htm
# http://www.ghostscript.com/doc/9.18/Ps2pdf.htm
# http://help.adobe.com/livedocs/acrobat_sdk/11/Acrobat11_HTMLHelp/
#   under "Adobe PDF Creation Settings"
gs                                   \
  -q -dNOPAUSE -dBATCH -dSAFER       \
  -sDEVICE=pdfwrite                  \
  -dPDFSETTINGS=/ebook               \
  -dEmbedAllFonts=true               \
  -dSubsetFonts=true                 \
  -dAntiAliasColorImages=true        \
  -dColorImageDownsampleThreshold=2  \
  -dColorImageResolution=200         \
  -dDownsampleGrayImages=false       \
  -dGrayImageDownsampleThreshold=3   \
  -dGrayImageResolution=200          \
  -dDownsampleMonoImages=false       \
  -sOutputFile="$2"                  \
  "$1"

# PDF version
#-dCompatibilityLevel=1.4           \

