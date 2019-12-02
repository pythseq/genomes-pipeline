#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: CommandLineTool

label: "checkm"

requirements:
  ResourceRequirement:
    ramMin: 1000
    coresMin: 4
  InlineJavascriptRequirement: {}
  ScatterFeatureRequirement: {}

baseCommand: ["split_drep.py "]

inputs:
  genomes_folder:
    type: string
    inputBinding:
      position: 1
      prefix: '-f'
  drep_folder:
    type: Directory
    inputBinding:
      position: 2
      prefix: '-d'
  split_outfolder:
    type: string
    inputBinding:
      position: 3
      prefix: '-o'

outputs:
  split_out:
    type: Directory
    outputBinding:
      glob: $(inputs.split_outfolder)
