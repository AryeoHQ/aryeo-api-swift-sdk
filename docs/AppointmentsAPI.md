# AppointmentsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAppointments**](AppointmentsAPI.md#getappointments) | **GET** /appointments | List all appointments.
[**getUnconfirmedAppointments**](AppointmentsAPI.md#getunconfirmedappointments) | **GET** /unconfirmed-appointments | List all unconfirmed appointments.
[**putAppointmentsAppointmentIdCancel**](AppointmentsAPI.md#putappointmentsappointmentidcancel) | **PUT** /appointments/{appointment_id}/cancel | Cancel an appointment.
[**putAppointmentsAppointmentIdReschedule**](AppointmentsAPI.md#putappointmentsappointmentidreschedule) | **PUT** /appointments/{appointment_id}/reschedule | Reschedule an appointment.


# **getAppointments**
```swift
    open class func getAppointments(include: String? = nil, filterTense: FilterTense_getAppointments? = nil, filterStartAtGte: Date? = nil, filterStartAtLte: Date? = nil, filterUserIds: Array? = nil, sort: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: AppointmentCollection?, _ error: Error?) -> Void)
```

List all appointments.

List all appointments. By default, returns a list of appointments that have been scheduled and have not been canceled

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)
let filterTense = "filterTense_example" // String | Return appointments that are upcoming or in the past. (optional)
let filterStartAtGte = Date() // Date | Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date. (optional)
let filterStartAtLte = Date() // Date | Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date. (optional)
let filterUserIds = TODO // Array | The IDs of users whose appointments will be retrieved. UUID Version 4. (optional)
let sort = "sort_example" // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)

// List all appointments.
AppointmentsAPI.getAppointments(include: include, filterTense: filterTense, filterStartAtGte: filterStartAtGte, filterStartAtLte: filterStartAtLte, filterUserIds: filterUserIds, sort: sort, perPage: perPage, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 
 **filterTense** | **String** | Return appointments that are upcoming or in the past. | [optional] 
 **filterStartAtGte** | **Date** | Return appointments where the start_at field is greater than or equal to this value. Effectively, appointments that start after this date. | [optional] 
 **filterStartAtLte** | **Date** | Return appointments where the start_at field is less than or equal to this value. Effectively, appointments that start before this date. | [optional] 
 **filterUserIds** | [**Array**](.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] 
 **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;. | [optional] 
 **perPage** | **String** | The number of items per page. Defaults to 25. | [optional] 
 **page** | **String** | The requested page. Defaults to 1. | [optional] 

### Return type

[**AppointmentCollection**](AppointmentCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnconfirmedAppointments**
```swift
    open class func getUnconfirmedAppointments(include: String? = nil, filterUserIds: Array? = nil, sort: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: UnconfirmedAppointmentCollection?, _ error: Error?) -> Void)
```

List all unconfirmed appointments.

List all unconfirmed appointments. These are appointments that have not been scheduled. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)
let filterUserIds = TODO // Array | The IDs of users whose appointments will be retrieved. UUID Version 4. (optional)
let sort = "sort_example" // String | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to `-start_at`. (optional)
let perPage = "perPage_example" // String | The number of items per page. Defaults to 25. (optional)
let page = "page_example" // String | The requested page. Defaults to 1. (optional)

// List all unconfirmed appointments.
AppointmentsAPI.getUnconfirmedAppointments(include: include, filterUserIds: filterUserIds, sort: sort, perPage: perPage, page: page) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 
 **filterUserIds** | [**Array**](.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] 
 **sort** | **String** | Comma separated list of fields used for sorting. Placing a minus symbol in front of a field name sorts in descending order. Defaults to &#x60;-start_at&#x60;. | [optional] 
 **perPage** | **String** | The number of items per page. Defaults to 25. | [optional] 
 **page** | **String** | The requested page. Defaults to 1. | [optional] 

### Return type

[**UnconfirmedAppointmentCollection**](UnconfirmedAppointmentCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAppointmentsAppointmentIdCancel**
```swift
    open class func putAppointmentsAppointmentIdCancel(appointmentId: UUID, appointmentCancelPutPayload: AppointmentCancelPutPayload? = nil, completion: @escaping (_ data: AppointmentResource?, _ error: Error?) -> Void)
```

Cancel an appointment.

Cancel an appointment. The appointments order's customer can be optionally notified of this change. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let appointmentId = 987 // UUID | The ID of an appointment.
let appointmentCancelPutPayload = AppointmentCancelPutPayload(notifyCustomer: false) // AppointmentCancelPutPayload |  (optional)

// Cancel an appointment.
AppointmentsAPI.putAppointmentsAppointmentIdCancel(appointmentId: appointmentId, appointmentCancelPutPayload: appointmentCancelPutPayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | [**UUID**](.md) | The ID of an appointment. | 
 **appointmentCancelPutPayload** | [**AppointmentCancelPutPayload**](AppointmentCancelPutPayload.md) |  | [optional] 

### Return type

[**AppointmentResource**](AppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, application/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putAppointmentsAppointmentIdReschedule**
```swift
    open class func putAppointmentsAppointmentIdReschedule(appointmentId: UUID, appointmentReschedulePutPayload: AppointmentReschedulePutPayload? = nil, completion: @escaping (_ data: AppointmentResource?, _ error: Error?) -> Void)
```

Reschedule an appointment.

Reschedule an appointment. The appointments order's customer can be optionally notified of this change. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let appointmentId = 987 // UUID | The ID of an appointment.
let appointmentReschedulePutPayload = AppointmentReschedulePutPayload(startAt: Date(), endAt: Date(), notifyCustomer: false) // AppointmentReschedulePutPayload |  (optional)

// Reschedule an appointment.
AppointmentsAPI.putAppointmentsAppointmentIdReschedule(appointmentId: appointmentId, appointmentReschedulePutPayload: appointmentReschedulePutPayload) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appointmentId** | [**UUID**](.md) | The ID of an appointment. | 
 **appointmentReschedulePutPayload** | [**AppointmentReschedulePutPayload**](AppointmentReschedulePutPayload.md) |  | [optional] 

### Return type

[**AppointmentResource**](AppointmentResource.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

