import alerts from '../data/alerts.json' assert { type: "json"};
import announcements from '../data/announcements.json' assert { type: "json"};
import courses from '../data/courses.json' assert { type: "json"};
import { renderAlerts } from './alerts.js';
import { renderAnnouncements } from './announcements.js';
import { renderCourses } from './courses.js';

renderAlerts(alerts);

renderAnnouncements(announcements);

renderCourses(courses);