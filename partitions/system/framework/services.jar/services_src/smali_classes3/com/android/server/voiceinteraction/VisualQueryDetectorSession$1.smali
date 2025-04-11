.class public Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;
.super Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;
.source "VisualQueryDetectorSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

.field public final synthetic val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-direct {p0}, Landroid/service/voice/IDetectorSessionVisualQueryDetectionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttentionGained()V
    .locals 4

    const-string v0, "BinderCallback#onAttentionGained"

    const-string v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionGained()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Error delivering attention gained event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Attention listener failed to switch to GAINED state."

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAttentionLost()V
    .locals 4

    const-string v0, "BinderCallback#onAttentionLost"

    const-string v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmAttentionListener(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;->onAttentionLost()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v2, "Error delivering attention lost event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const-string v2, "Attention listener failed to switch to LOST state."

    const/4 v3, 0x3

    invoke-direct {v0, v3, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "Fail to call onVisualQueryDetectionServiceFailure"

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onQueryDetected(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "BinderCallback#onQueryDetected"

    const-string v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmEgressingData(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Query should not be egressed within the unattention state."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance p1, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const/4 v0, 0x4

    const-string v1, "Cannot stream queries without attention signals."

    invoke-direct {p1, v0, v1}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {p0, p1}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryDetected(Ljava/lang/String;)V

    const-string p0, "Egressed from visual query detection process."

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onQueryFinished()V
    .locals 3

    const-string v0, "BinderCallback#onQueryFinished"

    const-string v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Query streaming state signal FINISHED is block since there is no active query being streamed."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const/4 v1, 0x4

    const-string v2, "Cannot send FINISHED signal with no query streamed."

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryFinished()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    return-void
.end method

.method public onQueryRejected()V
    .locals 3

    const-string v0, "BinderCallback#onQueryRejected"

    const-string v1, "VisualQueryDetectorSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    invoke-static {v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fgetmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Query streaming state signal REJECTED is block since there is no active query being streamed."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    new-instance v0, Landroid/service/voice/VisualQueryDetectionServiceFailure;

    const/4 v1, 0x4

    const-string v2, "Cannot send REJECTED signal with no query streamed."

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VisualQueryDetectionServiceFailure;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onVisualQueryDetectionServiceFailure(Landroid/service/voice/VisualQueryDetectionServiceFailure;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->val$callback:Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;

    invoke-interface {v0}, Landroid/service/voice/IVisualQueryDetectionVoiceInteractionCallback;->onQueryRejected()V

    iget-object p0, p0, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession$1;->this$0:Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;->-$$Nest$fputmQueryStreaming(Lcom/android/server/voiceinteraction/VisualQueryDetectorSession;Z)V

    return-void
.end method
