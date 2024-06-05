cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  death-by-symptoms-signs-and-abnormal-clinical-specified---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  histological-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: histological-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-specified---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-voice---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-voice---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: histological-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-condition---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-condition---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-voice---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-immunodeficiency---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-immunodeficiency---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-condition---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-urine---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-urine---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-immunodeficiency---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-biolog---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-biolog---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-urine---secondary/output
  central-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: central-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-biolog---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-shock---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-shock---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: central-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-heartburn---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-heartburn---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-shock---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-respiratory---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-respiratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-heartburn---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-associated---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-associated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-respiratory---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-cachexia---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-cachexia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-associated---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-behaviour---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-behaviour---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-cachexia---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-speech---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-speech---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-behaviour---secondary/output
  cytological-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: cytological-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-speech---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-glucose---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-glucose---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: cytological-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  physiological-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: physiological-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-glucose---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-ascite---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-ascite---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: physiological-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-oliguria---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-oliguria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-ascite---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-morbidity---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-morbidity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-oliguria---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-polyuria---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-polyuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-morbidity---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-bloodpressure---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-bloodpressure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-polyuria---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-weight---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-weight---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-bloodpressure---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-generalized---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-generalized---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-weight---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-tissue---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-tissue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-generalized---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-giddiness---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-giddiness---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-tissue---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-haematuria---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-haematuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-giddiness---secondary/output
  upper-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: upper-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-haematuria---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-passage---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-passage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: upper-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-glycosuria---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-glycosuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-passage---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-headache---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-headache---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-glycosuria---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-enzyme---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-enzyme---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-headache---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-breathing---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-breathing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-enzyme---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-oedema---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-oedema---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-breathing---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-jaundice---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-jaundice---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-oedema---secondary/output
  sudden-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: sudden-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-jaundice---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-unspec---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-unspec---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: sudden-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-liver---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-liver---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-unspec---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-finds---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-finds---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-liver---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-sensation---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-sensation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-finds---secondary/output
  white-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: white-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-sensation---secondary/output
  microbiological-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: microbiological-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: white-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-senility---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-senility---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: microbiological-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  nonmedicinal-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: nonmedicinal-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-senility---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-amnesia---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-amnesia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: nonmedicinal-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  personal-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: personal-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-amnesia---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-sounds---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-sounds---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: personal-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-bowel---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-bowel---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-sounds---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-sediment---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-sediment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-bowel---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-mouth---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-mouth---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-sediment---secondary/output
  urinary-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: urinary-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-mouth---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-dysfunction---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-dysfunction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: urinary-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  cerebrospinal-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: cerebrospinal-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-dysfunction---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-intake---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-intake---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: cerebrospinal-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  invalid-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: invalid-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-intake---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-musculosk---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-musculosk---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: invalid-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-hyperhidrosis---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-hyperhidrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-musculosk---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-circul---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-circul---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-hyperhidrosis---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-discharge---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-discharge---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-circul---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-haemorrhage---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-haemorrhage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-discharge---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-classified---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-haemorrhage---secondary/output
  lower-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: lower-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-classified---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-dysphagia---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-dysphagia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: lower-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-abdom---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-abdom---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-dysphagia---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-breast---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-breast---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-abdom---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-hormones---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-hormones---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-breast---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-cough---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-cough---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-hormones---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-mobility---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-mobility---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-cough---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-collapse---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-collapse---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-mobility---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-proteinuria---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-proteinuria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-collapse---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-taste---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-taste---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-proteinuria---secondary/output
  chronic-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: chronic-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-taste---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-origin---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-origin---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: chronic-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  faecal-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: faecal-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-origin---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-changes---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-changes---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: faecal-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-throat---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-throat---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-changes---secondary/output
  involuntary-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: involuntary-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-throat---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-mortality---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-mortality---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: involuntary-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  acute-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: acute-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-mortality---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-immunol---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-immunol---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: acute-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-difficulty---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-difficulty---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-immunol---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-unattended---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-unattended---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-difficulty---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-incontinence---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-incontinence---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-unattended---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-gangrene---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-gangrene---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-incontinence---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-tract---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-tract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-gangrene---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-laboratory---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-laboratory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-tract---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-state---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-state---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-laboratory---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-stupor---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-stupor---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-state---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-convulsion---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-convulsion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-stupor---secondary/output
  diagnostic-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: diagnostic-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-convulsion---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-fatigue---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-fatigue---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: diagnostic-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-structure---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-structure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-fatigue---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-retention---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-retention---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-structure---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-infant---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-infant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-retention---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-reading---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-reading---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-infant---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-concerning---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-concerning---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-reading---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-eruption---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-eruption---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-concerning---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-elevated---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-elevated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-eruption---secondary/output
  female-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: female-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-elevated---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-submitted---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-submitted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: female-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-coordination---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-coordination---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-submitted---secondary/output
  nervous-death-by-symptoms-signs-and-abnormal-clinical---secondary:
    run: nervous-death-by-symptoms-signs-and-abnormal-clinical---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-coordination---secondary/output
  death-by-symptoms-signs-and-abnormal-clinical-vomiting---secondary:
    run: death-by-symptoms-signs-and-abnormal-clinical-vomiting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: nervous-death-by-symptoms-signs-and-abnormal-clinical---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: death-by-symptoms-signs-and-abnormal-clinical-vomiting---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
