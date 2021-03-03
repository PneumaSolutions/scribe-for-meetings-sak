## Common terms

-product-name = Scribe for Meetings
-product-link = <https://www.pneumasolutions.com/products/scribe-for-meetings/>

## Common fields

label-senderName = Your name

option-gender-male = male
option-gender-female = female
option-gender-other = other

## Letters

letter-student-disability-office =
    .name = Student to Disability Office
    .description = When you need help getting { -product-name } in the classroom, the disability office is the place to start. Be sure to give them as much advance notice. The disability office will need ample time to notify your instructor and get financial approval well before your classes begin.

    .label-disabilityCoordinatorName = Disability office coordinator's name

    .subject-1 = New accessibility accommodation request: Zoom screen shares now accessible
    .subject-2 = Can I get this accessibility accommodation?
    .subject-3 = Can you help me with this accessibility accommodation?

    .body =
        Hello { $disabilityCoordinatorName },

        My name is { $senderName }. I am a blind student enrolled on campus.

        Since the COVID pandemic, many classes are now being held online through platforms like Zoom. But there has been one problem for students using a screen reader. The instructor's slide shows are completely inaccessible when screen shared in Zoom.

        But, I've located a solution. An accessibility product which displays shared slide shows in WCAG2.1 compliant HTML. The product is called, { -product-name }.

        ## For me as a student, { -product-name } will allow me to:

        - Access content real-time within a shared slide show using my screen reader.
        - Convert class materials to a number of accessible formats including braille and large print.
        - Independently review content at the same time as my classmates.
        - Absorb material according to my learning style needs.
        - Feel I'm included as an equal member of the class.
        - View the presentation material in sync with the rest of the class.
        - Not be limited to only what I hear spoken in the session.
        - Make it easier to maintain, or improve, my grade point average.

        ## For the instructor { -product-name } will:

        - Be a simple 5-minute upload.
        - Remove one more barrier to making content accessible.
        - Make the presentation available by pasting one link in chat.
        - Prevent them from having to read material out loud for me.
        - Allows a smoother accessible flow of the class.

        You can find more information about { -product-name } at { -product-link }

        After you've had a chance to look at { -product-name }, I would like to schedule a time to discuss this in more detail with you. I think { -product-name } is a reasonable accessibility accommodation for a problem with no solution until now.

        Respectfully,  
        { $senderName }

letter-parent-teacher =
    .name = Parent or Guardian to Teacher
    .description = This letter will help you advocate on behalf of your child directly to his or her teacher. A written request is helpful even if you have a close parent-teacher relationship as they may need to pass it on to guidance counselors, school board members, or allies they have in the school system.

    .label-teacherName = Teacher's name
    .label-childName = Child's name
    .label-gender = Child's gender

    .subject-1 = Reasonable accessibility accommodation request for { $childName }
    .subject-2 = Accessibility request for { $childName }
    .subject-3 = Approval needed for { $childName }'s accessibility accommodation
    .subject-4 = Parent-teacher item: Accessibility request for { $childName }
    .subject-5 = Important: Accessibility request for { $childName } enclosed

    .body =
        Hello { $teacherName },

        Since classes have moved online, I know there have been some challenges. But thank you so much for meeting them and making the education for our children the best it can be, under the conditions. To that end, last time we talked about { $childName }'s progress in class, I wasn't aware of the below accessibility tool.

        As you're likely aware by now, any slide presentation you share using Zoom's screen share option has been inaccessible to { $childName }'s screen reader or magnifier. I've researched it on my own and found a solution: an accessibility product which will automatically display your shared slide shows in accessible HTML.

        The product is called, { -product-name }.

        ## { -product-name } will allow { $childName } to:

        - Access content real-time within a shared slide show using { $gender ->
            [male] his
            [female] her
           *[other] their
        } screen reader or magnifier.
        - Convert class materials to a number of accessible formats including braille and large print.
        - Independently review content at the same time as { $gender ->
            [male] his
            [female] her
           *[other] their
        } classmates.
        - Absorb material according to { $gender ->
            [male] his
            [female] her
           *[other] their
        } learning style needs.
        - Feel fully included in class again.
        - Participate equally with { $gender ->
            [male] his
            [female] her
           *[other] their
        } peers.
        - View the presentation material in sync with { $gender ->
            [male] his
            [female] her
           *[other] their
        } peers.
        - Not be limited to only material covered audibly in class.
        - Improve { $gender ->
            [male] his
            [female] her
           *[other] their
        } quality of online education.

        ## For you, { -product-name } will:

        - Be a simple 5-minute upload.
        - Remove one more barrier to making content accessible.
        - Make the presentation available by pasting one link in chat.
        - Prevent you from having to redundantly read material out loud.
        - Allow a smoother accessible flow of the class for everyone.

        You can find more information about { -product-name } at { -product-link}

        After you've had a chance to look at { -product-name }, I'd like to schedule a time we could discuss how the school can obtain a license for it.

        I believe { -product-name } qualifies as a reasonable accessibility accommodation. It's also not cost prohibitive.

        Thank you, and I look forward to talking to you.

        Sincerely,  
        { $senderName }

