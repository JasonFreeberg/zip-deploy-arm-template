# RunFromPackage-ARM-template

Run with `source script.sh`.

## Notes
- Initial ARM template taken from this doc: https://docs.microsoft.com/en-us/azure/app-service/quickstart-arm-template?pivots=platform-linux
- RFP extension

  ```json
  "resources": [
    {
      "apiVersion": "2019-08-01",
      "type": "extensions",
      "name": "zipdeploy",
      "dependsOn": [
        "[resourceId('Microsoft.Web/sites', variables('functionAppName'))]"
      ],
      "properties": {
        "packageUri": "https://foo.blob.core.windows.net/FunctionApp.zip"
      }
    }
  ]
  ```
