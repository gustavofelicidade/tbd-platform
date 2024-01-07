docker volume rm back_end_risk_forum # delete volume if necessary

# How to dump and restore database
```
pg_dump -U postgres risk_forum > risk_forum_dump.sql
pg_restore -U postgres -d risk_forum -f risk_forum_dump.sql
```