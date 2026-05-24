CREATE TABLE orders AS
    FROM VALUES
        (3, 'west', 'carol', 150),
        (4, 'west', 'dave', 250)
    v(id, region, customer, amount);

CALL quack_identify(
    name => 'server2',
    provider => 'docker',
    region => 'west',
    meta => '{"lab": "lab2", "shard": 2}'
);

CALL quack_serve(
    'quack:0.0.0.0:9494',
    token = 'server2_secret',
    allow_other_hostname => true
);
