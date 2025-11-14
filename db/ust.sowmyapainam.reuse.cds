type eml : String(255) @assert.format;
type phn : String(30) @assert.format;
type gender : String @assert.range enum { M; 
                            F;}   
                            
















//                                      const cds = require('@sap/cds');

// module.exports = cds.service.impl(function () {
//   const { Employee } = this.entities;

  
//   this.before(['CREATE', 'UPDATE'], Employee, async (req) => {
//     const { SALARY, nameFirst, loginName, ID } = req.data;


//     if (SALARY < 0) {
//       req.error(400, 'Salary must be greater than zero');
//     }

    
//     if (req.event === 'UPDATE') {
//       const existing = await SELECT.one.from(Employee).where({ ID });

//       if (!existing) {
//         req.error(404, 'Employee record not found');
//       }

//       if (nameFirst && nameFirst !== existing.nameFirst) {
//         req.error(400, 'Operation not allowed: nameFirst cannot be changed');
//       }

//       if (loginName && loginName !== existing.loginName) {
//         req.error(400, 'Operation not allowed: loginName cannot be changed');
//       }
//     }
//   });


//   this.after('UPDATE', Employee, (data, req) => {
//     console.log('Update operation successful');
//   });


//   this.before('DELETE', Employee, async (req) => {
//     const { ID } = req.data;
//     const emp = await SELECT.one.from(Employee).where({ ID });

//     if (emp && emp.nameFirst && emp.nameFirst.startsWith('S')) {
//       req.error(400, 'Delete not allowed: nameFirst starts with "S"');
//     }
//   });

 
//   this.after('DELETE', Employee, (data, req) => {
//     console.log('Delete operation successful');
//   });
// });
                 