#!/usr/bin/env cwl-runner
cwlVersion: v1.0

class: ExpressionTool
requirements: { InlineJavascriptRequirement: {} }
inputs:
  dir: Directory
expression: '${return {"files": inputs.dir.listing};}'
outputs:
  files: File[]