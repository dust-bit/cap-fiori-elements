const cds = require("@sap/cds");

module.exports = async function (srv) {
  const external = await cds.connect.to("API_BUSINESS_PARTNER");
};
