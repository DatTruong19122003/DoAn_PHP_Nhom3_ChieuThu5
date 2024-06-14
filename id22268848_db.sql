-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 13, 2024 lúc 06:21 PM
-- Phiên bản máy phục vụ: 10.5.20-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id22268848_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exercises`
--

CREATE TABLE `exercises` (
  `id` varchar(50) NOT NULL,
  `topic_id` varchar(50) NOT NULL,
  `level_id` varchar(50) NOT NULL,
  `time_limit_minutes` int(11) DEFAULT NULL,
  `has_time_limit` int(11) DEFAULT NULL,
  `user_id` varchar(50) NOT NULL,
  `isDel` bit(1) DEFAULT b'0',
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `exercises`
--

INSERT INTO `exercises` (`id`, `topic_id`, `level_id`, `time_limit_minutes`, `has_time_limit`, `user_id`, `isDel`, `title`) VALUES
('exercises1632420169', '10', '1', 5, 100, 'users1910180598', b'0', '123'),
('exercises2403078151', '1', '1', 1, 1, 'users4014238267', b'0', 'Exercise 1'),
('exercises4057089425', '1', '2', 5, 100, 'users1910180598', b'0', 'Quick Test'),
('exercises4060185879', '1', '1', 1, 1, 'users1910180598', b'0', 'Ktra lần 1 - 15p'),
('exercises6076854188', '1', '2', 5, 100, 'users1910180598', b'0', 'Quick Test'),
('exercises9085609173', '1', '1', 1, 1, 'users4014238267', b'0', 'Ex123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level`
--

CREATE TABLE `level` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `level`
--

