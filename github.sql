SELECT date(uaf.account_created_at_est) as account_created_date, count(*) as count_all_signups,
count(uaf.registry_accoount_id) as count_registry
FROM internal. user_account_facts uaf
where uaf.account_created_at_est >= current_timestamp() - interval '3 days'
group by 1