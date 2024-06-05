# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"R89.0","system":"icd10"},{"code":"R89.4","system":"icd10"},{"code":"R83.9","system":"icd10"},{"code":"R74.9","system":"icd10"},{"code":"R87.1","system":"icd10"},{"code":"R32.X","system":"icd10"},{"code":"R19.8","system":"icd10"},{"code":"R86.0","system":"icd10"},{"code":"R86.4","system":"icd10"},{"code":"R41.0","system":"icd10"},{"code":"R85.1","system":"icd10"},{"code":"R84.4","system":"icd10"},{"code":"R85.4","system":"icd10"},{"code":"R87.0","system":"icd10"},{"code":"R57.9","system":"icd10"},{"code":"R01.1","system":"icd10"},{"code":"R30.9","system":"icd10"},{"code":"R79.9","system":"icd10"},{"code":"R87.4","system":"icd10"},{"code":"R85.0","system":"icd10"},{"code":"R27.0","system":"icd10"},{"code":"R43.8","system":"icd10"},{"code":"R47.8","system":"icd10"},{"code":"R94.1","system":"icd10"},{"code":"R84.0","system":"icd10"},{"code":"R93.8","system":"icd10"},{"code":"R73.9","system":"icd10"},{"code":"R87.8","system":"icd10"},{"code":"R20.8","system":"icd10"},{"code":"R82.9","system":"icd10"},{"code":"R07.4","system":"icd10"},{"code":"R86.9","system":"icd10"},{"code":"R89.1","system":"icd10"},{"code":"R49.8","system":"icd10"},{"code":"R04.9","system":"icd10"},{"code":"R10.4","system":"icd10"},{"code":"R25.1","system":"icd10"},{"code":"R85.9","system":"icd10"},{"code":"R56.8","system":"icd10"},{"code":"R32","system":"icd10"},{"code":"R85","system":"icd10"},{"code":"R60.9","system":"icd10"},{"code":"R84.1","system":"icd10"},{"code":"R86.8","system":"icd10"},{"code":"R50.9","system":"icd10"},{"code":"R79.8","system":"icd10"},{"code":"R27.8","system":"icd10"},{"code":"R23.8","system":"icd10"},{"code":"R26.8","system":"icd10"},{"code":"R45.7","system":"icd10"},{"code":"R25.8","system":"icd10"},{"code":"R22.9","system":"icd10"},{"code":"R06.8","system":"icd10"},{"code":"R61.9","system":"icd10"},{"code":"R85.8","system":"icd10"},{"code":"R78.8","system":"icd10"},{"code":"R52.9","system":"icd10"},{"code":"R86.1","system":"icd10"},{"code":"R76.9","system":"icd10"},{"code":"R48.8","system":"icd10"},{"code":"R87.9","system":"icd10"},{"code":"R09.8","system":"icd10"},{"code":"R76.8","system":"icd10"},{"code":"R29.8","system":"icd10"},{"code":"R40.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-symptoms-signs-and-abnormal-clinical-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["death-by-symptoms-signs-and-abnormal-clinical-specified---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["death-by-symptoms-signs-and-abnormal-clinical-specified---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["death-by-symptoms-signs-and-abnormal-clinical-specified---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
