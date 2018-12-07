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
>>>>>>> bc8b1c2f110ab96f18f8190636f3112c0b62b4d3
  data() {
    return {
      lastvalue: 0,
      labels: [],
    /*   labels: ["1h", "2h", "3h", "4h", "5h", "6h", "7h", "8h", "9h", "10h", "11h", "12h", 
      "13h", "14h", "15h", "16h", "17h", "18h", "19h", "20h", "21h", "22h", "23h", "24h"], */
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
        this.axios.get('temperatures.json').then((response, error) => {
          console.log(response.data)
          var arraySize = response.data.length; 
=======
        this.axios.get('http://localhost:3000/temperatures.json').then((response, error) => {
          var arraySize = response.data.length;

>>>>>>> bc8b1c2f110ab96f18f8190636f3112c0b62b4d3
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

