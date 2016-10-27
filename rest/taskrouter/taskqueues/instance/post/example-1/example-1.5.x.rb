# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
auth_token = 'your_auth_token'
workspace_sid = 'WSXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
taskqueue_sid = 'WQXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'


client = Twilio::REST::Client.new(account_sid, auth_token)

taskqueue = client.taskrouter.v1.workspaces(workspace_sid)
            .task_queues(taskqueue_sid)

taskqueue = taskqueue.update(target_workers: 'languages HAS "english"')

puts taskqueue.target_workers
