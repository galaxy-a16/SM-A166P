.class public Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "HotwordDetectionConnection.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;


# direct methods
.method public static synthetic $r8$lambda$DddV_sMdD1_Chr99DApXd82SJNs(I)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->lambda$sendResult$0(I)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$sendResult$0(I)I
    .locals 0

    .line 0
    return p0
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 3

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 1030
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v1, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1031
    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    .line 1032
    iget-object v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    new-instance v1, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    iget v2, v2, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mVoiceInteractionServiceUid:I

    invoke-direct {v1, p1, v2}, Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;-><init>(II)V

    iput-object v1, v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->mIdentity:Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;

    .line 1033
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$1;->this$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection;

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->-$$Nest$maddServiceUidForAudioPolicy(Lcom/android/server/voiceinteraction/HotwordDetectionConnection;I)V

    return-void
.end method
