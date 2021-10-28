<?php exit; ?>
1628889004
SELECT m.*, u.user_colour, g.group_colour, g.group_type FROM (phpbb_discussions_moderator_cache m) LEFT JOIN phpbb_discussions_users u ON (m.user_id = u.user_id) LEFT JOIN phpbb_discussions_groups g ON (m.group_id = g.group_id) WHERE m.display_on_index = 1
6
a:0:{}