***DEPRECATED (RETIRED)***

*This repository is obsolete and retired (archived). This is an unmantained repository. In particular, note that it is not being updated with security patches, including those for dependent libraries.*



# nias_testdata

Test data for the [NSIP Integration As a Service](https://github.com/nsip/nias) repository.

We recommend the installation of the `httpie` package as a user-friendly curl replacement that we use in many of the testing scripts:

    brew install httpie

This will allow you to run ingestion test scripts on the [NIAS Test Data](https://github.com/nsip/nias_testdata) repository.

## Example, using [httpie](http://httpie.org)

    http post :9292/test/test1 Content-Type:application/xml < test_data/timetable.xml
    http post :9292/oneroster/validated Content-Type:text/csv < test_data/users.csv
    http post :9292/test/json < 1k_student_personals.json

(Note json is the default content type so doesn't need to be expliclty stated, for xml and csv it does)

## Contents

* Import scripts
  * `import_sif.sh` : suite of `httpie` commands to import SIF/XML objects
  * `import_oneroster.sh` : suite of `httpie` commands to import OneRoster CSV objects

* SIF object suite (following [SIF-AU 3.4](http://specification.sifassociation.org/Implementation/AU/1.4/)): all objects refer to each other
  * `schoolinfos.xml`
  * `staffassignments.xml`
  * `staffpersonals.xml`
  * `studentdailyattendances.xml`
  * `studentpersonals.xml`
  * `studentschoolenrollments.xml`
  * `teachinggroups.xml`
  * `timetablecells.xml`
  * `timetables.xml`
  * `timetablesubjects.xml`
  * `studentcontactrelationships.xml`
  * `studentcontactpersonals.xml`
  * `debtors.xml`
  * `invoices.xml`
  * `paymentreceipts.xml`

* Miscellaneous SIF objects
  * `bulkingest.xml` : message combining Invoice and Debtor objects, used to illustrate the BulkIngest SIF container specific to NIAS
  * `invalid.xml` : StudentPersonal object invalid according to SIF-AU specification. (Element `<WhoopieCushion>` added to object.)
  * `malformed.xml` : Not well-formed object (missing end-tag)


* NAPLAN objects (aligned to the NAPLAN Online registration data specifications, in SIF and CSV):
  * `2000staff.csv` : 2000 staff records
  * `2000staff.xml` : 2000 staff records (same)
  * `500schools150students.csv` : 500 schools * 150 students
  * `500schools150students.xml.Z` : 500 schools * 150 students (same)
  * `NAPLANstudentpersonal.xml` : single student
  * `asl_schools.csv`: contents of Australian Schools List

* OneRoster objects (following [IMS OneRoster v.1.0 CSV](https://www.imsglobal.org/lis/imsonerosterv1p0/imsOneRoster-v1p0.html)): all objects refer to each other
  * usersfromsif.csv (aligned to studentpersonals.xml)
  * enrollments.csv
  * classes.csv

