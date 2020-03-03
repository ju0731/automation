<template>
  <div class="signup">
    <br>
    <center>
    <img src="@/assets/bespin.png" fluid alt="Responsive image"
    style="max-width: 25rem;">
    </center>
    <br>
    <br>
    <center>
    <b-card
    header="회원가입"
      header-tag="header"
      style="max-width: 30rem;"
      title="BespinCar의 회원이 되어보세요!"
    >
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
      <b-form-group
        id="input-group-1"
        label="Your id :"
        label-for="input-1"
        description="5글자 이상의 영문과 숫자 조합의 아이디를 만들어 주세요"
      >
        <b-form-input
          id="input-1"
          required
          v-model="form.id"
          placeholder="Enter id"
        ></b-form-input>
      </b-form-group>

      <b-form-group 
      id="input-group-2"
      label="Your password:" 
      label-for="input-2"
     
      >
        <b-form-input
          id="input-2"
          v-model="form.password"
          type="password"
          required
          placeholder="Enter passwords"
        ></b-form-input>
      </b-form-group>

      <b-form-group
      id="input-group-3"
      label-for="input-3"
      description="password 확인을 위해 다시한번 입력해주십시오."
      >
        <b-form-input
          id="input-3"
          v-model="form.password1"
          type="password"
          required
          placeholder="One more enter passwords"
        ></b-form-input>
      </b-form-group>

       <b-form-group
      id="input-group-4"
      label-for="input-4"
      label="Your name:"
      >
        <b-form-input
          id="input-4"
          v-model="form.name"
          required
          placeholder="Enter your name"
          
        ></b-form-input>
      </b-form-group>

      <b-form-group
      id="input-group-5"
      label-for="input-5"
      label="Your phone number:"
      type="number"
      >
        <b-form-input
          id="input-5"
          v-model="form.number"
          type="number"
          required
          placeholder="Enter your phone number"
        ></b-form-input>
      </b-form-group>
      <b-button type="submit" variant="primary">Submit</b-button>
      <b-button type="reset" variant="danger">Reset</b-button>
    </b-form>
    
    </b-card>
    </center>
    <br>
    <br>
    <br>
  </div>
</template>


<script>
  export default {
    name: 'signup',
    data() {
      return {
        form: {
          id: '',
          password:'',
          password1:'',
          name: '',
          number:''
        },
          show: true
      }
    },
    methods: {
      onSubmit(evt) {
        evt.preventDefault()
        alert(JSON.stringify(this.form))
      },
      onReset(evt) {
        evt.preventDefault()
        // Reset our form values
        this.form.id = ''
        this.form.password = ''
        this.form.name = ''
        this.form.number = ''
        // Trick to reset/clear native browser form validation state
        this.show = false
        this.$nextTick(() => {
          this.show = true
        })
      }
    }
  }
</script>
