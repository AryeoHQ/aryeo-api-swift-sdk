# AppointmentsAPI

All URIs are relative to *https://api.aryeo.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAppointments**](AppointmentsAPI.md#getappointments) | **GET** /appointments | List all appointments.
[**getAvailableDates**](AppointmentsAPI.md#getavailabledates) | **GET** /scheduling/available-dates | Fetch available days for a user or group
[**getAvailableTimeslots**](AppointmentsAPI.md#getavailabletimeslots) | **GET** /scheduling/available-timeslots | Fetch available timeslots for a user or group
[**getUnconfirmedAppointments**](AppointmentsAPI.md#getunconfirmedappointments) | **GET** /unconfirmed-appointments | List all unconfirmed appointments.
[**getUnconfirmedAppointmentsId**](AppointmentsAPI.md#getunconfirmedappointmentsid) | **GET** /unconfirmed-appointments/{unconfirmed_appointment_id} | Retrieve an unconfirmed appointment.
[**putAppointmentsAppointmentIdCancel**](AppointmentsAPI.md#putappointmentsappointmentidcancel) | **PUT** /appointments/{appointment_id}/cancel | Cancel an appointment.
[**putAppointmentsAppointmentIdReschedule**](AppointmentsAPI.md#putappointmentsappointmentidreschedule) | **PUT** /appointments/{appointment_id}/reschedule | Reschedule an appointment.


# **getAppointments**
```swift
    open class func getAppointments(include: String? = nil, filterTense: FilterTense_getAppointments? = nil, filterStartAtGte: Date? = nil, filterStartAtLte: Date? = nil, filterUserIds: [UUID]? = nil, sort: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: AppointmentCollection?, _ error: Error?) -> Void)
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
let filterUserIds = [123] // [UUID] | The IDs of users whose appointments will be retrieved. UUID Version 4. (optional)
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
 **filterUserIds** | [**[UUID]**](UUID.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] 
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

# **getAvailableDates**
```swift
    open class func getAvailableDates(filterUserIds: [UUID]? = nil, filterAppointmentId: String? = nil, filterStartAt: Date? = nil, filterEndAt: Date? = nil, filterTimeframe: [String]? = nil, duration: Int? = nil, interval: Int? = nil, timezone: String? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: CalendarDayCollection?, _ error: Error?) -> Void)
```

Fetch available days for a user or group

Fetch available calendar days for scheduling or rescheduling an appointment. Availability can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through weeks, months, etc.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let filterUserIds = [123] // [UUID] | The IDs of users whose availability will be retrieved. UUID Version 4. (optional)
let filterAppointmentId = "filterAppointmentId_example" // String | Appointment ID used to fetch availability for an existing order (optional)
let filterStartAt = Date() // Date | Returns availability after start_at (optional)
let filterEndAt = Date() // Date | Returns availability before end_at (optional)
let filterTimeframe = ["inner_example"] // [String] | Returns availability for a specific timeframe. Used instead of start_at & end_at (optional)
let duration = 987 // Int | Duration of the event to schedule. Required if appointment_id isn't specified (optional)
let interval = 987 // Int | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified (optional)
let timezone = "timezone_example" // String | Timezone of the client. Localizes the available days (optional)
let page = 987 // Int | The requested page of results (optional)
let perPage = 987 // Int | The number of results per page. Only applies when using a date range (optional)

// Fetch available days for a user or group
AppointmentsAPI.getAvailableDates(filterUserIds: filterUserIds, filterAppointmentId: filterAppointmentId, filterStartAt: filterStartAt, filterEndAt: filterEndAt, filterTimeframe: filterTimeframe, duration: duration, interval: interval, timezone: timezone, page: page, perPage: perPage) { (response, error) in
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
 **filterUserIds** | [**[UUID]**](UUID.md) | The IDs of users whose availability will be retrieved. UUID Version 4. | [optional] 
 **filterAppointmentId** | **String** | Appointment ID used to fetch availability for an existing order | [optional] 
 **filterStartAt** | **Date** | Returns availability after start_at | [optional] 
 **filterEndAt** | **Date** | Returns availability before end_at | [optional] 
 **filterTimeframe** | [**[String]**](String.md) | Returns availability for a specific timeframe. Used instead of start_at &amp; end_at | [optional] 
 **duration** | **Int** | Duration of the event to schedule. Required if appointment_id isn&#39;t specified | [optional] 
 **interval** | **Int** | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn&#39;t specified | [optional] 
 **timezone** | **String** | Timezone of the client. Localizes the available days | [optional] 
 **page** | **Int** | The requested page of results | [optional] 
 **perPage** | **Int** | The number of results per page. Only applies when using a date range | [optional] 

### Return type

[**CalendarDayCollection**](CalendarDayCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableTimeslots**
```swift
    open class func getAvailableTimeslots(filterUserIds: [UUID]? = nil, filterAppointmentId: String? = nil, filterStartAt: Date? = nil, filterEndAt: Date? = nil, filterTimeframe: [String]? = nil, duration: Int? = nil, interval: Int? = nil, page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: TimeslotCollection?, _ error: Error?) -> Void)
```

Fetch available timeslots for a user or group

Fetch available timeslots for scheduling or rescheduling an appointment. Timeslots can be retrieved using a specific start & end date range, or using a timeframe. When using a timeframe, the page parameter can be used to flip through days or weeks.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let filterUserIds = [123] // [UUID] | The IDs of users whose appointments will be retrieved. UUID Version 4. (optional)
let filterAppointmentId = "filterAppointmentId_example" // String | Appointment ID used to fetch availability for an existing order (optional)
let filterStartAt = Date() // Date | Returns availability after start_at (optional)
let filterEndAt = Date() // Date | Returns availability before end_at (optional)
let filterTimeframe = ["inner_example"] // [String] | Returns availability for a specific timeframe. Used instead of start_at & end_at (optional)
let duration = 987 // Int | Duration of the event to schedule. Required if appointment_id isn't specified (optional)
let interval = 987 // Int | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn't specified (optional)
let page = 987 // Int | The requested page of results (optional)
let perPage = 987 // Int | The number of results per page. Only applies when using a date range (optional)

// Fetch available timeslots for a user or group
AppointmentsAPI.getAvailableTimeslots(filterUserIds: filterUserIds, filterAppointmentId: filterAppointmentId, filterStartAt: filterStartAt, filterEndAt: filterEndAt, filterTimeframe: filterTimeframe, duration: duration, interval: interval, page: page, perPage: perPage) { (response, error) in
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
 **filterUserIds** | [**[UUID]**](UUID.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] 
 **filterAppointmentId** | **String** | Appointment ID used to fetch availability for an existing order | [optional] 
 **filterStartAt** | **Date** | Returns availability after start_at | [optional] 
 **filterEndAt** | **Date** | Returns availability before end_at | [optional] 
 **filterTimeframe** | [**[String]**](String.md) | Returns availability for a specific timeframe. Used instead of start_at &amp; end_at | [optional] 
 **duration** | **Int** | Duration of the event to schedule. Required if appointment_id isn&#39;t specified | [optional] 
 **interval** | **Int** | Interval of bookable timeslots starting at x minutes on the hour . Required if appointment_id isn&#39;t specified | [optional] 
 **page** | **Int** | The requested page of results | [optional] 
 **perPage** | **Int** | The number of results per page. Only applies when using a date range | [optional] 

### Return type

[**TimeslotCollection**](TimeslotCollection.md)

### Authorization

[Token](../README.md#Token)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnconfirmedAppointments**
```swift
    open class func getUnconfirmedAppointments(include: String? = nil, filterUserIds: [UUID]? = nil, sort: String? = nil, perPage: String? = nil, page: String? = nil, completion: @escaping (_ data: UnconfirmedAppointmentCollection?, _ error: Error?) -> Void)
```

List all unconfirmed appointments.

List all unconfirmed appointments. These are appointments that have not been scheduled.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)
let filterUserIds = [123] // [UUID] | The IDs of users whose appointments will be retrieved. UUID Version 4. (optional)
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
 **filterUserIds** | [**[UUID]**](UUID.md) | The IDs of users whose appointments will be retrieved. UUID Version 4. | [optional] 
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

# **getUnconfirmedAppointmentsId**
```swift
    open class func getUnconfirmedAppointmentsId(unconfirmedAppointmentId: UUID, include: String? = nil, completion: @escaping (_ data: UnconfirmedAppointmentResource?, _ error: Error?) -> Void)
```

Retrieve an unconfirmed appointment.

Retrieves the details of an unconfirmed appointment with the given ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import Aryeo

let unconfirmedAppointmentId = 987 // UUID | The ID of an appointment.
let include = "include_example" // String | Comma separated list of optional data to include in the response. (optional)

// Retrieve an unconfirmed appointment.
AppointmentsAPI.getUnconfirmedAppointmentsId(unconfirmedAppointmentId: unconfirmedAppointmentId, include: include) { (response, error) in
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
 **unconfirmedAppointmentId** | [**UUID**](.md) | The ID of an appointment. | 
 **include** | **String** | Comma separated list of optional data to include in the response. | [optional] 

### Return type

[**UnconfirmedAppointmentResource**](UnconfirmedAppointmentResource.md)

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
 - **Accept**: application/json

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

