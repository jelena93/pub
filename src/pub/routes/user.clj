(ns pub.routes.user
  (:require [compojure.core :refer :all]
            [selmer.parser :refer [render-file]]
            [pub.models.db :as db]
            [struct.core :as st]
            [buddy.auth :refer [authenticated?]]
            [bcrypt-clj.auth :as bcrypt]
            [liberator.core :refer [defresource]]
            [liberator.representation :refer [ring-response as-response]]
            [clojure.data.json :as json]
            [ring.util.response :refer [redirect]]))

(def user-schema
  {:username [st/required st/string]
   :password [st/required st/string]})

(defn user-validaton? [params]
  (st/valid? {:username (:username params)
              :password (:password params)}))

(defn authorized-admin? [session]
  (and (authenticated? session)
       (="admin" (:role (:identity session)))))

(defn same-user? [params session]
  (= (:id params)
     (str (:id (:identity session)))))

(defn update-user-pass-in-db [params session]
  (->(update-in params [:password] bcrypt/crypt-password)
     (db/update-user)))

(defn update-user-in-db [params session]
  (db/update-user (assoc params :id (:id (:identity session)))))

(defn get-user-page [{:keys [params session]}]
  (cond
    (not= (authenticated? session))
    (redirect "/login")
    (not (same-user? params session))
    (redirect "/")
    :else
    (render-file "templates/user.html" {:title (str "User " (:username params))
                                        :logged (:identity session)
                                        :user (first (db/find-user params))})))

(defresource edit-user [{:keys [params session]}]
  :allowed-methods [:put]
  :available-media-types ["application/json"]
  :malformed? (fn [context] (user-validaton? params))
  :handle-malformed "All fields are required"
  :new? false
  :respond-with-entity? true
  :authorized? (authenticated? session)
  :put!  (fn [_] (update-user-in-db params session))
  :handle-ok (fn [ctx] (ring-response (assoc-in (as-response (json/write-str "User successfully edited") ctx)
                                        [:session :identity] (first (db/find-user params))))))

(defresource change-user-pass [{:keys [params session]}]
  :allowed-methods [:put]
  :available-media-types ["application/json"]
  :malformed? (fn [context] (empty? (:password params)))
  :handle-malformed "Please provide a new password"
  :new? false
  :respond-with-entity? true
  :authorized? (authenticated? session)
  :put!  (fn [_] (update-user-pass-in-db (assoc params :id (:id (:identity session))) session))
  :handle-ok (fn [ctx] (ring-response (assoc-in (as-response (json/write-str "Password successfully edited") ctx)
                                        [:session :identity] (first (db/find-user (select-keys (:identity session) [:id])))))))


(defroutes user-routes
  (PUT "/user" request (edit-user request))
  (PUT "/pass" request (change-user-pass request))
  (GET "/user/:id" request (get-user-page request)))

