<template>
<div>
    <b-jumbotron >
        <template v-slot:header style="text-align:left;">현대자동차 베뉴</template>
        <template v-slot:lead style="text-align:left;">
      도심주행에 적합한 안정적이고 편안한 주행성능이 특징이다.
진보된 첨단 지능형 주행 안전 기술 및 편의사양을 원한다면 이차를 선택하세요!
    </template>
    <b-card>
  <b-row>
        <img src="@/assets/car1.png" style="max-width: 30rem;" align="top">
    
    <b-list-group >
            <p>▲ 차량 정보</p>
            <b-list-group-item style="text-align:left;">재고: 1대</b-list-group-item>
            <b-list-group-item style="text-align:left;">가격: 하루 72350원</b-list-group-item>
            <b-list-group-item>색깔: 검은색</b-list-group-item>
            <b-list-group-item>연비:  11.3~16.1km</b-list-group-item>
            <b-list-group-item>승차 가능인원: 최대 6명</b-list-group-item>
            <b-list-group-item>연료: 디젤</b-list-group-item>
    </b-list-group>
    
    <b-col md="auto" @submit="onSubmit" v-if="show">
        <p>▲ 예약 날짜</p>
      <b-calendar  v-model="value" :min="min" :max="max" @context="onContext" locale="en" ></b-calendar>
    </b-col>
    <b-col>
    <b-form-group label="▲ 픽업 시간">
      <b-form-checkbox-group
        v-model="selected"
        :options="options"
        name="buttons-1"
        @context="onContext"
        buttons
        ></b-form-checkbox-group>
    </b-form-group>
    
    <b-form-group label="▲ 픽업 장소">
      <b-form-checkbox-group
        v-model="selected1"
        :options="options1"
        name="buttons-2"
        @context="onContext"
        buttons
        ></b-form-checkbox-group>
    </b-form-group>
      <p>Value: <b>'{{ value }}'</b></p>
      <p>Value: <b>'{{ selected }}'</b></p>
      <p>Value: <b>'{{ selected1 }}'</b></p>
      
    </b-col>
  </b-row>
  </b-card>
  
  </b-jumbotron>
  <center>
  <b-button type="submit" variant="primary" href="#">예약하기</b-button>
    <b-button variant="success" to="/">다른 차 보러가기</b-button>
  </center>
  <br>
  <br>
  <br>
  </div>
</template>

<script>
  export default {
      name:'reservartion',
    data() {
        const now = new Date()
      const today = new Date(now.getFullYear(), now.getMonth(), now.getDate())
      // 15th two months prior
      const minDate = new Date(today)
      minDate.setMonth(minDate.getMonth())
      minDate.setDate(3)
      // 15th in two months
      const maxDate = new Date(today)
      maxDate.setMonth(maxDate.getMonth())
      maxDate.setDate(16)
      return {
        value: '',
        min: minDate,
        max: maxDate,
        context: null,
        selected: [], // Must be an array reference!
        options: [
          { text: '오전10시', value: '10시' },
          { text: '오전11시', value: '11시' },
          { text: '오후1시', value: '1시' },
          { text: '오후2시', value: '2시' }
        ],
        selected1: [], // Must be an array reference!
        options1: [
          { text: '강남본사', value: '강남' },
          { text: '야탑본사', value: '야탑' },
          { text: '잠실본사', value: '잠실' },
          { text: '종로본사', value: '종로' }
        ],
         show: true
      }
      
    },
    methods: {
        onSubmit(evt) {
        evt.preventDefault()
        alert("예약이 완료되셨습니다!")
      },
      onContext(ctx) {
        this.context = ctx
        this.selected=selec
        this.selected1=selec1
      },
    }
  }
</script>