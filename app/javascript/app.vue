

<template>
<div>
  <chartjs-line
    v-bind:datasets="datasets"
    v-bind:option="option"
  ></chartjs-line>
</div>
</template>


<script>
export default {
  data() {
    return {
      datasets: [
        {
          data: [10, 50, 35, 20, 60],
        }
      ],
      option: {
        title: {
          display: true,
          text: "Temperature chart"
        }
      }
    };
  }
};
</script>


<style scoped>

</style>