letter-parent-school-board =
    .name = Parent or Guardian to School Board
    .description = Sometimes it is necessary to approach the school board directly with an accessibility request on  behalf of your child.

    .label-schoolBoardChairName = School board chair's name
    .label-childName = Child's name
    .label-schoolName = School name
    .label-gender = Child's gender

    .subject-1 = Reasonable accessibility accommodation request for my child
    .subject-2 = Accessibility request for my visually impaired child
    .subject-3 = Approval needed for my child's accessibility accommodation
    .subject-4 = School board agenda item: Accessibility request for my child
    .subject-5 = Important: Accessibility request for next board meeting

    .body =
        Hello { $schoolBoardChairName },

        My name is { $senderName }. My child, { $childName }, is enrolled in { $schoolName }. { $gender ->
            [male] He is
            [female] She is
           *[other] They are
        } a blind student. We are requesting a reasonable accommodation for an accessibility need for { $gender ->
            [male] his
            [female] her
           *[other] their
        } education.

        While it is important to continue students' education through online platforms like Zoom, it has exposed a problem for my blind child during class.

        Any slide presentation using Zoom's screen share option has been inaccessible to my child's adaptive software, such as screen readers and magnifiers.

        I've researched it on my own and found a solution. An accessibility product which will display shared slide shows in WCAG2.1 compliant HTML.

        The product is called, { -product-name }.

        ## { -product-name } will allow my child to:

        - Access content real-time within a shared slide show using a screen reader and magnifier.
        - Convert class materials to a number of accessible formats including braille and large print.
        - Independently review content at the same time as { $gender ->
            [male] his
            [female] her
           *[other] their
        } classmates.
        - Absorb material according to { $gender ->
            [male] his
            [female] her
           *[other] their
        } learning style needs.
        - Feel fully included in class.
        - Participate equally with { $gender ->
            [male] his
            [female] her
           *[other] their
        } peers.
        - View the presentation material in sync with the rest of the class.
        - Not be limited to only material covered audibly in class.
        - Improve { $gender ->
            [male] his
            [female] her
           *[other] their
        } quality of education.

        ## For the teacher, { -product-name } will:

        - Be a simple 5-minute upload.
        - Remove one more barrier to making content accessible.
        - Make the presentation available by pasting one link in chat.
        - Prevent them from having to read material out loud.
        - Allow a smoother accessible flow of the class for everyone.

        You can find more information about { -product-name } at { -product-link }

        After you've had a chance to look at { -product-name }, I would like to ask for agenda time to discuss this in more detail with the school board. { -product-name } qualifies as a reasonable accessibility accommodation. It's also not cost prohibitive.

        Thank you in advance for your consideration.

        Respectfully,  
        { $senderName }

