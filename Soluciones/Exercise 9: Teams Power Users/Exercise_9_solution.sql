SELECT sender_id,COUNT(sender_id) as message_count 
FROM messages
WHERE DATE_PART('month',sent_date) =8
AND DATE_PART ('year',sent_date)=2022
GROUP by sender_id
ORDER BY message_count DESC
LIMIT 2;