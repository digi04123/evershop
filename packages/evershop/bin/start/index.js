// https://github.com/node-config/node-config/issues/578

var apm = require('elastic-apm-node').start({
  serviceName: 'evershop',
  serverUrl: 'https://apm.rhel.ontolo.wongfamily.homes',
  environment: 'prod'
})

process.env.ALLOW_CONFIG_MUTATIONS = true;
require('dotenv').config();
const { start } = require('@evershop/evershop/bin/lib/startUp');

(async () => {
  await start();
})();
