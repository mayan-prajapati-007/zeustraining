export const renderAlerts = alerts => {
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
}