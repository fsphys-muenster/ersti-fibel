#!/bin/sh
# Use ghostscript to compress the PDF file/reduce image resolution
# Change parameters to obtain desired PDF file size, e.g. ColorImageResolution
# Program documentation:
# http://www.ghostscript.com/doc/current/Use.htm
# http://www.ghostscript.com/doc/current/VectorDevices.htm
# http://www.ghostscript.com/doc/current/Ps2pdf.htm
# http://help.adobe.com/en_US/acrobat/acrobat_dc_sdk/2015/HTMLHelp/#t=Acro12_MasterBook%2FPDF_Create_Principles%2FPDF_Create_Principles.htm
# https://web.archive.org/web/20010605041640/http://partners.adobe.com/asn/developer/acrosdk/docs/createpdfapi/DistillerParameters.pdf
COMMENT=
gs                                                                            \
  -q -dSAFER                                                                  \
  ${COMMENT- output as PDF}                                                   \
  -sDEVICE=pdfwrite                                                           \
  ${COMMENT- use predefined settings for „ebook“}                             \
  ${COMMENT- see http://www.ghostscript.com/doc/current/VectorDevices.htm#PSPDF_IN} \
  ${COMMENT- http://www.ghostscript.com/doc/current/VectorDevices.htm#distillerparams} \
  -dPDFSETTINGS=/ebook                                                        \
  -dEmbedAllFonts                                                             \
  ${COMMENT- set threshold for downscaling and resolution of downscaled}      \
  ${COMMENT- COLOR images – adjust if necessary}                              \
  -dColorImageDownsampleThreshold=2                                           \
  -dColorImageResolution=200                                                  \
  ${COMMENT- don’t downsample grayscale images – change if necessary}         \
  -dDownsampleGrayImages=false                                                \
  ${COMMENT- set threshold for downscaling and resolution of downscaled}      \
  ${COMMENT- GRAYSCALE images – adjust if necessary}                          \
  -dGrayImageDownsampleThreshold=3                                            \
  -dGrayImageResolution=200                                                   \
  ${COMMENT- don’t downsample monochrome images (shouldn’t be necessary)}     \
  -dDownsampleMonoImages=false                                                \
  -dFastWebView                                                               \
  ${COMMENT- output and input file names}                                     \
  -o 'fibel_web_'$(date +%Y-%m-%d_%H-%M)'.pdf'                                \
  -f 'fibel.pdf'

