import boto3

PROFILE_NAME = 'dacn'

boto3.setup_default_session(profile_name=PROFILE_NAME)
cf=boto3.client('cloudformation')
stack_description=cf.describe_stack_resources(PhysicalResourceId="cn-el-1jo4mjfg3zhpo")

for s in stack_description['StackResources']:
    print(s['StackName'])
