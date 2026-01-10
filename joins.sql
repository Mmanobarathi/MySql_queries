-- Topic: JOINs, GROUP BY, COUNT
-- Example: List hacker name, ID, and number of challenges created

SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS challenge_count
FROM Hackers h
JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY challenge_count DESC, h.hacker_id ASC;
