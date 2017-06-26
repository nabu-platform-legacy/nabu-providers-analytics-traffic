create sequence seq_http_request_id;
create sequence seq_http_request_property_id;

create table http_requests (
	id bigint not null default nextval('seq_http_request_id') primary key,
	created timestamp not null,
	alias text,
	remote_ip text not null,
	remote_host text,
	remote_port integer not null,
	http_version decimal not null,
	host text,
	method text not null,
	target text not null,
	accept_language text,
	user_agent text,
	referer text,
	server text not null,
	server_group text,
	web_application_id text not null
);
create table http_request_properties (
	id bigint not null default nextval('seq_http_request_id') primary key,
	name text not null,
	content text not null,
	http_request_id bigint not null
);
