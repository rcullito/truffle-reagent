(ns starter.core
    (:require [reagent.core :as r]))

(defn app []
  [:div "Welcome to the Truffle Reagent Box "])

(defn ^:dev/before-load stop []
  (js/console.log "Stopping..."))

(defn ^:dev/after-load start []
  (js/console.log "Starting...")
  (r/render [app]
            (.getElementById js/document "app")))

(defn ^:export init []
  (start))
