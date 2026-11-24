-- =====================================
-- 1. CATEGORIES
-- =====================================

INSERT INTO library_category (name) VALUES
('Programming'),
('Science'),
('History'),
('Fantasy'),
('Detective'),
('Psychology'),
('Business'),
('Self Development'),
('Technology'),
('Fiction')
ON CONFLICT (name) DO NOTHING;


-- =====================================
-- 2. BOOKS (30 BOOKS)
-- =====================================

INSERT INTO library_book
(title, description, is_read, category_id, created_at)
VALUES

('Python Crash Course',
'A hands-on introduction to Python programming for beginners.',
TRUE, (SELECT id FROM library_category WHERE name = 'Programming'), NOW()),

('Clean Code',
'A practical guide to writing readable and maintainable code.',
FALSE, (SELECT id FROM library_category WHERE name = 'Programming'), NOW()),

('Automate the Boring Stuff with Python',
'Learn how to automate everyday tasks using Python.',
TRUE, (SELECT id FROM library_category WHERE name = 'Programming'), NOW()),

('The Pragmatic Programmer',
'A guide to becoming a better and more effective software developer.',
FALSE, (SELECT id FROM library_category WHERE name = 'Programming'), NOW()),

('Fluent Python',
'An advanced guide to Python language features and programming techniques.',
FALSE, (SELECT id FROM library_category WHERE name = 'Programming'), NOW()),

('A Brief History of Time',
'Stephen Hawking explains the universe, black holes and the nature of time.',
TRUE, (SELECT id FROM library_category WHERE name = 'Science'), NOW()),

('Cosmos',
'An exploration of the universe and humanitys place within it.',
FALSE, (SELECT id FROM library_category WHERE name = 'Science'), NOW()),

('The Selfish Gene',
'An explanation of evolution from the perspective of genes.',
TRUE, (SELECT id FROM library_category WHERE name = 'Science'), NOW()),

('The Origin of Species',
'Charles Darwins groundbreaking work on evolution.',
FALSE, (SELECT id FROM library_category WHERE name = 'Science'), NOW()),

('Astrophysics for People in a Hurry',
'A short introduction to the most important concepts in astrophysics.',
FALSE, (SELECT id FROM library_category WHERE name = 'Science'), NOW()),

('Sapiens',
'A brief history of humankind and the development of human civilization.',
TRUE, (SELECT id FROM library_category WHERE name = 'History'), NOW()),

('The Art of War',
'An ancient Chinese military strategy book by Sun Tzu.',
FALSE, (SELECT id FROM library_category WHERE name = 'History'), NOW()),

('The Guns of August',
'A historical account of the beginning of World War I.',
FALSE, (SELECT id FROM library_category WHERE name = 'History'), NOW()),

('Genghis Khan and the Making of the Modern World',
'The story of the Mongol Empire and its influence on history.',
TRUE, (SELECT id FROM library_category WHERE name = 'History'), NOW()),

('The Silk Roads',
'A history of the world through the networks connecting East and West.',
FALSE, (SELECT id FROM library_category WHERE name = 'History'), NOW()),

('Harry Potter and the Philosophers Stone',
'A young wizard discovers his magical abilities and enters Hogwarts.',
TRUE, (SELECT id FROM library_category WHERE name = 'Fantasy'), NOW()),

('The Hobbit',
'Bilbo Baggins goes on an unexpected adventure with a group of dwarves.',
FALSE, (SELECT id FROM library_category WHERE name = 'Fantasy'), NOW()),

('The Lord of the Rings',
'An epic journey to destroy a powerful magical ring.',
TRUE, (SELECT id FROM library_category WHERE name = 'Fantasy'), NOW()),

('The Name of the Wind',
'A gifted young man tells the story of his extraordinary life.',
FALSE, (SELECT id FROM library_category WHERE name = 'Fantasy'), NOW()),

('A Game of Thrones',
'Noble families compete for control of the Iron Throne.',
FALSE, (SELECT id FROM library_category WHERE name = 'Fantasy'), NOW()),

('Murder on the Orient Express',
'Detective Hercule Poirot investigates a mysterious murder on a train.',
TRUE, (SELECT id FROM library_category WHERE name = 'Detective'), NOW()),

('The Adventures of Sherlock Holmes',
'A collection of detective stories featuring Sherlock Holmes.',
FALSE, (SELECT id FROM library_category WHERE name = 'Detective'), NOW()),

('Gone Girl',
'A psychological thriller about a mysterious disappearance.',
TRUE, (SELECT id FROM library_category WHERE name = 'Detective'), NOW()),

('The Girl with the Dragon Tattoo',
'A journalist and hacker investigate a decades-old disappearance.',
FALSE, (SELECT id FROM library_category WHERE name = 'Detective'), NOW()),

('The Da Vinci Code',
'A symbologist investigates a mysterious murder connected to ancient secrets.',
FALSE, (SELECT id FROM library_category WHERE name = 'Detective'), NOW()),

('Thinking, Fast and Slow',
'Daniel Kahneman explores two systems of human thought and decision-making.',
TRUE, (SELECT id FROM library_category WHERE name = 'Psychology'), NOW()),

('Atomic Habits',
'A practical guide to building good habits and breaking bad ones.',
FALSE, (SELECT id FROM library_category WHERE name = 'Self Development'), NOW()),

('Rich Dad Poor Dad',
'A book about financial education and different approaches to money.',
TRUE, (SELECT id FROM library_category WHERE name = 'Business'), NOW()),

('The Lean Startup',
'A methodology for building successful startups through experimentation.',
FALSE, (SELECT id FROM library_category WHERE name = 'Business'), NOW()),

('Steve Jobs',
'The biography of Apple co-founder Steve Jobs.',
FALSE, (SELECT id FROM library_category WHERE name = 'Technology'), NOW());


