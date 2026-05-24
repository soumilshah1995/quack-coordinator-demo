CREATE TABLE orders AS
    FROM VALUES
        (1, 'east', 'alice', 100),
        (2, 'east', 'bob', 200)
    v(id, region, customer, amount);

CALL quack_identify(
    name => 'server1',
    provider => 'docker',
    region => 'east',
    meta => '{"lab": "lab2", "shard": 1}'
);

CALL quack_serve(
    'quack:0.0.0.0:9494',
    token = 'server1_secret',
    allow_other_hostname => true
);
