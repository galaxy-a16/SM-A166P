.class public final Lcom/android/server/credentials/ProviderCreateSession;
.super Lcom/android/server/credentials/ProviderSession;
.source "ProviderCreateSession.java"


# instance fields
.field public final mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

.field public mProviderException:Landroid/credentials/CreateCredentialException;

.field public final mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;


# direct methods
.method public static bridge synthetic -$$Nest$msetUpFillInIntent(Lcom/android/server/credentials/ProviderCreateSession;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->setUpFillInIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/credentials/ProviderSession;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;Landroid/content/ComponentName;ILcom/android/server/credentials/RemoteCredentialService;)V

    iput-object p7, p0, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->PENDING:Lcom/android/server/credentials/ProviderSession$Status;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderSession;->setStatus(Lcom/android/server/credentials/ProviderSession$Status;)V

    new-instance p1, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-static {p8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;-><init>(Lcom/android/server/credentials/ProviderCreateSession;Landroid/content/ComponentName;)V

    iput-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    return-void
.end method

.method public static constructQueryPhaseRequest(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/BeginCreateCredentialRequest;
    .locals 0

    if-eqz p3, :cond_0

    new-instance p3, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-direct {p3, p0, p1, p2}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;)V

    return-object p3

    :cond_0
    new-instance p2, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-direct {p2, p0, p1}, Landroid/service/credentials/BeginCreateCredentialRequest;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p2
.end method

.method public static createNewSession(Landroid/content/Context;ILandroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/CreateRequestSession;Lcom/android/server/credentials/RemoteCredentialService;)Lcom/android/server/credentials/ProviderCreateSession;
    .locals 10

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getCapabilities()Ljava/util/List;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/CreateCredentialRequest;

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->isSystemProvider()Z

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/credentials/ProviderCreateSession;->createProviderRequest(Ljava/util/List;Landroid/credentials/CreateCredentialRequest;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/CreateCredentialRequest;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v9, Lcom/android/server/credentials/ProviderCreateSession;

    iget-object v0, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v0, Landroid/credentials/CreateCredentialRequest;

    invoke-virtual {v0}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v1, Landroid/credentials/CreateCredentialRequest;

    invoke-virtual {v1}, Landroid/credentials/CreateCredentialRequest;->getCandidateQueryData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p3, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    iget-object v4, p3, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    check-cast v4, Landroid/credentials/CreateCredentialRequest;

    invoke-virtual {v4}, Landroid/credentials/CreateCredentialRequest;->alwaysSendAppInfoToProvider()Z

    move-result v4

    invoke-static {v0, v1, v2, v4}, Lcom/android/server/credentials/ProviderCreateSession;->constructQueryPhaseRequest(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/BeginCreateCredentialRequest;

    move-result-object v6

    iget-object v8, p3, Lcom/android/server/credentials/RequestSession;->mHybridService:Ljava/lang/String;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/credentials/ProviderCreateSession;-><init>(Landroid/content/Context;Landroid/credentials/CredentialProviderInfo;Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;ILcom/android/server/credentials/RemoteCredentialService;Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/service/credentials/CreateCredentialRequest;Ljava/lang/String;)V

    return-object v9

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create provider session for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/credentials/CredentialProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProviderCreateSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createProviderRequest(Ljava/util/List;Landroid/credentials/CreateCredentialRequest;Landroid/service/credentials/CallingAppInfo;Z)Landroid/service/credentials/CreateCredentialRequest;
    .locals 2

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->isSystemProviderRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Landroid/service/credentials/CreateCredentialRequest;

    invoke-virtual {p1}, Landroid/credentials/CreateCredentialRequest;->getCredentialData()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/service/credentials/CreateCredentialRequest;-><init>(Landroid/service/credentials/CallingAppInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final invokeCallbackOnInternalInvalidState()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    const-string v1, "android.credentials.CreateCredentialException.TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokeSession()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->startCandidateMetrics()V

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->setCallback(Lcom/android/server/credentials/RemoteCredentialService$ProviderCallbacks;)V

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mRemoteCredentialService:Lcom/android/server/credentials/RemoteCredentialService;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderRequest:Ljava/lang/Object;

    check-cast p0, Landroid/service/credentials/BeginCreateCredentialRequest;

    invoke-virtual {v0, p0}, Lcom/android/server/credentials/RemoteCredentialService;->onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;)V

    :cond_0
    return-void
.end method

.method public final maybeGetPendingIntentException(Landroid/credentials/ui/ProviderPendingIntentResponse;)Landroid/credentials/CreateCredentialException;
    .locals 2

    const-string p0, "android.credentials.CreateCredentialException.TYPE_NO_CREATE_OPTIONS"

    const-string v0, "ProviderCreateSession"

    if-nez p1, :cond_0

    const-string/jumbo p1, "pendingIntentResponse is null"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/credentials/CreateCredentialException;

    invoke-direct {p1, p0}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isValidResponse(Landroid/credentials/ui/ProviderPendingIntentResponse;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/credentials/ui/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractCreateCredentialException(Landroid/content/Intent;)Landroid/credentials/CreateCredentialException;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p1, "Pending intent contains provider exception"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->isCancelledResponse(Landroid/credentials/ui/ProviderPendingIntentResponse;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p0, Landroid/credentials/CreateCredentialException;

    const-string p1, "android.credentials.CreateCredentialException.TYPE_USER_CANCELED"

    invoke-direct {p0, p1}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p1, Landroid/credentials/CreateCredentialException;

    invoke-direct {p1, p0}, Landroid/credentials/CreateCredentialException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public final onCreateEntrySelected(Landroid/credentials/ui/ProviderPendingIntentResponse;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->maybeGetPendingIntentException(Landroid/credentials/ui/ProviderPendingIntentResponse;)Landroid/credentials/CreateCredentialException;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/credentials/CreateCredentialException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->invokeCallbackWithError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/credentials/ui/ProviderPendingIntentResponse;->getResultData()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/credentials/PendingIntentResultHandler;->extractCreateCredentialResponse(Landroid/content/Intent;)Landroid/credentials/CreateCredentialResponse;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, p1}, Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;->onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "ProviderCreateSession"

    const-string/jumbo v0, "onSaveEntrySelected - no response or error found in pending intent response"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    :goto_0
    return-void
.end method

.method public onProviderCancellable(Landroid/os/ICancellationSignal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderCancellationSignal:Landroid/os/ICancellationSignal;

    return-void
.end method

.method public onProviderResponseFailure(ILjava/lang/Exception;)V
    .locals 0

    instance-of p1, p2, Landroid/credentials/CreateCredentialException;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/credentials/CreateCredentialException;

    iput-object p2, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderException:Landroid/credentials/CreateCredentialException;

    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    invoke-virtual {p2}, Landroid/credentials/CreateCredentialException;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateFrameworkException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateExceptionStatus(Z)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->CANCELED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object p2, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    return-void
.end method

.method public onProviderResponseSuccess(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote provider responded with a valid response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProviderCreateSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->onSetInitialRemoteResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)V

    return-void
.end method

.method public bridge synthetic onProviderResponseSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/credentials/BeginCreateCredentialResponse;

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->onProviderResponseSuccess(Landroid/service/credentials/BeginCreateCredentialResponse;)V

    return-void
.end method

.method public onProviderServiceDied(Lcom/android/server/credentials/RemoteCredentialService;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/credentials/RemoteCredentialService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SERVICE_DEAD:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    goto :goto_0

    :cond_0
    const-string p0, "ProviderCreateSession"

    const-string p1, "Component names different in onProviderServiceDied - this should not happen"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onRemoteEntrySelected(Landroid/credentials/ui/ProviderPendingIntentResponse;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/ui/ProviderPendingIntentResponse;)V

    return-void
.end method

.method public final onSetInitialRemoteResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getCreateEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/credentials/BeginCreateCredentialResponse;->getRemoteCreateEntry()Landroid/service/credentials/RemoteEntry;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->addResponseContent(Ljava/util/List;Landroid/service/credentials/RemoteEntry;)V

    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->isEmptyResponse(Landroid/service/credentials/BeginCreateCredentialResponse;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    check-cast v2, Lcom/android/server/credentials/RequestSession;

    iget-object v2, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->EMPTY_RESPONSE:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderSessionMetric:Lcom/android/server/credentials/metrics/ProviderSessionMetric;

    iget-object v2, p0, Lcom/android/server/credentials/ProviderSession;->mCallbacks:Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;

    check-cast v2, Lcom/android/server/credentials/RequestSession;

    iget-object v2, v2, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    invoke-virtual {v2}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->getInitialPhaseMetric()Lcom/android/server/credentials/metrics/InitialPhaseMetric;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/credentials/metrics/ProviderSessionMetric;->collectCandidateEntryMetrics(Ljava/lang/Object;ZLcom/android/server/credentials/metrics/InitialPhaseMetric;)V

    sget-object p1, Lcom/android/server/credentials/ProviderSession$Status;->SAVE_ENTRIES_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    sget-object v0, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/credentials/ProviderSession;->updateStatusAndInvokeCallback(Lcom/android/server/credentials/ProviderSession$Status;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V

    :goto_0
    return-void
.end method

.method public onUiEntrySelected(Ljava/lang/String;Ljava/lang/String;Landroid/credentials/ui/ProviderPendingIntentResponse;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "save_entry_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ProviderCreateSession"

    if-nez v0, :cond_2

    const-string/jumbo v0, "remote_entry_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Unsupported entry type selected"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->getRemoteEntry(Ljava/lang/String;)Landroid/service/credentials/RemoteEntry;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "Unexpected remote entry key"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onRemoteEntrySelected(Landroid/credentials/ui/ProviderPendingIntentResponse;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->getCreateEntry(Ljava/lang/String;)Landroid/service/credentials/CreateEntry;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "Unexpected save entry key"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->invokeCallbackOnInternalInvalidState()V

    return-void

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/credentials/ProviderCreateSession;->onCreateEntrySelected(Landroid/credentials/ui/ProviderPendingIntentResponse;)V

    :goto_0
    return-void
.end method

.method public prepareUiData()Landroid/credentials/ui/CreateCredentialProviderData;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderSession;->getStatus()Lcom/android/server/credentials/ProviderSession$Status;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/credentials/ProviderSession;->isUiInvokingStatus(Lcom/android/server/credentials/ProviderSession$Status;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No data for UI from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/credentials/ProviderSession;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ProviderCreateSession"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/credentials/ProviderSession;->mProviderResponse:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-static {v0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->-$$Nest$misEmptyResponse(Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mProviderResponseDataHandler:Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession$ProviderResponseDataHandler;->toCreateCredentialProviderData()Landroid/credentials/ui/CreateCredentialProviderData;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public bridge synthetic prepareUiData()Landroid/credentials/ui/ProviderData;
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/credentials/ProviderCreateSession;->prepareUiData()Landroid/credentials/ui/CreateCredentialProviderData;

    move-result-object p0

    return-object p0
.end method

.method public final setUpFillInIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

    iget-object p0, p0, Lcom/android/server/credentials/ProviderCreateSession;->mCompleteRequest:Landroid/service/credentials/CreateCredentialRequest;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
