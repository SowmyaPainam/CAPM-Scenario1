const cds = require('@sap/cds');
const { SELECT } = require('@sap/cds/lib/ql/cds-ql');


module.exports = cds.service.impl(function(){
    const {Employee} = this.entities;

this.before('CREATE', Employee, (req) => {
        const { salaryAmount, currencyCode } = req.data;
        console.log(salaryAmount)
        if( salaryAmount > 50000 && currencyCode !== 'USD' ) req.reject({message: "Employee's salary must be less than 50000 USD"});
    })

    this.on('CREATE', Employee, async (req) => {
        console.log(req.data)
        const res = await INSERT.into(Employee).entries(req.data);
        console.log("Create operation successful");
    })

    
    this.before('UPDATE', Employee, (req) => {
        const { salaryAmount, currencyCode } = req.data;
        if( salaryAmount > 50000 && currencyCode !== 'USD' ) req.reject({message: "Employee's salary must be less than 50000 USD"});
        if( req.data.nameFirst || req.data.loginName ) req.reject({message: "Operation not allowed"});
    })

    this.on('UPDATE', Employee, (req) => {
        console.log("Update operation successful");
    })


    this.before('DELETE', Employee, async (req) => {
        const {ID} = req.data;
        console.log(ID)
        const EMP = await SELECT.one.from(Employee).where({ID});
        console.log(EMP)
        const {nameFirst} = EMP;
        console.log(nameFirst);
        if(nameFirst[0] === 'S') req.reject({message: 'Cannot be deleted'});
    })
    
    // this.on('DELETE', Employee, async (req) => {
    //     await DELETE.from(Employee).where({ID:ID})
    //     console.log("Delete operation successful");
    // })

})