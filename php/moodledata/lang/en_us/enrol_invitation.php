<?php
// This file is part of Moodle - https://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <https://www.gnu.org/licenses/>.

/**
 * Strings for component 'enrol_invitation', language 'en_us', version '3.11'.
 *
 * @package     enrol_invitation
 * @category    string
 * @copyright   1999 Martin Dougiamas and contributors
 * @license     https://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */

defined('MOODLE_INTERNAL') || die();

$string['defaultrole_desc'] = 'Select role which should be assigned to users during invitation enrollments';
$string['editenrolment'] = 'Edit enrollment';
$string['emailmessageuserenrolled'] = '{$a->userfullname} has enrolled in {$a->coursefullname}.

Click the following link to check the new enrollments: {$a->courseenrolledusersurl}

{$a->sitename}
-------------
{$a->siteurl}';
$string['enrolenddaterror'] = 'Enrollment end date cannot be earlier than start date';
$string['enrolperiod'] = 'Enrollment duration';
$string['enrolperiod_desc'] = 'Default enrollment validity duration (in seconds). If set to zero, the enrollment validity duration will be unlimited by default.';
$string['enrolperiod_help'] = 'Length of time that the enrollment is valid, starting with the moment the user is enrolled. If disabled, the enrollment duration will be unlimited.';
$string['expiredtoken'] = 'Invalid token - enrollment process has stopped.';
$string['noinvitationinstanceset'] = 'No invitation enrollment instance has been found. Please add an invitation enroll instance to your course first.';
$string['status'] = 'Allow invitation enrollments';
$string['status_desc'] = 'Allow users to invite people to enroll into a course by default.';
$string['unenrol'] = 'Unenroll user';
$string['unenrolselfconfirm'] = 'Do you really want to unenroll yourself from course "{$a}"?';
$string['unenroluser'] = 'Do you really want to unenroll "{$a->user}" from course "{$a->course}"?';
