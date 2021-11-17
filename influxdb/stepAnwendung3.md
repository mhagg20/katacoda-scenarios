influx write -b bucket --format=lp -f dataset_lineProtocol.txt

influx query 'from(bucket: "bucket") |> range(start:1633039200) |> limit(n:20)'