<template>
<div>
  <chartjs-line
    v-bind:datasets="datasets"
    v-bind:option="option"
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
      temperatures: [],
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
    }
        
      })
    }, 

};

</script>

<style scoped>

</style>

