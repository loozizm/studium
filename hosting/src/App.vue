<template>
  <v-app>
    <v-navigation-drawer
      app
      v-model="drawer"
      bottom
      temporary
    >
      <v-list rounded>
        <v-list-item-group v-model="item" color="primary">
          <v-list-item
            v-for="(item, i) in items"
            :key="i"
          >
            <v-list-item-icon>
              <v-icon v-text="item.icon"></v-icon>
            </v-list-item-icon>
            <v-list-item-content>
              <v-list-item-title v-text="item.text"></v-list-item-title>
            </v-list-item-content>
          </v-list-item>
        </v-list-item-group>
      </v-list>
    </v-navigation-drawer>
    <v-app-bar app>
      <v-app-bar-nav-icon @click.stop="drawer = !drawer"></v-app-bar-nav-icon>
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
    drawer: null,
    item: 1,
    items: [
      {text: "Real-Time", icon: "mdi-clock"},
      {text: "Audience", icon: "mdi-account"},
      {text: "Conversions", icon: "mdi-flag"},
    ],
  }),
  computed: {
    auth(){
      return this.$store.state.auth;
    },
  },
};
</script>
