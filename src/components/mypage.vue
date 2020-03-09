<template>
<div>
<center>
<br>
<br>
<br>
<br>
    <b-card
        no-body
        style="max-width: 30rem;"
        img-top
    >
    <template v-slot:header>
    <h4 class="mb-0">My page</h4>
    </template>

    <b-card-body>
        <b-card-title>username,회원님 환영합니다!</b-card-title>
        <br>
        <b-card-sub-title class="mb-2">예약현황</b-card-sub-title>
        <b-card-text>username 회원님은 현재, 차량예약이 완료되었습니다.</b-card-text>
    </b-card-body>

    <b-list-group flush>
        <hr>
        <b-list-group-item>현대 자동차 베뉴</b-list-group-item>
        <b-list-group-item>CB0001</b-list-group-item>
        <b-list-group-item>픽업 : 2020-03-05</b-list-group-item>
        <b-list-group-item>반납 : 2020-03-10</b-list-group-item>
    </b-list-group>

    <b-card-body>
        <b-button type="submit" block variant="primary">예약 취소</b-button>
    </b-card-body>
    <b-card-footer>bespinCar</b-card-footer>
    </b-card>
</center>
</div>  
</template>
<script>
export default {
    name:'mypage',
    data() {
        return{};
    }
}
</script>