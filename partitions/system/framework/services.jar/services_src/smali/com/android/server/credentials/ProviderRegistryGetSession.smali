.class public Lcom/android/server/credentials/ProviderRegistryGetSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "ProviderRegistryGetSession.java"


# static fields
.field static final CREDENTIAL_ENTRY_KEY:Ljava/lang/String; = "credential_key"


# instance fields
.field public final mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

.field public final mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

.field mCredentialEntries:Ljava/util/List;

.field public final mCredentialProviderPackageName:Ljava/lang/String;

.field public final mElementKeys:Ljava/util/Set;

.field public final mUiCredentialEntries:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$PUZ9a4i9ep9dFRY8el13azF27yI(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/ProviderRegistryGetSession;->lambda$prepareUiData$0(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x8FBSJgiT7LhUVyokmNpIpmYOgY(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/credentials/ProviderRegistryGetSession;->lambda$invokeSession$1(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)V
    .locals 7

    .line 120
    new-instance v4, Landroid/content/ComponentName;

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p3

    move v5, p2

    .line 120
    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    .line 101
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    .line 123
    invoke-static {p2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->forUser(I)Lcom/android/server/credentials/CredentialDescriptionRegistry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

    .line 124
    iput-object p4, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 125
    iput-object p5, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialProviderPackageName:Ljava/lang/String;

    .line 126
    new-instance p1, Ljava/util/HashSet;

    .line 127
    invoke-virtual {p6}, Landroid/credentials/CredentialOption;->getCredentialRetrievalData()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "android.credentials.GetCredentialOption.SUPPORTED_ELEMENT_KEYS"

    .line 128
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mElementKeys:Ljava/util/Set;

    .line 129
    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mStatus:Lcom/android/server/credentials/ProviderSession$Status;

    return-void
.end method

.method public static createNewSession(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)Lcom/android/server/credentials/ProviderRegistryGetSession;
    .locals 8

    .line 74
    new-instance v7, Lcom/android/server/credentials/ProviderRegistryGetSession;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderRegistryGetSession;-><init>(Landroid/content/Context;ILcom/android/server/credentials/GetRequestSession;Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/credentials/CredentialOption;)V

    return-object v7
.end method

.method public static synthetic lambda$invokeSession$1(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;
    .locals 0

    .line 272
    iget-object p0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mCredentialEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$prepareUiData$0(Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;)Ljava/util/stream/Stream;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mCredentialEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public invokeSession()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    .line 266
    iget-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialDescriptionRegistry:Lcom/android/server/credentials/CredentialDescriptionRegistry;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialProviderPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mElementKeys:Ljava/util/Set;

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/CredentialDescriptionRegistry;->getFilteredResultForProvider(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    .line 269
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 273
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialEntries:Ljava/util/List;

    .line 274
    sget-object v0, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REGISTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCredentialEntries:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/util/List;)V

    return-void
.end method

.method public maybeGetPendingIntentException(Landroid/credentials/ui/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 285
    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isValidResponse(Landroid/credentials/ui/ProviderPendingIntentResponse;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-virtual {p1}, Landroid/credentials/ui/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractGetCredentialException(Landroid/content/Intent;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p0, "ProviderRegistryGetSession"

    const-string v0, "Pending intent contains provider exception"

    .line 289
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    return-object p0

    .line 292
    :cond_2
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isCancelledResponse(Landroid/credentials/ui/ProviderPendingIntentResponse;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 293
    new-instance p0, Landroid/credentials/GetCredentialException;

    const-string p1, "android.credentials.GetCredentialException.TYPE_USER_CANCELED"

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 295
    :cond_3
    new-instance p0, Landroid/credentials/GetCredentialException;

    const-string p1, "android.credentials.GetCredentialException.TYPE_NO_CREDENTIAL"

    invoke-direct {p0, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final onCredentialEntrySelected(Landroid/service/credentials/CredentialEntry;Landroid/credentials/ui/ProviderPendingIntentResponse;)V
    .locals 0

    if-eqz p2, :cond_2

    .line 219
    invoke-virtual {p0, p2}, Lcom/android/server/credentials/ProviderRegistryGetSession;->maybeGetPendingIntentException(Landroid/credentials/ui/ProviderPendingIntentResponse;)Landroid/credentials/GetCredentialException;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getType()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p1}, Landroid/credentials/GetCredentialException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p2, p1}, Lcom/android/server/credentials/ProviderSession;->invokeCallbackWithError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 230
    :cond_0
    invoke-virtual {p2}, Landroid/credentials/ui/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    .line 229
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractGetCredentialResponse(Landroid/content/Intent;)Landroid/credentials/GetCredentialResponse;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 232
    iget-object p2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    if-eqz p2, :cond_1

    .line 233
    check-cast p2, Lcom/android/server/credentials/GetRequestSession;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/credentials/GetRequestSession;->onFinalResponseReceived(Landroid/content/ComponentName;Landroid/credentials/GetCredentialResponse;)V

    :cond_1
    return-void

    :cond_2
    const-string p0, "ProviderRegistryGetSession"

    const-string p1, "CredentialEntry does not have a credential or a pending intent result"

    .line 239
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProviderResponseFailure(ILjava/lang/Exception;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderRegistryGetSession;->onProviderResponseSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onProviderResponseSuccess(Ljava/util/Set;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/ui/ProviderPendingIntentResponse;)V
    .locals 1

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "credential_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "ProviderRegistryGetSession"

    if-nez p1, :cond_0

    const-string p0, "Unsupported entry type selected"

    .line 211
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/credentials/CredentialEntry;

    if-nez p1, :cond_1

    const-string p0, "Unexpected credential entry key"

    .line 205
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/credentials/ProviderRegistryGetSession;->onCredentialEntrySelected(Landroid/service/credentials/CredentialEntry;Landroid/credentials/ui/ProviderPendingIntentResponse;)V

    :goto_0
    return-void
.end method

.method public final prepareUiCredentialEntries(Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/credentials/CredentialEntry;

    .line 156
    invoke-static {}, Lcom/android/server/credentials/ProviderSession;->generateUniqueId()Ljava/lang/String;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mUiCredentialEntries:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    new-instance v3, Landroid/credentials/ui/Entry;

    .line 159
    invoke-virtual {v1}, Landroid/service/credentials/CredentialEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderRegistryGetSession;->setUpFillInIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "credential_key"

    invoke-direct {v3, v5, v2, v1, v4}, Landroid/credentials/ui/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/slice/Slice;Landroid/content/Intent;)V

    .line 158
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public prepareUiData()Landroid/credentials/ui/ProviderData;
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProviderRegistryGetSession"

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No date for UI coming from: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-nez v0, :cond_1

    const-string/jumbo p0, "response is null when preparing ui data. This is strange."

    .line 182
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 185
    :cond_1
    new-instance v0, Landroid/credentials/ui/GetCredentialProviderData$Builder;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    .line 186
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 187
    invoke-virtual {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setActionChips(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setAuthenticationEntries(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 190
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/credentials/ProviderRegistryGetSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 194
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/credentials/ProviderRegistryGetSession;->prepareUiCredentialEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->setCredentialEntries(Ljava/util/List;)Landroid/credentials/ui/GetCredentialProviderData$Builder;

    move-result-object p0

    .line 195
    invoke-virtual {p0}, Landroid/credentials/ui/GetCredentialProviderData$Builder;->build()Landroid/credentials/ui/GetCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public final setUpFillInIntent()Landroid/content/Intent;
    .locals 3

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    new-instance v1, Landroid/service/credentials/GetCredentialRequest;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderRegistryGetSession;->mCallingAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/credentials/CredentialOption;

    .line 171
    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Landroid/service/credentials/GetCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/util/List;)V

    const-string p0, "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

    .line 167
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
