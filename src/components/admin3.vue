
<template>
        <div id="app1">
        <button @click="onClickImageUpload"> 호출 </button>
       </div>
</template>

     <!--vue  -->
    <script src="https://cdn.jsdelivr.net/npm/vue@2.5.2/dist/vue.js" ></script>
    <!--엑시오스 CDN -->
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script>
export default {
    data() {
        return {
            imageUrl: null,
        }
    },
    methods: {
        onClickImageUpload() {
                    axios.post('http://localhost:8090/users/', {
	"id" : "Good2",
	"name" : "HH",
	"password" : "HH",
	"phonenumber" : "010-1234-5678",
	"isadmin" : "false"
                    })
                    .then(function(response){
                        alert(response);
                        console.log(response); // 객체 형태로 반환. 파싱작업 불필요
                    });
        }

    }
}

    </script>
