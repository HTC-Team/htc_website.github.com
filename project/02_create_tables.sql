--======================
-- gender
--======================
CREATE TABLE projects.genders(
    id SERIAL,
    name varchar(10) NOT NULL
);

--======================
-- positions
--======================
CREATE TABLE projects.positions(
    id SERIAL,
    name varchar(50) NOT NULL
);

--======================
-- statuses
--======================
CREATE TABLE projects.statuses(
    id SERIAL,
    name varchar(15) NOT NULL
);

--======================
-- categories
--======================
CREATE TABLE projects.categories(
    id SERIAL,
    name varchar(100) NOT NULL,
    slug varchar(50) NOT NULL,
    s_id int NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--======================
-- authors
--======================
CREATE TABLE projects.authors(
    id SERIAL,
    name varchar(50) NOT NULL,
    password varchar(50) NOT NULL,
    g_id int NOT NULL,
    email text NOT NULL,
    contact varchar(20) NOT NULL,
    telegram text,
    photo text,
    description text,
    p_id int NOT NULL
);

--======================
-- services
--======================
CREATE TABLE projects.services(
    id SERIAL,
    title_kh text NOT NULL,
    title_en text NOT NULL,
    description_kh text NOT NULL,
    description_en text NOT NULL,
    a_id int NOT NULL
);

--======================
-- posts
--======================
CREATE TABLE projects.posts(
    id SERIAL,
    title_kh text NOT NULL,
    title_en text NOT NULL,
    excerpt_kh text NOT NULL,
    excerpt_en text NOT NULL,
    banner text,
    c_id int NOT NULL,
    a_id int NOT NULL
);

--======================
-- slides
--======================
CREATE TABLE projects.slides(
    id SERIAL,
    title_kh text NOT NULL,
    title_en text NOT NULL,
    optional_link text,
    picture text,
    s_id int NOT NULL,
    publish_date DATE DEFAULT CURRENT_DATE,
    a_id int
);

