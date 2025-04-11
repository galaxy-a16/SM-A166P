.class public abstract Lcom/android/server/credentials/PendingIntentResultHandler;
.super Ljava/lang/Object;
.source "PendingIntentResultHandler.java"


# direct methods
.method public static extractCreateCredentialException(Landroid/content/Intent;)Landroid/credentials/CreateCredentialException;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

    .line 85
    const-class v1, Landroid/credentials/CreateCredentialException;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/CreateCredentialException;

    return-object p0
.end method

.method public static extractCreateCredentialResponse(Landroid/content/Intent;)Landroid/credentials/CreateCredentialResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

    .line 63
    const-class v1, Landroid/credentials/CreateCredentialResponse;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/CreateCredentialResponse;

    return-object p0
.end method

.method public static extractGetCredentialException(Landroid/content/Intent;)Landroid/credentials/GetCredentialException;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    .line 97
    const-class v1, Landroid/credentials/GetCredentialException;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/GetCredentialException;

    return-object p0
.end method

.method public static extractGetCredentialResponse(Landroid/content/Intent;)Landroid/credentials/GetCredentialResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    .line 73
    const-class v1, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/credentials/GetCredentialResponse;

    return-object p0
.end method

.method public static extractResponseContent(Landroid/content/Intent;)Landroid/service/credentials/BeginGetCredentialResponse;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

    .line 53
    const-class v1, Landroid/service/credentials/BeginGetCredentialResponse;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/credentials/BeginGetCredentialResponse;

    return-object p0
.end method

.method public static isCancelledResponse(Landroid/credentials/ui/ProviderPendingIntentResponse;)Z
    .locals 0

    .line 45
    invoke-virtual {p0}, Landroid/credentials/ui/ProviderPendingIntentResponse;->getResultCode()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidResponse(Landroid/credentials/ui/ProviderPendingIntentResponse;)Z
    .locals 1

    .line 39
    invoke-virtual {p0}, Landroid/credentials/ui/ProviderPendingIntentResponse;->getResultCode()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