letter-teacher-school-board =
    .name = Teacher to School Board
    .description = This will help you with the information a school board will need to consider your request on behalf of your print disabled student.

    .label-schoolBoardChairName = School board chair's name
    .label-schoolName = School name
    .label-gender = Student's gender

    .subject-1 = Reasonable accessibility accommodation request for student
    .subject-2 = Accessibility request for my visually impaired student
    .subject-3 = Approval needed for student's accessibility accommodation
    .subject-4 = School board agenda item: Accessibility request for student
    .subject-5 = Important: Accessibility request for next school board meeting

    .body =
        Hello { $schoolBoardChairName },

        My name is { $senderName }. I teach at { $schoolName }. I have a blind student which is in need of a reasonable accessibility accommodation. The online class sessions through Zoom has exposed a problem for my blind student. Any slide presentation I share using Zoom's screen share option has been inaccessible to { $gender ->
            [male] his
            [female] her
           *[other] their
        } adaptive software, such as a screen reader or magnifier.

        I've found a solution: an accessibility product which will display shared slide shows in WCAG2.1 compliant HTML.

        The product is called, { -product-name }.

        ## { -product-name } will allow my student to:

        - Access content real-time within a shared slide show using a screen reader and magnifier.
        - Convert class materials to a number of accessible formats including braille and large print.
        - Independently review content at the same time as { $gender ->
            [male] his
            [female] her
           *[other] their
        } classmates.
        - Absorb material according to { $gender ->
            [male] his
            [female] her
           *[other] their
        } learning style needs.
        - Feel fully included in class.
        - Participate equally with { $gender ->
            [male] his
            [female] her
           *[other] their
        } peers.
        - View the presentation material in sync with the rest of the class.
        - Not be limited to only material covered audibly in class.
        - Improve { $gender ->
            [male] his
            [female] her
           *[other] their
        } quality of education.

        ## For me, { -product-name } will:

        - Be a simple 5-minute upload.
        - Remove one more barrier to making content accessible.
        - Make the presentation available by pasting one link in chat.
        - Prevent me from having to read redundant material out loud.
        - Allow a smoother accessible flow of the class for all my students.

        You can find more information about { -product-name } at { -product-link }

        After you've had a chance to look at { -product-name }, I would like to ask for agenda time to discuss this in more detail with the school board. { -product-name } qualifies as a reasonable accessibility accommodation. It's also not cost prohibitive.

        Thank you in advance for your consideration.

        Respectfully,  
        { $senderName }

letter-employee-supervisor =
    .name = Employee to Supervisor
    .description = This letter is useful when you want to approach your supervisor with the need to access team meetings or to improve productivity. Be sure to customize the intro according to the level of relationship you have with your boss or supervisor.

    .label-supervisorName = Supervisor's name

    .subject-1 = Accessibility solution. Can we discuss?
    .subject-2 = Really productive accessibility solution here
    .subject-3 = Important: Can we discuss this in our next meeting?
    .subject-4 = Can you back me on this accessibility request?
    .subject-5 = This accessibility tool for Zoom is awesome, can we consider it?

    .body =
        Hello { $supervisorName },

        Adopting Zoom in our workflow has led to several productivity benefits. It's been great for our team meetings, snapshot updates, and project collaboration sessions.

        To refresh your memory, as a blind team member, I use a screen reader to complete my workload. Just recently, I've found a solution to an accessibility challenge I've had within Zoom's screen share feature.

        When presenters share slide content at our meetings within Zoom, it hasn't been accessible to my screen reader or magnification software. The great news is I've found a product which now makes screen shared slide decks completely accessible with WCAG2.1 compliant HTML. Basically, my screen reader will be able to let me read shared slide content.

        The product is called, { -product-name }.

        ## { -product-name } will allow me to:

        - Access project content in real-time within a shared slide show using my screen reader or screen magnification.
        - Convert project materials to several accessible formats, including braille and large print.
        - Independently review shared material in synch with my team.
        - Process and problem solve according to my optimum method of information input.
        - Engage more proactively real-time with my team.
        - Review material as needed, not relying solely on what is spoken in the meetings.
        - Improve productivity.

        ## For the team leader or presenter { -product-name } will:

        - Be a simple 5-minute upload.
        - Make the presentation available to me by pasting one link in chat.
        - Prevent the presenter from repeating material out loud.
        - Allow a smoother accessible flow of the meeting.
        - Remove one more barrier to making content accessible.

        There is more information about { -product-name } at { -product-link }

        { -product-name } is a simple and reasonable accessibility accommodation which is not cost prohibitive. Can you scan and review the information about { -product-name } as soon as convenient? I'd like to schedule a time with you to discuss this in more detail.

        Respectfully,  
        { $senderName }

