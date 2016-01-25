# nias_testdata

Test data for the [NSIP Integration As a Service](https://github.com/nsip/nias) repository.

We recommend the installation of the `httpie` package as a user-friendly curl replacement that we use in many of the testing scripts:

    brew install httpie

This will allow you to run ingestion test scripts on the [NIAS Test Data](https://github.com/nsip/nias_testdata) repository.

## Example, using httpie

    http post :9292/test/test1 Content-Type:application/xml < test_data/timetable.xml
    http post :9292/oneroster/validated Content-Type:text/csv < test_data/users.csv
    http post :9292/test/json < 1k_student_personals.json

(Note json is the default content type so doesn't need to be expliclty stated, for xml and csv it does)
