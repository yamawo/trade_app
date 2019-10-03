
// import App from '../app.vue'

// document.addEventListener('DOMContentLoaded', () => {
  //   const app = new Vue({
    //     render: h => h(App)
    //   }).$mount()
    //   document.body.appendChild(app.$el)
    
    //   console.log(app)
    // })
import Vue from 'vue'
import axios from 'axios'

    
var CoinCheck = [];

new Vue({
  el: "#bitcoin_chart",
  data: {
    data: [],
  },
  methods: {
    window:onload = function() {
      axios.get("/api/bitcoins")
      .then(res => {
        this.data = res.data; 
        CoinCheck.push({                      // ハッシュを配列へ
          x: data["date_time"],               // タイムスタンプ
          y: data["price"]                    // レート（日本円）
        });
        console.log(CoinCheck);               // データ確認用
      });
      this.setInterval(this, 100000);         // 1分ごとにjsonでデータ取得する
    },
  }
})
// var id = 'bitcoin_chart';
// var ctx = document.getElementById(id).getContext('2d');
// var chart = new Chart(ctx, {
//     type: 'line',
//     data: {
//         datasets: [{
//             data: CoinCheck,
//             label: 'Price Rating',            // ラベル        
//             borderColor: 'rgb(255, 99, 132)', // 線の色
//             backgroundColor: 'rgba(255, 99, 132, 0.5)', // 塗りの色
//             fill: false,                      // 塗りつぶさない
//             lineTension: 0                    // グラフの丸み
//         }]
//     },
//     options: {
//       title: {
//           text: 'BTC/JPY (' + id + ')', // チャートタイトル
//           display: true
//       },
//       scales: {
//           xAxes: [{
//               type: 'realtime' // X軸に沿ってスクロール
//           }]
//       },
//       plugins: {
//           streaming: {
//             duration: 480000, // 480000ミリ秒（8分）のデータを表示
//           }
//       }
//     }
// })
