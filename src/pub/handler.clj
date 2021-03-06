(ns pub.handler
  (:require [compojure.core :refer [defroutes routes]]
            [ring.middleware.resource :refer [wrap-resource]]
            [ring.middleware.file-info :refer [wrap-file-info]]
            [ring.middleware.session :refer [wrap-session]]
            [ring.middleware.params :refer [wrap-params]]
            [hiccup.middleware :refer [wrap-base-url]]
            [liberator.dev :refer :all]
            [selmer.parser :refer :all]
            [compojure.handler :as handler]
            [compojure.route :as route]
            [buddy.auth.backends.session :refer [session-backend]]
            [buddy.auth.middleware :refer [wrap-authentication wrap-authorization]]
            [buddy.auth :refer [authenticated? throw-unauthorized]]
            [ring.util.response :refer (response redirect)]
            [pub.routes.auth :refer [auth-routes]]
            [pub.routes.home :refer [home-routes]]
            [pub.routes.type :refer [type-routes]]
            [pub.routes.drink :refer [drink-routes]]
            [pub.routes.user :refer [user-routes]]
            [pub.routes.reservation :refer [reservation-routes]]))

(def backend (session-backend))

(defn init []
  (System/setProperties
  (doto (java.util.Properties. (System/getProperties))
    (.put "com.mchange.v2.log.MLog" "com.mchange.v2.log.FallbackMLog")
    (.put "com.mchange.v2.log.FallbackMLog.DEFAULT_CUTOFF_LEVEL" "OFF")))
  (selmer.parser/cache-off!))

(defn destroy [])

(defroutes app-routes
  (route/resources "/")
  (route/not-found "Not Found"))

(def app
  (-> (routes auth-routes home-routes type-routes drink-routes reservation-routes user-routes app-routes)
      (handler/site)
      (wrap-authorization backend)
      (wrap-authentication backend)
      (wrap-base-url)
      (wrap-trace :header :ui)))
