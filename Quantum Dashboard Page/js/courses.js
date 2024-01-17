export const renderCourses = courses => {
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
                        ${course.students ? `<p>${course.students} Students</p>` : ''}
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
}