INSERT INTO `level` (`id`, `name`) VALUES
('1', 'Easy'),
('10', 'Master'),
('2', 'Medium'),
('3', 'Hard'),
('4', 'Very Easy'),
('5', 'Very Hard'),
('6', 'Intermediate'),
('7', 'Advanced'),
('8', 'Beginner'),
('9', 'Expert');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` varchar(50) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `user_id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `image`, `user_id`, `created_at`) VALUES
('news0972801860', 'Cambridge English B2 First Accepted for New Zealand\'s Accredited Employer Work Visa', '<b>From 7 April 2024, Immigration New Zealand has introduced new English language requirements for the Accredited Employer Work Visa (AEWV). The move means that Cambridge English B2 First and B2 First for Schools qualifications can be used as proof of English language ability for anyone applying for this visa programme.</b>\r\n<br><br>\r\nThe AEWV is a temporary visa used by people who want to work in New Zealand. As part of some recent changes to the programme, new English language requirements have been put in place for anyone applying for selected roles (ANZSCO level 4 or 5). Applicants can now demonstrate their English language proficiency with Cambridge English B2 First and B2 First for Schools results (minimum score of 142 on the Cambridge English Scale).\r\n<br><br>\r\n‘We’re delighted to get this level of recognition from the New Zealand Government,’ commented Carmen Le, Regional Recognition Manager at Cambridge University Press & Assessment. She continued: ‘The Cambridge English Qualifications are designed to test the real-life communications skills that people need for success. By taking a Cambridge English exam, candidates gain the skills and confidence they need to really thrive in the workplace.’\r\n<br><br>\r\nImmigration New Zealand joins a growing list of organisations around the world which rely on Cambridge English as proof of English language ability. This includes universities, employers and governments. Read the full list of organisations that recognise Cambridge English.\r\n<br><br>\r\nWe recommend checking with organisations directly for their latest requirements before applying.', '', 'users1517929873', '2024-06-05 20:57:40'),
('news2188849933', 'What is the impact of learning and teaching English with Cambridge?', 'The Cambridge English exams and learning materials help millions of people all over the world teach and learn English. But what difference does this make to their lives and more widely on society? The English Impact team at Cambridge University Press & Assessment works with students, teachers, schools, parents, universities and ministries of education to measure the difference Cambridge has on people learning and teaching English. Dr Brigita Seguis explains how they do this and why it matters.\n<br><br>\n<h2><b>Importance of Measuring Impact</b></h2>\n<br><br>\n“Any organisation that embraces corporate social responsibility has to monitor and report on its impact. We’re an educational organisation and part of the University of Cambridge, which makes this commitment even more important. Our University’s mission is to contribute to society through the pursuit of education, learning and research at the highest international levels of excellence. With this purpose in mind, we have to demonstrate how we actually do this.  And that’s what we do through our impact evaluation work.\n<br><br>\nWhen we talk about impact, we think about all the outcomes; positive, negative, intended, and sometimes unintended that our Cambridge English products and services have on a range of different stakeholders. These stakeholders can be teachers, learners, parents, educational institutions, schools, and society as a whole. For example, we might set out to find out the impact of newly introduced Cambridge textbooks, courses or qualifications on a group of learners and teachers, or more widely on a school system. We might also monitor and measure impact over a longer period of time, focusing on how the introduction of learning materials or qualifications helped increase English language proficiency levels at the country level.\n<br><br>\n<h2><b>How We Approach Impact Evaluation</b></h2>\n<br><br>\n\nOur approach to impact evaluation focuses on looking back, looking forward and looking beyond. Firstly, measuring impact is about looking back and seeing what has worked, and what if anything didn’t work as well as intended, and understanding why it didn’t work. Secondly, it’s about looking ahead, so if a particular English language learning or teaching initiative has worked well, we ask: how can we do it even better? How can we replicate this success in other contexts? And lastly, if something didn’t work well, how can we address the underlying issues and support improvement?\n<br><br>\nA lot of our work focusses on carrying out impact evaluation studies. When gathering data for an impact study, we talk directly to learners, teachers and parents, we visit schools and observe classes, and we analyse learning and assessment data. I recently led a study looking at the impact of Evolve Digital,one of our online courses which helps adults speak English with confidence. Our research found that the course kept participants motivated and engaged, allowed them to make significant learning gains and helped increase their speaking confidence.\n<br><br>\nWhen we write an impact evaluation report, we start by giving an overview of the context, because this is crucial to understanding the changes and actions we are recommending. For our Evolve Digital study, the context was particularly important because the course was delivered as part of a wider teacher training initiative, initiated by the Ministry of Education in Japan. Once we had the findings from our report, we were able to provide recommendations to the Ministry on how they can better integrate the English language course and the teacher training initiative for next year. We also share the findings of the study with our product development team in Cambridge to help them improve the course in the future.\n<br><br>\n<h2><b>Measuring and Promoting Social Impact</b></h2>\n<br><br>\nOur work also includes measuring the wider social impact we can make as an organisation. We recently worked in partnership with the NHS on a study that looked at the barriers and challenges that refugees face when learning English as part of their attempts to return to practice in their new host country. The most common barriers included access to technology, childcare, erratic work schedules, as well as learning and exam anxiety. Interestingly, a lot of these barriers apply to other groups of adult learners too, which made our findings even more meaningful and significant.\n<br><br>\nOne of the more practical recommendations that we were able to share with refugee charities and other stakeholders was the importance of offering adult learners a choice when it comes to learning English. While some adults are not used to the online learning environments and largely prefer the traditional classroom setting, others clearly prefer to take classes online due to the flexibility they offer. We also emphasised the importance of technology in facilitating refugees’ access not only to the online classes, but also additional learning materials that can help them prepare for the required English exams or further improve their English.\n<br><br>\nUltimately our work is about making a positive change in people’s lives by focusing on something very practical. A few of the refugees who took part in our study told us: ‘thank you for listening to us and hearing our challenges’ because they often felt lost in the system. I guess it’s what you call the impact of an impact study, and it is a very rewarding feeling.  \n<br><br>\nI’m really proud of the fact that we get direct contact with our stakeholders including teachers, learners and parents and school leaders. It’s being able to listen to them and to respond to their needs that really makes our jobs worthwhile\".  ', 'DrBrigitaSeguis.jpg', 'users4014238267', '2023-12-20 06:35:44'),
('news4718940426', 'Revision to 2024 High School Graduation Exam Guidelines: Cambridge English Certificates Equated to 10 Points in English Subject', 'In a significant step towards diversifying recognized foreign language certifications, the Ministry of Education and Training has issued Circular No. 02/2024/TT-BGDĐT dated March 6, 2024, expanding the list of English language certificates accepted in the high school graduation exam from 2024 onwards. \r\n<br><br>\r\nOf note, certificates from Cambridge English such as B1 Preliminary, B1 Business Preliminary, and B1 Linguaskill are now considered equivalent to 10 points for the English subject, enabling candidates to exempt this subject in the graduation exam. This opens up a new option for thousands of candidates who wish to demonstrate their English proficiency without undergoing traditional testing. \r\n<br><br>\r\nThis diversification not only provides candidates with more choices to showcase their English proficiency but also reflects the widespread recognition by the Ministry of Education and Training towards international standards in assessing language proficiency. It also encourages candidates to study and enhance their English proficiency, a crucial skill in today\'s globalized world. \r\n<br><br>\r\nIt is evident that the value of Cambridge English certificates is increasingly being elevated, not only within the framework of the Vietnamese education system but also globally recognized and highly regarded. These certificates serve not only as objective tools to assess learners\' English proficiency but also as credible evidence of the ability to use English flexibly and effectively in academic and international work environments.', '20240308RecognitionfromMOETforCambridge.jpg', 'users1517929873', '2024-06-06 05:09:22'),
('news6888003883', 'AI and the English classroom: the critical role of teachers', 'AI is transforming English language learning and assessment, but it’s essential that teachers understand its limitations to get the very best out of it, according to an expert from Cambridge University Press & Assessment.\n<br><br>\nSpeaking on the recent Teachers Talk Tech podcast Dr Jing Xu highlighted pioneering work coming out of Cambridge in AI for English language education and explained the crucial role English teachers will play in the future.\n<br><br>\n\n‘AI has been penetrating the English language classroom for the last ten years and offers fantastic ways of enhancing and personalising learning,’ commented Dr Xu. He continued: ‘AI has reached the level where it can accurately learn patterns in human language, which means it can be used to mark essays and for creating classroom content at the right levels for different students.  It’s doing a pretty good job at this and brings a lot of value to the classroom. However, we have to be realistic that there are still limitations with AI, and that’s why teachers and examiners will still play a critical role in the future.’\n<br><br>\n<h2><b>Can we trust AI?</b></h2><br>\nThe episode, which also featured education expert Bob Godwin Jones, asked the question: can we trust AI? The speakers traced the surprisingly long history of AI, which dates back to work that was carried out in the 1940s. They also discussed the current research that’s out there, its use in English language learning and assessment and the rise of machine learning and large language models such as Chat GPT.\n<br><br>\n<h2><b>Cambridge’s pioneering AI</b></h2><br>\nOn the work that Cambridge is carrying out in this area to help teachers and learners, Dr Xu said: \n<br><br>\n‘We already use AI to generate instant feedback for English language learning. For example, our Write and Improve tool does a fantastic job of giving students instant feedback on their writing performance. This can really help students to carry out self-regulated learning and preparing for tests such as IELTS and B2 First.’\n<br><br>\nThe tool was trained on the Cambridge Learner Corpus, a large collection of essays written by English language learners and annotated by human experts, using a machine learning technique called discriminative preference ranking. Simply put, the tool learns from the human annotations in the training data including marks and error identifications to predict learner proficiency and flag errors in writing.  \n<br><br>\n<h2><b>Keep the human in the loop</b> </h2><br>\nHowever, Xu, who is ‘cautiously optimistic’ about AI in English language education, said it is essential that there is always a human in the loop to some extent. Xu commented:\n<br><br>\n‘Teachers need to be patient and use AI very cautiously. At Cambridge we are promoting an AI model, where the human judgement can step in to ensure accuracy of marking. Of course, AI brings so much value to the classroom but obviously if students receive the wrong feedback, this can be very demotivating. From this point of view teachers play a critical role in gatekeeping to ensure all learners get the very best out of AI.’\n<br><br>\nListen to the whole episode, and read about the whole series of Teacher’s Talk Tech podcast.', 'jing.jpg', 'users1517929873', '2023-09-28 05:32:16'),
('news7917230630', 'Recognition boost for Cambridge English exams', '25 new organisations started recognising Cambridge English qualifications in October. They join a growing list of more than 25,000 organisations around the world who rely on Cambridge English as proof of English language ability. This includes universities, employers and governments.\r\n<br><br>\r\nNew organisations to join the list include well-known names from the education and tech sectors including:\r\n<br><br>\r\n+ University Technology Malaysia - Kuala Lumpur recognising CEQs, IELTS and Linguaskill for admissions purposes<br>\r\n+ Van Lang University, Vietnam recognising CEQs and Linguaskill for graduation / exit purposes<br>\r\n+ Daffodil Software Pvt. Ltd. in India recognising Linguaskill for recruitment<br>\r\n+ The Australian Institute of Medical and Clinical Scientists (AIMS) recognising C1 Advanced for immigration purposes<br>\r\n+ Online Learning Institute - Instituto Aprende en Línea, Costa Rica recognising CEQs and Linguaskill for recruitment and training purposes <br><br>\r\n‘Recognition of the Cambridge English exams continues to go from strength to strength,’ commented Nicola Johnson, Head of Global Recognition. She continues: ‘The exams are now recognised all over the world by universities, employers and governments who continue to put their trust in Cambridge English. The Cambridge English exams test real-life communications skills, so they help students all over the world show employers, universities and other organisations that they have got what it takes.’\r\n<br><br>\r\nRead the full list of organisations that recognise Cambridge English here:\r\n<br><br>\r\n<a href=\"https://www.cambridgeenglish.org/why-choose-us/global-recognition/\">https://www.cambridgeenglish.org/why-choose-us/global-recognition/</a>', '', 'users4014238267', '2024-06-06 06:41:31'),
('news8786930088', 'Cambridge collaborates with the Department of Education of Binh Thuan Province to successfully organize the seminar \"Developing and Assessing Listening and Speaking Skills in English Class', 'On March 12, 2024, at Le Quy Don Secondary & High School in Phan Thiet City, Binh Thuan Province, the seminar \"Developing and Assessing Listening and Speaking Skills in English Class\" was successfully organized through the collaboration between Cambridge University Press & Assessment and the Department of Education of Binh Thuan Province, attracting participation from English specialists, teachers, and representatives of language centers across the province. \r\n<br><br>\r\nThe seminar provided in-depth insights into enhancing listening and speaking skills through interactive activities and easily understandable assessment methods. The objective of this workshop was to provide practical tools and techniques to create an engaging classroom environment and provide optimal support. \r\n<br><br>\r\nMs. Le Thi Le Huyen, representing Cambridge University Press & Assessment in Vietnam, emphasized Cambridge\'s role as part of the University of Cambridge - one of the world\'s leading educational institutions, and its commitment to enhancing the quality of education and developing professional competence for English teachers in Vietnam. \r\n<br><br>\r\nA special highlight of the event was the presence of Mr. Allen Davenport, Manager, Professional Learning & Development at Cambridge University Press & Assessment, who shared advanced teaching and assessment methods for listening and speaking skills. With nearly 20 years of experience in this field, Mr. Davenport provided inspiration and practical knowledge to participating teachers. \r\n<br><br>\r\nThe seminar concluded with a strong commitment from Cambridge University Press & Assessment to continue supporting and accompanying teachers in their career development journey, aiming towards the common goal of improving the quality of education and providing comprehensive development opportunities for Vietnamese students. The event not only marked an important milestone in the development of English education in Binh Thuan Province but also served as inspiration for innovation and future development in English education in Vietnam.', '', 'users1517929873', '2024-01-29 05:05:50'),
('news9769283368', 'Vietnam: Ministry of Education and Training recognises Cambridge English exams', 'Cambridge English exams including B1 Preliminary, B1 Linguaskill, B1 Business Preliminary and IELTS (band 4), are now recognised by the Ministry of Education and Training in Vietnam (MOET). The move means that High school students holding one of the recognised qualifications are now entitled to an exemption from the foreign language test, which they are expected to take in the 12th Grade High School Graduation exam.\r\n<br><br>\r\n‘It’s fantastic to get this level of recognition from the Ministry of Education and Training,’ commented Min Qu, Commercial Director, Northeast, Southeast Asia & Pacific at Cambridge University Press & Assessment. She continued: ‘The Cambridge English exams are designed to cover the real-life communications skills that students need for success. This means that high school students in Vietnam holding a Cambridge English B1 certificate will have the language skills they need to help them on their next step after graduation.’\r\n<br><br>\r\nThe MOET joins a growing list of Ministries and other organisations around the world who rely on Cambridge English as proof of English language ability. This includes universities, employers and governments. Read the full list of organisations that recognise Cambridge English.', '', 'users1517929873', '2024-03-26 04:58:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` varchar(50) NOT NULL,
  `question` text NOT NULL,
  `answers` text DEFAULT NULL,
  `exercise_id` varchar(50) NOT NULL,
  `isDel` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `question`, `answers`, `exercise_id`, `isDel`) VALUES
