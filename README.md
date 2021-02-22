# Deploy ZIP with ARM template

This repo deploys a sample Node app to a Windows web app using an ARM template. The core piece is the "zipdeploy" extension shown below. Run with `source script.sh`.

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
      "packageUri": "https://foo.blob.net/your-app.zip"
    }
  }
]
```
