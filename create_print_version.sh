#!/bin/sh
# Program documentation:
# http://www.ghostscript.com/doc/current/Use.htm
# http://www.ghostscript.com/doc/current/VectorDevices.htm
# http://www.ghostscript.com/doc/current/Ps2pdf.htm
# http://help.adobe.com/en_US/acrobat/acrobat_dc_sdk/2015/HTMLHelp/#t=Acro12_MasterBook%2FPDF_Create_Principles%2FPDF_Create_Principles.htm
# https://web.archive.org/web/20010605041640/http://partners.adobe.com/asn/developer/acrosdk/docs/createpdfapi/DistillerParameters.pdf
COMMENT=
# rotate the third-to-last page to portrait format for printing
#pdftk 'fibel.pdf' rotate r3north output 'fibel_temp.pdf'
# set PDF TrimBox
# 72 points = 1 inch = 25.4 millimeters
# i.e. we’re setting the TrimBox origin (bottom left corner) to 19.84pt = 7mm
# horizontally and vertically and its size to
# 595.28pt = 210mm, 841.89pt = 297mm (i.e. A4)
# Note that podofobox’s arguments are in units of pt/100
#podofobox 'fibel_temp0.pdf' 'fibel_temp1.pdf' trim 1984 1984 59528 84189
# convert to grayscale and ensure PDF/X-3 using Ghostscript
gs                                                                            \
  ${COMMENT- -q} -dSAFER                                                      \
  ${COMMENT- output as PDF}                                                   \
  -sDEVICE=pdfwrite                                                           \
  -dEmbedAllFonts                                                             \
  ${COMMENT- convert to grayscale}                                            \
  -sProcessColorModel=DeviceGray -sColorConversionStrategy=Gray               \
  ${COMMENT- don’t downsample images}                                         \
  -dDownsampleColorImages=false                                               \
  -dDownsampleGrayImages=false                                                \
  -dDownsampleMonoImages=false                                                \
  ${COMMENT- create a PDF/X-3 file}                                           \
  -dPDFX -dPDFACompatibilityPolicy=1                                          \
  ${COMMENT- -sOutputICCProfile='icc/Gray-elle-V4-srgbtrc.icc'}                           \
  ${COMMENT- set PDF BleedBox and TrimBox}                                    \
  ${COMMENT- 72 points = 1 inch = 25.4 millimeters}                           \
  ${COMMENT- i.e. we’re setting the TrimBox 19.84pt = 7mm smaller than the}   \
  ${COMMENT- MediaBox at all four edges, which should result in an A4 page}   \
  ${COMMENT- size again. For more info, see e.g.}                             \
  ${COMMENT- https://wiki.scribus.net/canvas/PDF_Boxes_:_mediabox,_cropbox,_bleedbox,_trimbox,_artbox}                     \
  -dPDFXSetBleedBoxToMediaBox                                                 \
  -dPDFXTrimBoxToMediaBoxOffset='{19.84 19.84 19.84 19.84}'                   \
  ${COMMENT- output file name}                                                \
  -o 'fibel_print_'$(date +%Y-%m-%d_%H-%M)'.pdf'                              \
  ${COMMENT- input file name(s)}                                              \
  -f 'pdfx_def.ps' 'fibel.pdf'

