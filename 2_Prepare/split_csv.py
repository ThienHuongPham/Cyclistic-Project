import csv

with open('202310-divvy-tripdata.csv', 'r') as infile:
    reader = csv.reader(infile)
    header = next(reader)
    rows = [row for row in reader]


chunk_size = 500000

for i in range(0, len(rows), chunk_size):
    chunk = rows[i:i + chunk_size]
    with open(f'202310-divvy-tripdata-part{i // chunk_size}.csv', 'w', newline='') as outfile:
        writer = csv.writer(outfile)
        writer.writerow(header)
        writer.writerows(chunk)



