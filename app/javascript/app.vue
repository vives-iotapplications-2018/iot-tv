<template>
<div>
  <chartjs-line
    v-bind:option="option"
    v-bind:datasets="datasets"
    v-bind:labels="labels"
    v-bind:bind="true"
  ></chartjs-line>

</div>
</template>

<script>
export default {
  data() {
    return {

      labels: [],
      datasets: [
        { 
          data: [],
        },
      ],
    option: {
      responsive: true,
        title: {
          display: true,
          text: "Temperature chart",
        },
      scales: {
        xAxes:  {
          display: true,
          scaleLabel: {
            display: true,
            text: 'Time',
          },
        },
        yAxes:  {
          display: true,
          scaleLabel: {
            display: true,
            text: 'value',
          }
        } 
      }
    },
    };
  },
      created ()  {
        this.axios.get('http://localhost:3000/temperatures.json').then((response, error) => {
          var arraySize = response.data.length;

          for(var i = 0; i < arraySize; i++){
            this.datasets[0].data.push(response.data[i].value);
            var fulldate = response.data[i].created_at;
            var time = fulldate.substr(14,23);
            var partTime = time.substr(0,9);
            this.labels.push(partTime);

        }   
      })
    }, 

};

</script>

<style scoped>

</style>

