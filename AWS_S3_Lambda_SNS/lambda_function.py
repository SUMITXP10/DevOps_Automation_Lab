import json
import boto3
import os

sns = boto3.client("sns")

TOPIC_ARN = "arn:aws:sns:ap-south-2:545009835529:S3UploadNotification"

def lambda_handler(event, context):

    bucket = event['Records'][0]['s3']['bucket']['name']
    key = event['Records'][0]['s3']['object']['key']

    message = f"""
New Object Uploaded

Bucket : {bucket}
Object : {key}

Uploaded Successfully.
"""

    sns.publish(
        TopicArn=TOPIC_ARN,
        Subject="S3 Upload Notification",
        Message=message
    )

    return {
        "statusCode":200,
        "body":"Notification Sent"
    }