letter-employee-hr =
    .name = Employee to HR Department
    .description = This letter is for when you feel it's necessary to go straight to the Human Resources department yourself. Be sure to address it specifically to the HR representative in charge of compliance requests.

    .label-hrCompliancePersonName = HR compliance person's name
    .label-companyName = Company name
    .label-departmentName = Department name

    .subject-1 = Accessibility at work request
    .subject-2 = Reasonable accommodation for accessibility enclosed
    .subject-3 = Attn. HR Compliance: Employee accessibility need inside
    .subject-4 = WCAG2.1 compliant HTML Accessibility request for employee
    .subject-5 = Request for accessibility at work: Screen share content

    .body =
        Hello { $hrCompliancePersonName },

        My name is { $senderName }. I'm a { $companyName } employee in { $departmentName }.

        I'm writing concerning an accessibility at work request. There have been many reasonable accommodations made for various disabilities in the workplace. However, until now, there's not been an accessibility answer to make slide content, presented through Zoom's screen share, accessible to screen readers and magnifiers.

        The product I'm requesting, which solves this problem, is called { -product-name }.

        { -product-name } enables shared slide decks to be completely accessible to a screen reader or magnifier by converting content to WCAG2.1 compliant HTML.

        ## { -product-name } will allow me to:

        - Access project content real-time within a shared slide show using my screen reader or screen magnification.
        - Convert project materials to a number of accessible formats including braille and large print.
        - Independently review shared material in synch with my team.
        - Process and problem solve according to my optimum method of information input.
        - Engage more proactively, in real-time, with my team.
        - Review material as needed, not relying solely on what is spoken in the meetings.
        - Improve productivity.

        ## For the team leader or presenter { -product-name } will:

        - Be a simple 5-minute upload.
        - Make the presentation available to me by pasting one link in chat.
        - Prevent the presenter from repeating material out loud.
        - Allow a smoother accessible flow of the meeting.
        - Remove one more barrier to making content accessible.

        There is more information about { -product-name } at { -product-link }

        I'd like to schedule a time with you to discuss this in more detail. { -product-name } is a reasonable accessibility accommodation which is not cost prohibitive.

        Respectfully,  
        { $senderName }

