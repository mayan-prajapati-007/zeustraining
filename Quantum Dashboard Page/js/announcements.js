export const renderAnnouncements = announcements => {
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
}