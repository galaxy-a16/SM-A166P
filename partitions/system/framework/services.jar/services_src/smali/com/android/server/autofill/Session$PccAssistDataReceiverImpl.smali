.class public final Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    return-void
.end method


# virtual methods
.method public maybeRequestFieldClassificationFromServiceLocked()V
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClassificationState(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$ClassificationState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmPendingFieldClassificationRequest(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationRequest;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "AutofillSession"

    const-string v0, "Received AssistData without pending classification request"

    .line 856
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmService(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteFieldClassificationServiceLocked()Lcom/android/server/autofill/RemoteFieldClassificationService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 864
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 866
    iget-object v2, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClassificationState(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$ClassificationState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$fgetmPendingFieldClassificationRequest(Lcom/android/server/autofill/Session$ClassificationState;)Landroid/service/assist/classification/FieldClassificationRequest;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/autofill/RemoteFieldClassificationService;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;)V

    .line 870
    :cond_1
    iget-object p0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p0}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClassificationState(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$ClassificationState;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$monFieldClassificationRequestSent(Lcom/android/server/autofill/Session$ClassificationState;)V

    return-void
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 5

    const-string/jumbo v0, "structure"

    .line 876
    const-class v1, Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    if-nez v0, :cond_0

    const-string p0, "AutofillSession"

    const-string p1, "No assist structure for pcc detection - app might have crashed providing it"

    .line 879
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, "receiverExtras"

    .line 884
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "AutofillSession"

    const-string p1, "No receiver extras for pcc detection - app might have crashed providing it"

    .line 886
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "android.service.autofill.extra.REQUEST_ID"

    .line 891
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 893
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillSession"

    .line 894
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New structure for PCC Detection: requestId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_2
    iget-object p1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object p1, p1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x0

    .line 905
    :try_start_0
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 912
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 914
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 915
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    iget-object v4, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget v4, v4, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 918
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v1}, Lcom/android/server/autofill/Session;->-$$Nest$fgetmClassificationState(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/Session$ClassificationState;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/server/autofill/Session$ClassificationState;->-$$Nest$monAssistStructureReceived(Lcom/android/server/autofill/Session$ClassificationState;Landroid/app/assist/AssistStructure;)V

    .line 920
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->maybeRequestFieldClassificationFromServiceLocked()V

    .line 921
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 907
    iget-object p0, p0, Lcom/android/server/autofill/Session$PccAssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string v3, "Exception lazy loading assist structure for %s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 908
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    aput-object v2, v4, v0

    .line 907
    invoke-static {p0, v2, v3, v4}, Lcom/android/server/autofill/Session;->-$$Nest$mwtf(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 909
    monitor-exit p1

    return-void

    .line 921
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    return-void
.end method
