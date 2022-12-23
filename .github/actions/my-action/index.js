const { context } = require('@actions/github');

async function run() {
  const { payload } = context;
  console.log(`Received event with action: ${payload.action}`);
}

run().catch(error => {
  console.error(error);
  process.exit(1);
});
