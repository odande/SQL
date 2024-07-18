-- 2024-03-14 09:55:13 [8 ms] - MySQL
SELECT lastname, enrollment_date
    FROM players
    JOIN wizard ON players.wizard_id=wizard.id
    JOIN team ON players.team_id=team.id
    WHERE team.name="Gryffondor"
    HAVING players.enrollment_date = DAYOFWEEK(2)
    ORDER BY enrollment_date ASC LIMIT 100;