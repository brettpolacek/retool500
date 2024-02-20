let startDate = moment(table1.selectedRow.start_date);
let endDate = moment(table1.selectedRow.end_date);
let businessDays = 0;

while (startDate.isBefore(endDate)){
  if (startDate.day() !== 0 && startDate.day() !== 6){
    businessDays ++
  }
  startDate.add(1, 'days');
}
return businessDays;

