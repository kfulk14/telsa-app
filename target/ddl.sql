
    drop table if exists buyer;

    create table buyer (
        id bigint not null auto_increment,
        version bigint not null,
        first_name varchar(255) not null,
        primary key (id)
    ) ENGINE=InnoDB;
