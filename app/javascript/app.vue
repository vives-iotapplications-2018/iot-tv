<template>
<div>
  <chartjs-line
    v-bind:option="option"
    v-bind:datasets="datasets"
    v-bind:labels="labels"
    v-bind:bind="true"
  ></chartjs-line>
    <div class="temp-area">
       <!-- {{ datasets[0].data[27]}} -->
       {{"Current Temperature " + lastvalue + " °C"}}
      </div>
</div>
</template>

<script>
<<<<<<< HEAD
export default {
=======

export default {

>>>>>>> master
  data() {
    return {
      lastvalue: 0,
      labels: [],
      datasets: [
        { 
          data: [],
        },
      ],

      option: {
        title: {
          display: true,
          text: "Temperature chart"
        },
      },
    };
  },
      created ()  {
<<<<<<< HEAD
        this.axios.get('http://localhost:3000/temperatures.json').then((response, error) => {
          var arraySize = response.data.length;

=======
        this.axios.get('temperatures.json').then((response, error) => {
          console.log(response.data)
          var arraySize = response.data.length; 
>>>>>>> master
          for(var i = 0; i < arraySize; i++){
            this.datasets[0].data.push(response.data[i].value);
            this.labels.push(response.data[i].created_at)
            if(i == arraySize-1){
              this.lastvalue = response.data[i].value
            }
        }   
      })
    }, 

};

</script>

<style scoped>

</style>

