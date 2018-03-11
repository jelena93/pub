(ns pub.routes.reservation
  (:require [compojure.core :refer :all]
            [pub.models.db :as db]
            [buddy.auth :refer [authenticated?]]
            [liberator.core :refer [defresource]]
            [clojure.data.json :as json]
            [struct.core :as st]))

(defresource handle-reservation [{:keys [params session]}]
  :allowed-methods [:post :delete]
  :malformed? (fn [_] (empty? (:drink params)))
  :handle-malformed "Drink id cannot be empty"
  :authorized? (authenticated? session)
  :exists? (fn [_] (not (empty? (db/find-reservation (assoc params :user (:id (:identity session)))))))
  :handle-not-found (fn [_] (str "There is no drink with id: " (:drink params)))
  :respond-with-entity? true
  :post! (fn [_] (db/add-reservation (assoc params :user (:id (:identity session)))))
  :delete! (fn [_] (db/delete-reservation (assoc params :user (:id (:identity session)))))
  :handle-ok (fn [_] (json/write-str (count (db/find-reservation params))))
  :handle-created (fn [_] (json/write-str (count (db/find-reservation params))))
  :available-media-types ["application/json"])


(defroutes reservation-routes
  (POST "/reservation" request (handle-reservation request))
  (DELETE "/reservation" request (handle-reservation request)))
