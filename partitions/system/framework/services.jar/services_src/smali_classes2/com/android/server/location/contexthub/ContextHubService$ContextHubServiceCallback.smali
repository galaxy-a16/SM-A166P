.class public Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;
.super Ljava/lang/Object;
.source "ContextHubService.java"

# interfaces
.implements Lcom/android/server/location/contexthub/IContextHubWrapper$ICallback;


# instance fields
.field public final mContextHubId:I

.field public final synthetic this$0:Lcom/android/server/location/contexthub/ContextHubService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/ContextHubService;I)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    return-void
.end method


# virtual methods
.method public handleContextHubEvent(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleHubEventCallback(Lcom/android/server/location/contexthub/ContextHubService;II)V

    return-void
.end method

.method public handleNanoappAbort(JI)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleAppAbortCallback(Lcom/android/server/location/contexthub/ContextHubService;IJI)V

    return-void
.end method

.method public handleNanoappInfo(Ljava/util/List;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleQueryAppsCallback(Lcom/android/server/location/contexthub/ContextHubService;ILjava/util/List;)V

    return-void
.end method

.method public handleNanoappMessage(SLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleClientMessageCallback(Lcom/android/server/location/contexthub/ContextHubService;ISLandroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public handleServiceRestart()V
    .locals 2

    const-string v0, "Starting Context Hub Service restart"

    const-string v1, "ContextHubService"

    .line 213
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$minitExistingCallbacks(Lcom/android/server/location/contexthub/ContextHubService;)V

    .line 215
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mresetSettings(Lcom/android/server/location/contexthub/ContextHubService;)V

    const-string p0, "Finished Context Hub Service restart"

    .line 216
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleTransactionResult(IZ)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->this$0:Lcom/android/server/location/contexthub/ContextHubService;

    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubService$ContextHubServiceCallback;->mContextHubId:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubService;->-$$Nest$mhandleTransactionResultCallback(Lcom/android/server/location/contexthub/ContextHubService;IIZ)V

    return-void
.end method
