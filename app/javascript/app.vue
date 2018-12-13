
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
var coloR = [];
var warmTemp = function(data) {
  var red = "red";
  return red;
};
var okTemp = function(data) {
  var green = "green";
  return green;
};
var coldTemp = function(data) {
  var blue = "blue";
  return blue;
};
export default {
  created() {
    this.axios
      .get("http://localhost:3000/temperatures.json")
      .then((response, error) => {
        var arraySize = response.data.length;
        for (var i = 0; i < arraySize; i++) {
          this.datasets[0].data.push(response.data[i].value);
          if (response.data[i].value > 20) {
            coloR.push(warmTemp());
          } else if (
            response.data[i].value <= 20 &&
            response.data[i].value >= 10
          ) {
            coloR.push(okTemp());
          } else {
            coloR.push(coldTemp());
          }
          var fulldate = response.data[i].created_at;
          var time = fulldate.substr(14, 23);
          var partTime = time.substr(0, 9);
          this.labels.push(partTime);
        }
      });
  },

  data() {
    return {
      datasets: [
        {
          pointBorderColor: coloR,
          pointBackgroundColor: coloR,
          data: [],
          fill: false
        }
      ],
      labels: [],
      option: {
        responsive: true,
        title: {
          display: true,
          text: "Temperature chart"
        },
        scales: {
          xAxes: [
            {
              display: true,
              scaleLabel: {
                display: true,
                labelString: "Time"
              }
            }
          ],
          yAxes: [
            {
              display: true,
              scaleLabel: {
                display: true,
                labelString: "Temperature in °C"
              }
            }
          ]
        }
      }
    };
  }
};
</script>

<style scoped>
</style>