('questions0068037881', 'Tome, it broke my heart as I could not prepare the Christmas for my three boys. I have been their only parent since my husband _____ away two years ago', '[{\"answer\":\"passses\",\"isCorrect\":0},{\"answer\":\"passsed\",\"isCorrect\":1},{\"answer\":\"has passed\",\"isCorrect\":0},{\"answer\":\"was passing \",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions1186281235', 'There were portraits of his ____________ on the walls of the room', '[{\"answer\":\" number\",\"isCorrect\":0},{\"answer\":\"shape\",\"isCorrect\":0},{\"answer\":\"figure\",\"isCorrect\":1},{\"answer\":\"character\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions1518037608', 'Our department became the ____________ lamb when the company decided to downsize', '[{\"answer\":\"artificial\",\"isCorrect\":0},{\"answer\":\"sacrificial\",\"isCorrect\":1},{\"answer\":\"judicial\",\"isCorrect\":0},{\"answer\":\"superficial\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions1590279770', 'John suggested _________ Jack and Jill a picture as a wedding present.', '[{\"answer\":\"to buy\",\"isCorrect\":0},{\"answer\":\"buying\",\"isCorrect\":1},{\"answer\":\"us to buy \",\"isCorrect\":0},{\"answer\":\"that we buying\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions2406143900', 'Did you do any damage _______the car?', '[{\"answer\":\"on \",\"isCorrect\":0},{\"answer\":\"in \",\"isCorrect\":1},{\"answer\":\"to \",\"isCorrect\":0},{\"answer\":\"for\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions2863583872', 'She is a good person so I was hoping she might show a little ____________ for the poor', '[{\"answer\":\"Circle \",\"isCorrect\":0},{\"answer\":\"Compassion\",\"isCorrect\":1},{\"answer\":\"Band \",\"isCorrect\":0},{\"answer\":\"Tug\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions2940034549', '12313', '[{\"answer\":\"123333333333333333333333333333333333333\",\"isCorrect\":1},{\"answer\":\"31233333333333333333333333333333333333333333333\",\"isCorrect\":0},{\"answer\":\"3123333333333333333333333333333333333333333333333\",\"isCorrect\":0},{\"answer\":\"12313213\",\"isCorrect\":0}]', 'exercises9085609173', b'0'),
('questions3380005428', 'You ____ tell anyone what I’ve revealed to you. It’s still a secret', '[{\"answer\":\"mustn\'t\",\"isCorrect\":1},{\"answer\":\"had better not\",\"isCorrect\":0},{\"answer\":\"ought not to \",\"isCorrect\":0},{\"answer\":\"don\'t have to \",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions3556001014', 'Tome, it broke my heart as I could not prepare the Christmas for my three boys. I have been their only parent since my husband _____ away two years ago', '[{\"answer\":\"passses\",\"isCorrect\":0},{\"answer\":\"passsed\",\"isCorrect\":1},{\"answer\":\"has passed\",\"isCorrect\":0},{\"answer\":\"was passing \",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions3705383738', 'The church is over 200 years old. Our class visited it last summer.', '[{\"answer\":\"The church which our class visited it last summer is over 200 years old.\",\"isCorrect\":0},{\"answer\":\"The church that our class visited it last summer is over 200 years old.\",\"isCorrect\":0},{\"answer\":\"The church which our class visited last summer is over 200 years old.\",\"isCorrect\":1},{\"answer\":\"The church our class visit last summer is over 200 years old.\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions4100511550', 'There were portraits of his ____________ on the walls of the room', '[{\"answer\":\"acupuncture\",\"isCorrect\":1},{\"answer\":\"punctuality\",\"isCorrect\":0},{\"answer\":\"punishment \",\"isCorrect\":0},{\"answer\":\"accusation\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions4181056298', 'Did you do any damage _______the car?', '[{\"answer\":\"on \",\"isCorrect\":0},{\"answer\":\"in \",\"isCorrect\":1},{\"answer\":\"to \",\"isCorrect\":0},{\"answer\":\"for\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions4264457528', 'She is a good person so I was hoping she might show a little ____________ for the poor', '[{\"answer\":\"Circle \",\"isCorrect\":0},{\"answer\":\"Compassion\",\"isCorrect\":1},{\"answer\":\"Band \",\"isCorrect\":0},{\"answer\":\"Tug\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions4386344499', 'You can complain about it until you\'re ________ in the face, but you\'re going to school today whether you like it or not', '[{\"answer\":\"blue \",\"isCorrect\":1},{\"answer\":\"red\",\"isCorrect\":0},{\"answer\":\"black \",\"isCorrect\":0},{\"answer\":\"white\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions4425569982', 'With ski season fast ______, investors are wondering whether the ski lodge will be completed by the first snow fall', '[{\"answer\":\"selling \",\"isCorrect\":0},{\"answer\":\"snowing\",\"isCorrect\":0},{\"answer\":\"completing\",\"isCorrect\":0},{\"answer\":\"approaching \",\"isCorrect\":1}]', 'exercises6076854188', b'0'),
('questions4455938214', 'There were portraits of his ____________ on the walls of the room', '[{\"answer\":\"ancestors\",\"isCorrect\":1},{\"answer\":\"millipedes\",\"isCorrect\":0},{\"answer\":\"centipedes\",\"isCorrect\":0},{\"answer\":\"scorpions\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions4549809004', 'Question 2', '[{\"answer\":\"132123111\",\"isCorrect\":0},{\"answer\":\"111\",\"isCorrect\":1},{\"answer\":\"11\",\"isCorrect\":0},{\"answer\":\"11\",\"isCorrect\":0}]', 'exercises2403078151', b'0'),
('questions4864228047', 'She is a good person so I was hoping she might show a little ____________ for the poor', '[{\"answer\":\"accused\",\"isCorrect\":0},{\"answer\":\"prohibited\",\"isCorrect\":0},{\"answer\":\"indicted\",\"isCorrect\":1},{\"answer\":\"contraindicated\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions5068606656', 'We _______ touch since we _______ school three years ago.', '[{\"answer\":\"lost\\/ have left\",\"isCorrect\":0},{\"answer\":\"have lost\\/ left\",\"isCorrect\":1},{\"answer\":\"have lost\\/ leave\",\"isCorrect\":0},{\"answer\":\"were losing\\/ had left \",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions5382774821', 'how old are you', '[{\"answer\":\"Im 19 \",\"isCorrect\":1},{\"answer\":\"i live 19\",\"isCorrect\":0},{\"answer\":\"it 19\",\"isCorrect\":0},{\"answer\":\"the 19\",\"isCorrect\":0}]', 'exercises1632420169', b'0'),
('questions5411604537', 'how old are you', '[{\"answer\":\"Im 19 \",\"isCorrect\":1},{\"answer\":\"i live 19\",\"isCorrect\":0},{\"answer\":\"it 19\",\"isCorrect\":0},{\"answer\":\"the 19\",\"isCorrect\":0}]', 'exercises4060185879', b'0'),
('questions5525770580', 'There were portraits of his ____________ on the walls of the room', '[{\"answer\":\"ancestors\",\"isCorrect\":1},{\"answer\":\"millipedes\",\"isCorrect\":0},{\"answer\":\"centipedes\",\"isCorrect\":0},{\"answer\":\"scorpions\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions5988552269', 'There were portraits of his ____________ on the walls of the room', '[{\"answer\":\"acupuncture\",\"isCorrect\":1},{\"answer\":\"punctuality\",\"isCorrect\":0},{\"answer\":\"punishment \",\"isCorrect\":0},{\"answer\":\"accusation\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions6166510275', 'With ski season fast ______, investors are wondering whether the ski lodge will be completed by the first snow fall', '[{\"answer\":\"selling \",\"isCorrect\":0},{\"answer\":\"snowing\",\"isCorrect\":0},{\"answer\":\"completing\",\"isCorrect\":0},{\"answer\":\"approaching \",\"isCorrect\":1}]', 'exercises4057089425', b'0'),
('questions6318276211', 'would you like some drink', '[{\"answer\":\"i\'d like some orange juice, please\",\"isCorrect\":1},{\"answer\":\"Orange juice, please\",\"isCorrect\":0},{\"answer\":\"Yes \",\"isCorrect\":0},{\"answer\":\"No\",\"isCorrect\":0}]', 'exercises1632420169', b'0'),
('questions6665101594', 'Question 1', '[{\"answer\":\"1231323\",\"isCorrect\":0},{\"answer\":\"31231\",\"isCorrect\":1},{\"answer\":\"11\",\"isCorrect\":0},{\"answer\":\"11\",\"isCorrect\":0}]', 'exercises2403078151', b'0'),
('questions7760354297', 'There were portraits of his ____________ on the walls of the room', '[{\"answer\":\" number\",\"isCorrect\":0},{\"answer\":\"shape\",\"isCorrect\":0},{\"answer\":\"figure\",\"isCorrect\":1},{\"answer\":\"character\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions8129094151', 'You can complain about it until you\'re ________ in the face, but you\'re going to school today whether you like it or not', '[{\"answer\":\"blue \",\"isCorrect\":1},{\"answer\":\"red\",\"isCorrect\":0},{\"answer\":\"black \",\"isCorrect\":0},{\"answer\":\"white\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions8161794186', 'The church is over 200 years old. Our class visited it last summer.', '[{\"answer\":\"The church which our class visited it last summer is over 200 years old.\",\"isCorrect\":0},{\"answer\":\"The church that our class visited it last summer is over 200 years old.\",\"isCorrect\":0},{\"answer\":\"The church which our class visited last summer is over 200 years old.\",\"isCorrect\":1},{\"answer\":\"The church our class visit last summer is over 200 years old.\",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions8495418705', 'You ____ tell anyone what I’ve revealed to you. It’s still a secret', '[{\"answer\":\"mustn\'t\",\"isCorrect\":1},{\"answer\":\"had better not\",\"isCorrect\":0},{\"answer\":\"ought not to \",\"isCorrect\":0},{\"answer\":\"don\'t have to \",\"isCorrect\":0}]', 'exercises6076854188', b'0'),
('questions8732162463', 'John suggested _________ Jack and Jill a picture as a wedding present.', '[{\"answer\":\"to buy\",\"isCorrect\":0},{\"answer\":\"buying\",\"isCorrect\":1},{\"answer\":\"us to buy \",\"isCorrect\":0},{\"answer\":\"that we buying\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions9440641774', 'She is a good person so I was hoping she might show a little ____________ for the poor', '[{\"answer\":\"accused\",\"isCorrect\":0},{\"answer\":\"prohibited\",\"isCorrect\":0},{\"answer\":\"indicted\",\"isCorrect\":1},{\"answer\":\"contraindicated\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions9495384001', 'The company\'s establishment of an on-site child care center is intended ------- encourage new parents to return to work', '[{\"answer\":\"which \",\"isCorrect\":0},{\"answer\":\"that \",\"isCorrect\":0},{\"answer\":\"for \",\"isCorrect\":0},{\"answer\":\"to\",\"isCorrect\":1}]', 'exercises4057089425', b'0'),
('questions9522920854', 'The company\'s establishment of an on-site child care center is intended ------- encourage new parents to return to work', '[{\"answer\":\"which \",\"isCorrect\":0},{\"answer\":\"that \",\"isCorrect\":0},{\"answer\":\"for \",\"isCorrect\":0},{\"answer\":\"to\",\"isCorrect\":1}]', 'exercises6076854188', b'0'),
('questions9689270313', 'Our department became the ____________ lamb when the company decided to downsize', '[{\"answer\":\"artificial\",\"isCorrect\":0},{\"answer\":\"sacrificial\",\"isCorrect\":1},{\"answer\":\"judicial\",\"isCorrect\":0},{\"answer\":\"superficial\",\"isCorrect\":0}]', 'exercises4057089425', b'0'),
('questions9778912886', 'would you like some drink', '[{\"answer\":\"i\'d like some orange juice, please\",\"isCorrect\":1},{\"answer\":\"Orange juice, please\",\"isCorrect\":0},{\"answer\":\"Yes \",\"isCorrect\":0},{\"answer\":\"No\",\"isCorrect\":0}]', 'exercises4060185879', b'0'),
('questions9874460408', 'We _______ touch since we _______ school three years ago.', '[{\"answer\":\"lost\\/ have left\",\"isCorrect\":0},{\"answer\":\"have lost\\/ left\",\"isCorrect\":1},{\"answer\":\"have lost\\/ leave\",\"isCorrect\":0},{\"answer\":\"were losing\\/ had left \",\"isCorrect\":0}]', 'exercises4057089425', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topic`
--

CREATE TABLE `topic` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `topic`
--

INSERT INTO `topic` (`id`, `name`, `parent_id`) VALUES
('1', 'Grammar', NULL),
('10', 'Pronunciation', NULL),
('2', 'Vocabulary', NULL),
('3', 'Reading', NULL),
('4', 'Listening', NULL),
('5', 'Writing', NULL),
('6', 'Speaking', NULL),
('7', 'Idioms', NULL),
('8', 'Phrasal Verbs', NULL),
('9', 'Collocations', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `display_name` text DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `avata` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT 'user',
  `birthday` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `display_name`, `password`, `email`, `phone`, `avata`, `role`, `birthday`, `sex`) VALUES
('users1517929873', 'TruongQuocDat', '2dd54de9ca56500b364dd54877addf24e84c5949e6bc197050a83b2ff455fd5a', 'dattruong19122003@gmail.com', 123133, 'Cart_empty (2).png', 'student', NULL, NULL),
('users1910180598', 'Huyền', '628b7c147ee4438c5af157fa41dfe5dc7cbed7aea420e33935fbe61ee5a6b007', 'seja0412@gmail.com', 788259168, '10.png', 'teacher', NULL, NULL),
('users2441932699', 'AG', '832123c5f3c5b5dfa8b7feeae43419869f02686a7b6ad0f43c14bc55824741f1', 'huyenn0923@gmail.com', 788259168, '10.png', 'student', '2003-02-07', 'female'),
('users4014238267', 'Trương Quốc Đạt (teacher)', '2dd54de9ca56500b364dd54877addf24e84c5949e6bc197050a83b2ff455fd5a', 'dat01202642582@gmail.com', 123456789, 'owl-low-poly-artwork-amoled-black-background-neon-3840x2160-5101.png', 'teacher', NULL, NULL),
('users6624866173', 'Trần Gia Bảo', 'b158ca9f786389d6912960ed592bdd692f7d243f6cdaf225629f235c4c7f6504', 'trangiabao433@gmail.com', 963435082, 'default_avata.png', 'teacher', NULL, NULL),
('users8714297956', 'Đạt', '2dd54de9ca56500b364dd54877addf24e84c5949e6bc197050a83b2ff455fd5a', 'ntmhuyenn2007@gmail.com', 1234567890, 'Screenshot 2024-06-04 220219.png', 'teacher', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_exercise_history`
--

CREATE TABLE `user_exercise_history` (
  `id` varchar(50) NOT NULL,
  `user_ids` varchar(50) NOT NULL,
  `date_completed` datetime DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  `question_answers` text DEFAULT NULL,
  `exercise_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `user_exercise_history`
--

INSERT INTO `user_exercise_history` (`id`, `user_ids`, `date_completed`, `score`, `question_answers`, `exercise_id`) VALUES
('user_exercise_history0736512696', 'users2441932699', '2024-06-06 03:34:20', '100', '[{\"question\":\"how old are you\",\"user_answer\":\"Im 19 \",\"correct_answer\":\"Im 19 \"},{\"question\":\"would you like some drink\",\"user_answer\":\"i\'d like some orange juice, please\",\"correct_answer\":\"i\'d like some orange juice, please\"}]', 'exercises4060185879'),
('user_exercise_history1560270660', 'users1910180598', '2024-06-06 13:19:00', '100', '[{\"question\":\"how old are you\",\"user_answer\":\"Im 19 \",\"correct_answer\":\"Im 19 \"},{\"question\":\"would you like some drink\",\"user_answer\":\"i\'d like some orange juice, please\",\"correct_answer\":\"i\'d like some orange juice, please\"}]', 'exercises1632420169'),
('user_exercise_history2433358500', 'users4014238267', '2024-06-06 13:07:51', '100', '[{\"question\":\"12313\",\"user_answer\":\"123333333333333333333333333333333333333\",\"correct_answer\":\"123333333333333333333333333333333333333\"}]', 'exercises9085609173'),
('user_exercise_history5402680602', 'users4014238267', '2024-06-06 15:06:14', '0', '[{\"question\":\"Question 2\",\"user_answer\":\"132123111\",\"correct_answer\":\"111\"},{\"question\":\"Question 1\",\"user_answer\":\"1231323\",\"correct_answer\":\"31231\"}]', 'exercises2403078151'),
('user_exercise_history8720592797', 'users1517929873', '2024-06-06 08:52:21', '50', '[{\"question\":\"how old are you\",\"user_answer\":\"Im 19 \",\"correct_answer\":\"Im 19 \"},{\"question\":\"would you like some drink\",\"user_answer\":\"Orange juice, please\",\"correct_answer\":\"i\'d like some orange juice, please\"}]', 'exercises4060185879'),
('user_exercise_history9893978880', 'users4014238267', '2024-06-06 14:39:17', '33.33333333333333', '[{\"question\":\"Our department became the ____________ lamb when the company decided to downsize\",\"user_answer\":\"artificial\",\"correct_answer\":\"sacrificial\"},{\"question\":\"John suggested _________ Jack and Jill a picture as a wedding present.\",\"user_answer\":\"buying\",\"correct_answer\":\"buying\"},{\"question\":\"She is a good person so I was hoping she might show a little ____________ for the poor\",\"user_answer\":\"Compassion\",\"correct_answer\":\"Compassion\"},{\"question\":\"Tome, it broke my heart as I could not prepare the Christmas for my three boys. I have been their only parent since my husband _____ away two years ago\",\"user_answer\":\"has passed\",\"correct_answer\":\"passsed\"},{\"question\":\"There were portraits of his ____________ on the walls of the room\",\"user_answer\":\"punishment \",\"correct_answer\":\"acupuncture\"},{\"question\":\"Did you do any damage _______the car?\",\"user_answer\":\"on \",\"correct_answer\":\"in \"},{\"question\":\"You can complain about it until you\'re ________ in the face, but you\'re going to school today whether you like it or not\",\"user_answer\":\"blue \",\"correct_answer\":\"blue \"},{\"question\":\"With ski season fast ______, investors are wondering whether the ski lodge will be completed by the first snow fall\",\"user_answer\":\"selling \",\"correct_answer\":\"approaching \"},{\"question\":\"There were portraits of his ____________ on the walls of the room\",\"user_answer\":\"centipedes\",\"correct_answer\":\"ancestors\"},{\"question\":\"She is a good person so I was hoping she might show a little ____________ for the poor\",\"user_answer\":\"prohibited\",\"correct_answer\":\"indicted\"},{\"question\":\"We _______ touch since we _______ school three years ago.\",\"user_answer\":\"have lost\\/ left\",\"correct_answer\":\"have lost\\/ left\"},{\"question\":\"There were portraits of his ____________ on the walls of the room\",\"user_answer\":\" number\",\"correct_answer\":\"figure\"},{\"question\":\"The church is over 200 years old. Our class visited it last summer.\",\"user_answer\":\"The church which our class visited last summer is over 200 years old.\",\"correct_answer\":\"The church which our class visited last summer is over 200 years old.\"},{\"question\":\"You ____ tell anyone what I’ve revealed to you. It’s still a secret\",\"user_answer\":\"ought not to \",\"correct_answer\":\"mustn\'t\"},{\"question\":\"The company\'s establishment of an on-site child care center is intended ------- encourage new parents to return to work\",\"user_answer\":\"which \",\"correct_answer\":\"to\"}]', 'exercises6076854188');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`,`user_id`) USING BTREE,
  ADD UNIQUE KEY `uc_Exercises_id_question_ids` (`id`,`user_id`) USING BTREE,
  ADD KEY `fk_Exercises_Topic_id` (`topic_id`) USING BTREE,
  ADD KEY `fk_Exercises_Level_id` (`level_id`) USING BTREE,
  ADD KEY `fk_Exercises_User_id` (`user_id`) USING BTREE;

--
-- Chỉ mục cho bảng `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`,`user_id`) USING BTREE,
  ADD UNIQUE KEY `uc_News_id_used_id` (`id`,`user_id`) USING BTREE,
  ADD KEY `fk_News_Users_id` (`user_id`) USING BTREE;

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`,`exercise_id`) USING BTREE,
  ADD UNIQUE KEY `uc_Question_id_exercise_ids` (`id`,`exercise_id`) USING BTREE,
  ADD KEY `fk_Questions_Exercises_id` (`exercise_id`) USING BTREE;

--
-- Chỉ mục cho bảng `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `user_exercise_history`
--
ALTER TABLE `user_exercise_history`
  ADD PRIMARY KEY (`id`,`user_ids`) USING BTREE,
  ADD UNIQUE KEY `uc_Exercises_id_user_ids` (`id`,`user_ids`) USING BTREE,
  ADD KEY `fk_User_Exercise_History_Users_id` (`user_ids`) USING BTREE,
  ADD KEY `fk_user_exercise_history_exercise_id` (`exercise_id`) USING BTREE;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `exercises`
--
ALTER TABLE `exercises`
  ADD CONSTRAINT `fk_Exercises_Level_id` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `fk_Exercises_Topic_id` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`),
  ADD CONSTRAINT `fk_Exercises_User_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `fk_News_Users_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_Questions_Exercises_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`);

--
-- Các ràng buộc cho bảng `user_exercise_history`
--
ALTER TABLE `user_exercise_history`
  ADD CONSTRAINT `fk_User_Exercise_History_Users_id` FOREIGN KEY (`user_ids`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_user_exercise_history_exercise_id` FOREIGN KEY (`exercise_id`) REFERENCES `exercises` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