letter-supervisor-hr =
    .name = Supervisor to HR Department
    .description = This letter is for when an employee or team member of yours needs { -product-name } for improved productivity or to do their job.

    .label-hrCompliancePersonName = HR compliance person's name
    .label-departmentName = Department name

    .subject-1 = Employee accessibility at work request
    .subject-2 = Reasonable accessibility accommodation for employee enclosed
    .subject-3 = Attn. HR Compliance: Employee accessibility need inside
    .subject-4 = WCAG2.1 compliant HTML Accessibility request for employee
    .subject-5 = Request for accessibility at work: Screen share content

    .body =
        Hello { $hrCompliancePersonName },

        My name is { $senderName }. I'm a supervisor in { $departmentName }.

        I'm writing concerning an accessibility at work request on behalf of a visually impaired team member.

        Until now, slide content presented through Zoom's screen share has been inaccessible to screen readers and magnifiers. The product solving this issue is called, { -product-name }.

        { -product-name } enables shared slide decks to be completely accessible to a screen reader or magnifier by converting content to WCAG2.1 compliant HTML.

        ## { -product-name } will allow my team member to:

        - Access project content real-time within a shared slide show using a screen reader or screen magnification.
        - Convert project materials to a number of accessible formats including braille and large print.
        - Independently review shared material in synch with their team.
        - Process and problem solve according to their optimum method of information input.
        - Engage more proactively, in real-time, with the team.
        - Review material as needed, not relying solely on what is spoken in the meetings.
        - Improve their productivity.

        ## For the team leader or presenter { -product-name } will:

        - Be a simple 5-minute upload.
        - Make the presentation available to them by pasting one link in chat.
        - Prevent the presenter from repeating material out loud.
        - Allow a smoother accessible flow of the meeting.
        - Remove one more barrier to making content accessible.

        There is more information about { -product-name } at { -product-link }

        The employee who requested the accommodation is a valued member of our team. I fully support the acquisition of the aforementioned software.

        { -product-name } seems a reasonable accessibility accommodation which is not cost prohibitive.

        Respectfully,  
        { $senderName }

letter-member-church-staff =
    .name = Congregation Member to Church Staff
    .description = This letter is designed to appeal to pastoral staff members. We recommend your copying applicable church staff as well as your church's head pastor. This will help ensure your request is herd at the next church staff meeting.

    .label-pastorName = Pastor or staff member's name

    .subject-1 = Pastor, can I talk to you about my accessibility need?
    .subject-2 = An answer to my accessibility prayer! Can you help?
    .subject-3 = Pastor, I can't read your screen shares. I have an answer...
    .subject-4 = Praise the Lord! An answer to my accessibility prayer.

    .body =
        Hello { $pastorName },

        My name is { $senderName }. I am a blind member of your congregation. Thanks so much for moving church services online!

        But, I've had one challenge. As a blind person, I use what is called a screen reader to read my computer screen. The challenge is, my screen reader hasn't been able to read the words to the songs, church announcements, or scriptural reference slides you and other teachers share in Zoom.

        ## As a congregational member, { -product-name } will allow me to:

        - Independently read reference material during the service or study groups in synch with the congregation.
        - Convert any supplemental content to a number of accessible formats including braille and large print.
        - Prayerfully consider shared material according to my learning needs.
        - Feel more included as an equal member of the congregation or study group.
        - Not be limited to only what I can hear spoken in the service or group.

        ## For you and pastoral staff, { -product-name } will:

        - Only be a simple 5-minute upload.
        - Remove one more barrier to making content accessible to blind congregational members.
        - Make the reference material available by pasting one simple link in chat.
        - Prevent you or staff from having to read supplemental material out loud.

        This is something I've been praying would come available, and now it has.

        You can find more information about { -product-name } at { -product-link }

        After you've had a chance to look at { -product-name }, can we schedule a time to discuss this in more detail?

        I believe { -product-name } is a reasonable accessibility accommodation for a problem with no solution until now.

        God bless,  
        { $senderName }

