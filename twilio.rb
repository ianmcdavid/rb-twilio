require 'rubygems'
require 'twilio-ruby'

account_sid = "AC4a38e10a7d3d7495495f5586f0878e50"
auth_token = "522f6e3c2b57009baa75997dbb9276eb"

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts "Ask me a yes or no question, human."
if gets.downcase.chomp == "no" then puts "Whatever"
else
answer= ["Shake me harder...", "No. Nice try fool", "Yesmas Claus", "Maybe... ", "Either way, ur getting worked", "I've got 5 on it", "You better believe it!", "Does Darrel barrel? Of course!", "Probably not, nitz", "My sources tell me ur a nitz, so..", "All signs point to yes... Not!", "Aww hellll NO", "Absofriggin lutely", "In your dreams sucka", "You wish lol", "Yes, but only if you pay me"]
number_gen = rand(answer.length)
answer_selector = number_gen.floor
the_answer = answer[answer_selector]

message = @client.messages.create(
    :from => "+14047370962",
    :to =>"+15108254996",
    :body => the_answer
)
puts "Check your phone, human"
puts message.sid
end