#AKADEMIA

Akademia, the name of Athena's sanctuary where Plato founded his school for philosophy, is now a webapp for students and teachers alike to administrate, facilitate and organize academic necessities and programs.

The app utilizes Devise authentication and is customized for the app so that creating a signup automatically discerns which type of user has registered through polymorphic association. This is essential as teachers have more access to the website than students, for example, to create, edit or delete database records or simply view more than students.

Upon logging in users are redirected to their dashboard where they can view details specific to their account. For instance, students can see the courses for which they are registered, their course grades, classmates, as well as the course instructor their their classes. Additionally, students can view all classes being taught should they wish to contact a teacher to register for a specific course. Alternatively, teachers can view from their dashboard the classes they are teaching, class rosters, assignments for their classes. Either user can navigate between different pages depending upon their need and authorization.

Key URLs:
* Teacher dashboard: dashboard/teachers
* Student dashboard: dashboard/students

Note: Unit tests are present in the test folder.
