.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->f$0:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->f$0:Landroid/os/IBinder;

    check-cast p1, Landroid/service/voice/ISandboxedDetectionService;

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection;->$r8$lambda$xGbZqzf8EoPp_J1mf7bpjYLcFno(Landroid/os/IBinder;Landroid/service/voice/ISandboxedDetectionService;)V

    return-void
.end method
