import boto3

session = boto3.Session(profile_name="terraform")
s3 = session.resource("s3")

for bucket in s3.buckets.all():
    print(bucket.name)

""" s3 = boto3.resource('s3')
for bucket in s3.buckets.all():
    print(bucket.name) """