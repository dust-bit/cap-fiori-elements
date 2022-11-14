const cds = require("@sap/cds");

module.exports = async function (srv) {
  const external = await cds.connect.to("API_BUSINESS_PARTNER");

  srv.on("READ", ["BusinessPartners"], async (req) => {
    req.query.where("FirstName <> '' and LastName <> ''");
    return await external.run(req.query);
  });
};
