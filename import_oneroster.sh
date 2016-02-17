


http post :9292/test/test1 Content-Type:application/xml < studentpersonals.xml
http post :9292/oneroster/validated Content-Type:text/csv < usersfromsif.csv
http post :9292/oneroster/validated Content-Type:text/csv < classes.csv
http post :9292/oneroster/validated Content-Type:text/csv < enrollments.csv

http get :9292/sms/merge_ids
