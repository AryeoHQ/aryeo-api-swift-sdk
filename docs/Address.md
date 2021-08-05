# Address

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** | ID of the address. UUID Version 4. | 
**latitude** | **Double** | The geographic latitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol. | 
**longitude** | **Double** | The geographic longitude of some reference point of the location, specified in degrees and decimal parts. Positive numbers must not include the plus symbol. | 
**streetNumber** | **String** | The street number portion of a location&#39;s address. In some areas, the street number may contain non-numeric characters. This field can also contain extensions and modifiers to the street number, such as \&quot;1/2\&quot; or \&quot;-B\&quot;. | [optional] 
**streetName** | **String** | The street name portion of a location&#39;s address. | [optional] 
**unitNumber** | **String** | The number or portion of a larger building or complex. Examples are: \&quot;APT G\&quot;, \&quot;55\&quot;, etc. | [optional] 
**postalCode** | **String** | The postal code portion of a location&#39;s address. | [optional] 
**city** | **String** | The city of a location&#39;s address. | [optional] 
**cityRegion** | **String** | A sub-section or area of a defined city. Examples would be SoHo in New York, NY, Ironbound in Newark, NJ or Inside the Beltway. | [optional] 
**countyOrParish** | **String** | The County, Parish or other regional authority of the location. | [optional] 
**stateOrProvince** | **String** | The ISO 3166-2 subdivision code for the state or province of the location. For example, “MA” for Massachusetts, United States. | [optional] 
**stateOrProvinceRegion** | **String** | A sub-section or area of a defined state or province. Examples would be the Keys in FL or Hudson Valley in NY. | [optional] 
**country** | **String** | The ISO 3166-1 country code for this for the country of the location. | [optional] 
**countryRegion** | **String** | A sub-section or area of a defined country. Examples would be Napa Valley in the US, or the Amalfi Coast in Italy. | [optional] 
**unparsedAddress** | **String** | Unparsed text representation of the address.  | [optional] 
**unparsedAddressPartOne** | **String** | Unparsed text representation of the first part of the address, typically including the street number, street name, and unit number if applicable.   | [optional] 
**unparsedAddressPartTwo** | **String** | Unparsed text representation of the second part of the address, typically including the city, state or province, and postal code.   | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


