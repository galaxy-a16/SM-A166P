.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;

    check-cast p1, Lcom/android/server/voiceinteraction/DetectorSession;

    invoke-static {p0, p1}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;->$r8$lambda$iFHigFr64OWIjWuOVNg_CTj7ut8(Lcom/android/server/voiceinteraction/HotwordDetectionConnection$ServiceConnection;Lcom/android/server/voiceinteraction/DetectorSession;)V

    return-void
.end method
