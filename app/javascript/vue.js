import Vue from 'vue/dist/vue.esm'
document.addEventListener('DOMContentLoaded', () => {
    const app = new Vue({
        el:'#app',
        data: {
            message: 'Vue, what else!'
        }
    })
    const device2 = new Vue({
        el:'#device2',
        data: {
            message: 'Vue, what else!'
        }
    })
})