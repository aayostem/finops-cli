import boto3
from datetime import datetime, timedelta

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    # logic to find dev instances and stop them if CPU < 5%
    return {'status': 'success'}
