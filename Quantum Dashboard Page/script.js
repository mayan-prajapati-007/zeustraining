import alerts from './data/alerts.json' assert { type: "json"};

const alertsContainer = document.querySelector('.alerts-container');

const alertBadge = document.querySelector('#alerts');

alertBadge.innerText = alerts.filter(alert => !alert.isChecked).length;

alerts.forEach(alert => {
    const alertElement = document.createElement('div');
    alertElement.classList.add('alert');
    if (!alert.isChecked) alertElement.classList.add('alert-unchecked');
    alertElement.innerHTML = `
    <div class="alert-title">
        <p>${alert.title}</p>
        <img src="./icons/${alert.isChecked ? 'correct' : 'dnd'}.png" alt="">
    </div>
    ${alert.course ? `<p class="alert-course"><span>Course: </span> ${alert.course}</p>` : ''}
    <p class="alert-date-time">${alert.arrivalTime}</p>
    `;
    alertsContainer.appendChild(alertElement);
});

import announcements from './data/announcements.json' assert { type: "json"};

const announcementsContainer = document.querySelector('.announcements-container');

const announcementBadge = document.querySelector('#announcements');

announcementBadge.innerText = announcements.filter(announcement => !announcement.isChecked).length;

announcements.forEach(announcement => {
    const announcementElement = document.createElement('div');
    announcementElement.classList.add('announcement');
    if (!announcement.isChecked) announcementElement.classList.add('announcement-unchecked');
    announcementElement.innerHTML = `
    <div class="announcement-heading">
        <p><span>PA: </span>${announcement.personAnnounced}</p>
        <img src="./icons/${announcement.isChecked ? 'correct' : 'dnd'}.png" alt="">
    </div>
    <p class="announcement-title">${announcement.title}</p>
    ${announcement.course ? `<p class="announcement-course"><span>Course: </span> ${announcement.course}</p>` : ''}
    <div class="announcement-desc-container">
        ${announcement.filesAttached ? `<p class="announcement-files"><img src="icons/attach-file.png" alt=""> ${announcement.filesAttached} files are attached</p>` : ''}
        <p class="announcement-date-time">${announcement.arrivalTime}</p>
    </div>
    `;
    announcementsContainer.appendChild(announcementElement);
});




import courses from './data/courses.json' assert { type: "json"};

const coursesContainer = document.querySelector('.courses-container');

courses.forEach(course => {
    const courseElement = document.createElement('div');
    courseElement.classList.add('course');
    courseElement.innerHTML = `
    ${course.isExpired ? '<span class="course-badge">Expired</span>' : ''}
    <div class="course-details">
        <img src=${course.courseImg} class="course-details-img">
        <div class="course-details-decription">
            <div class="cdd-title">
                <h3>${course.title}</h3>
                <img src="icons/favourite.svg" class="${course.isFavourite ? '' : 'grayscale-img'}" alt="">
            </div>
            <div class="cdd-metadata">
                <p>${course.subject}</p>
                <div class="divider"></div>
                <p>Grade ${course.grades[0]} <span class="green">+${course.grades.length}</span></p>
            </div>
            ${course.details
                ? `<div class="cdd-metadata">
                    <p><span>${course.details.units}</span> Units</p>
                    <p><span>${course.details.lessons}</span> Lessons</p>
                    <p><span>${course.details.topics}</span> Topics</p>
                </div>`
                : ''
            }
            <div class="cdd-dropdown">
                <select name="classes" S>
                    <option value="" Selected>No Classes</option>
                    ${course.classes.map(classItem => `<option value="${classItem}">${classItem}</option>`).join('')}
                    <option value="All Classes">All Classes</option>
                </select>
            </div>
            <div class="cdd-metadata">
                ${course.students ? `<p>${course.students} Students</p>`: ''}
                ${course.duration ? `<div class="divider"></div><p>${course.duration.endDate} - ${course.duration.endDate}</p>` : ''}
            </div>
        </div>
    </div>
    <div class="course-navigation">
        <img class="nav-link" src="icons/preview.svg" alt="">
        <img class="nav-link" src="icons/manage course.svg" alt="">
        <img class="nav-link" src="icons/grade submissions.svg" alt="">
        <img class="nav-link" src="icons/reports.svg" alt="">
    </div>
    `;

    coursesContainer.appendChild(courseElement);
});