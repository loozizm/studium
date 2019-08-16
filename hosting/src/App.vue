<template>
  <v-app>
    <v-app-bar app>
      <v-app-bar-nav-icon></v-app-bar-nav-icon>
      <v-toolbar-title class="headline">
        <span>TITLE</span>
      </v-toolbar-title>
      <v-spacer></v-spacer>
      <v-btn text v-if="!auth">SIGN IN</v-btn>
      <v-btn text v-if="!auth">SIGN UP</v-btn>
      <v-btn text v-if="auth">SIGN OUT</v-btn>
    </v-app-bar>

    <v-content>
      <HelloWorld/>
    </v-content>
  </v-app>
</template>

<script>
import HelloWorld from "./components/HelloWorld";

export default {
  name: "App",
  components: {
    HelloWorld,
  },
  data: () => ({
    //
  }),
  computed: {
    auth(){
      return this.$store.state.auth;
    },
  },
};
</script>
