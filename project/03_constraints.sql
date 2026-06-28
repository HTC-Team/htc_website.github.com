-- ===========================
-- genders
-- ===========================
ALTER TABLE projects.genders
ADD CONSTRAINT pk_genders
PRIMARY KEY (id);

-- ===========================
-- positions
-- ===========================
ALTER TABLE projects.positions
ADD CONSTRAINT pk_positions
PRIMARY KEY (id);

-- ===========================
-- statuses
-- ===========================
ALTER TABLE projects.statuses
ADD CONSTRAINT pk_statuses
PRIMARY KEY (id);

-- ===========================
-- categories
-- ===========================
ALTER TABLE projects.categories
ADD CONSTRAINT pk_categories
PRIMARY KEY (id);

ALTER TABLE projects.categories
ADD CONSTRAINT uq_categories_slug
UNIQUE (slug);

-- ===========================
-- authors
-- ===========================
ALTER TABLE projects.authors
ADD CONSTRAINT pk_authors
PRIMARY KEY (id);

ALTER TABLE projects.authors
ADD CONSTRAINT uq_authors_email
UNIQUE (email);

ALTER TABLE projects.authors
ADD CONSTRAINT fk_authors_gender
FOREIGN KEY (g_id)
REFERENCES projects.genders(id);

ALTER TABLE projects.authors
ADD CONSTRAINT fk_authors_position
FOREIGN KEY (p_id)
REFERENCES projects.positions(id);

-- ===========================
-- services
-- ===========================
ALTER TABLE projects.services
ADD CONSTRAINT pk_services
PRIMARY KEY (id);

ALTER TABLE projects.services
ADD CONSTRAINT fk_services_author
FOREIGN KEY (a_id)
REFERENCES projects.authors(id);

-- ===========================
-- posts
-- ===========================
ALTER TABLE projects.posts
ADD CONSTRAINT pk_posts
PRIMARY KEY (id);

ALTER TABLE projects.posts
ADD CONSTRAINT fk_posts_category
FOREIGN KEY (c_id)
REFERENCES projects.categories(id);

ALTER TABLE projects.posts
ADD CONSTRAINT fk_posts_author
FOREIGN KEY (a_id)
REFERENCES projects.authors(id);

-- ===========================
-- slides
-- ===========================
ALTER TABLE projects.slides
ADD CONSTRAINT pk_slides
PRIMARY KEY (id);

ALTER TABLE projects.slides
ADD CONSTRAINT fk_slides_status
FOREIGN KEY (s_id)
REFERENCES projects.statuses(id);

ALTER TABLE projects.slides
ADD CONSTRAINT fk_slides_author
FOREIGN KEY (a_id)
REFERENCES projects.authors(id);

-- ===========================
-- categories
-- ===========================

ALTER TABLE projects.categories
ADD CONSTRAINT fk_categories_status
FOREIGN KEY (s_id)
REFERENCES projects.statuses(id);



