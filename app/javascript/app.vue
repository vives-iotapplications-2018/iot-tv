<template>
<div>
  <chartjs-line
    v-bind:option="option"
    v-bind:datasets="datasets"
    v-bind:labels="labels"
    v-bind:bind="true"
  ></chartjs-line>
<!--     <div class="temp-area" v-if="temperatures">
        <h2>{{ temperatures }}</h2>

      </div> -->
</div>
</template>

<script>
export default {


  data() {
    return {
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
      }
    };
  },
      created ()  {
        this.axios.get('http://localhost:3000/temperatures.json').then((response, error) => {
          var arraySize = response.data.length; 
          for(var i = 0; i < arraySize; i++){
            this.datasets[0].data.push(response.data[i].value);
            this.labels.push(response.data[i].created_at)
        }   
      })
    }, 

};

</script>

<style scoped>

</style>