letter-member-organization =
    .name = Member to Organization
    .description = Many private or public organizations are willing to make their services as accessible as possible for their members. This letter will help them realize there is a simple and affordable solution.

    .label-membershipCoordinatorName = Membership coordinator's name
    .label-organizationName = Organization name

    .subject-1 = Can you help me as a member with an accessibility issue?
    .subject-2 = Member accessibility request
    .subject-3 = Problem with the screen shares in member sessions
    .subject-4 = Accessibility and screen share... can you help?
    .subject-5 = Zoom accessibility challenge for members

    .body =
        Hello { $membershipCoordinatorName },

        My name is { $senderName }, and I'm a member of { $organizationName }. I know accessibility is important to you, which is why I'm writing.

        As a blind member, I use screen reader or magnification software to participate in { $organizationName } activities online, but there is one area with an accessibility issue.

        The content within the presenter's screen share hasn't been accessible to my screen reader or magnifier. But, I found a simple solution! A product which now makes shared slide decks completely accessible to blind participants through WCAG2.1 compliant HTML. Basically, my screen reader will now allow me to read shared content.

        The product is called, { -product-name }.

        ## { -product-name } will allow me to:

        - Access membership content real-time within a shared slide show using my screen reader or screen magnifier.
        - Convert screen shared materials to a number of accessible formats including braille and large print.
        - Independently review shared material in synch with fellow members.
        - Participate equally in real-time with other members.
        - Review material as needed, not relying solely on what is spoken in the meetings.
        - Get the most from my membership.

        ## For you, { -product-name } will:

        - Be a simple 5-minute upload.
        - Make the presentation available to me by simply pasting one link in chat.
        - Prevent the presenter from repeating material out loud.
        - Remove one more barrier to making content accessible to members.

        There is more information about { -product-name } at { -product-link }

        I'd be happy to participate in a sample session with you, or have the opportunity to discuss in detail how this will positively impact my membership and others using screen reader or magnification software.

        I think { -product-name } is a simple and reasonable accessibility accommodation.

        Sincerely,  
        { $senderName }

letter-event-attendee =
    .name = Event Attendee
    .description = This letter is for use when you are attending a one-time or infrequent event. Customize the names as needed. If you know someone personally involved in the event, be sure to mention or copy them in the e-mail.

    .label-eventName = Event name
    .label-eventCoordinatorName = Event coordinator's name

    .subject-1 = Question about accessing event material
    .subject-2 = Event accessibility request
    .subject-3 = Accessibility question before { $eventName }
    .subject-4 = Event participant request for assistance
    .subject-5 = Easy solution to accessibility accommodation need for { $eventName }

    .body =
        Hello { $eventCoordinatorName },

        My name is { $senderName }. I'm really excited about attending the upcoming { $eventName }. But, I'm writing with an accessibility concern.

        As a blind individual, I use screen reading or magnification software on my computer. Until now, content displayed through Zoom's screen shares has been inaccessible to screen readers and magnifying software.

        There's now an extremely affordable and simple product organizations can use to make shared slide decks completely accessible with WCAG2.1 compliant HTML. Basically, my screen reader will be able to let me read shared slide content.

        The product is called, { -product-name }.

        ## { -product-name } will allow me to:

        - Access event content real-time within a shared slide show using my screen reader or screen magnification.
        - Convert supplemental event materials to a number of accessible formats including braille and large print.
        - Independently review shared material in synch with others.
        - Participate fully in real-time during the live event.
        - Review material as needed, not relying solely on what is spoken in the sessions.

        ## For you, { -product-name } will:

        - Be a simple 5-minute upload.
        - Make the presentation available to me by pasting one link in chat.
        - Prevent the presenter from repeating material out loud.
        - Let you be less conscious about accessibility concerns.

        There is more information about { -product-name } at { -product-link }

        Would you review the information about { -product-name } before the event? I'd be happy to make time in my schedule to discuss this in more detail, and the positive effect it will have for me during the event.

        I think you'll agree, { -product-name } is a pretty reasonable accessibility accommodation. Plus, it is not cost prohibitive.

        Respectfully,  
        { $senderName }

## User interface

customize-letter-heading = Customize your letter
customize-letter-instructions = Please fill out the fields below to customize your letter. To protect your privacy, none of the information you enter here will be sent back to Pneuma Solutions.

select-unset-option = Please choose

sample-letter-heading = Sample letter
sample-letter-instructions = Now you can choose a sample subject line, copy it to the clipboard, paste it into your email app, then copy the body of the latter of the clipboard and paste that into your email app. Feel free to edit the letter to reflect your personal style.

latel-subject = Subject
copy-subject-button = Copy subject to clipboard
copy-body-button = Copy body of letter to clipboard

try-another-letter = Not what you were looking for? Try another letter.

copied = Copied to clipboard
