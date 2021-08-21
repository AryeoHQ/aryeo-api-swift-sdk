# Appointment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The ID of the appointment. | 
**status** | **String** | The status of the appointment. | [optional] 
**title** | **String** | The title of the appointment. | [optional] 
**description** | **String** | The multi-line description of the appointment. | [optional] 
**startAt** | **Date** | The date and time (ISO 8601 format) when the appointment is set to start. | [optional] 
**endAt** | **Date** | The date and time (ISO 8601 format) when the appointment is set to end. | [optional] 
**duration** | **Int** | The length of the appointment in minutes. | [optional] 
**order** | [**Order**](Order.md) |  | [optional] 
**users** | [User] | Users attached to the appointment. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


