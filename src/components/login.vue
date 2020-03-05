<template>
  <div>
    <br>
    
    <br>
    <br>
    <center>
    <b-card
    header="로그인"
      header-tag="header"
      style="max-width: 30rem;"
      title="로그인후 원하는 차량을 예약해보세요!"
    >
    <b-form @submit="onSubmit" @reset="onReset" v-if="show">
      <b-form-group
        id="input-group-1"
        label="Your id :"
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
      type="password"
      >
        <b-form-input
          id="input-2"
          v-model="form.password"
          type="password"
          required
          placeholder="Enter passwords"
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
    name: 'login',
    data() {
      return {
        form: {
          id: '',
          password: '',
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
        this.form.email = ''
        this.form.name = ''
        this.form.food = null
        this.form.checked = []
        // Trick to reset/clear native browser form validation state
        this.show = false
        this.$nextTick(() => {
          this.show = true
        })
      }
    }
  }
</script>
