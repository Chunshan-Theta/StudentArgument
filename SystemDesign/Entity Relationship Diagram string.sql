(user_list       :user_id)
(topic_list      :topic_id,user_id)
(activity_list   :avtivity_id,topic_id,user_id,assessment_id)
(assessment_list :assessment_id,user_id)
(tester_list     :tester_id,user_id,avtivity_id,chatroom_id,group)
(chatroom_list   :chatroom_id,avtivity_id)
(actionDoc       :actionDoc_id)
(action_list     :action_id,actionDoc_id,tester_id),exe_time,






