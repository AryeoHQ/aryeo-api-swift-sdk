# UnconfirmedAppointment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | The ID of the appointment. | 
**title** | **String** | The title of the appointment. | [optional] 
**description** | **String** | The multi-line description of the appointment. | [optional] 
**order** | [**Order**](Order.md) |  | [optional] 
**users** | [User] | Users attached to the appointment. | [optional] 
**preferenceType** | **String** | The type of preferred scheduling information provided by a customer to aid in scheduling this appointment. | [optional] 
**preferredStartAt** | **Date** | A preferred date and time (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment&#39;s preference type is TIME.  | [optional] 
**preferredStartAtDay** | **Date** | A preferred date (ISO 8601 format) for when the appointment could start. Only returned if unconfirmed appointment&#39;s preference type is TIME_OF_DAY.  | [optional] 
**preferredStartAtTimeOfDay** | **String** | A preferred time of day for when the appointment could start. Only returned if unconfirmed appointment&#39;s preference type is TIME_OF_DAY.  | [optional] 
**duration** | **Int** | The estimated length of the appointment in minutes, if available. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


