.class public final synthetic Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/voiceinteraction/DetectorSession;

.field public final synthetic f$1:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$2:Landroid/media/AudioFormat;

.field public final synthetic f$3:Landroid/os/PersistableBundle;

.field public final synthetic f$4:Landroid/os/ParcelFileDescriptor;

.field public final synthetic f$5:Ljava/io/InputStream;

.field public final synthetic f$6:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iput-object p2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$1:Landroid/os/ParcelFileDescriptor;

    iput-object p3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$2:Landroid/media/AudioFormat;

    iput-object p4, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$3:Landroid/os/PersistableBundle;

    iput-object p5, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$4:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$5:Ljava/io/InputStream;

    iput-object p7, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$6:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/voiceinteraction/DetectorSession;

    iget-object v1, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$1:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$2:Landroid/media/AudioFormat;

    iget-object v3, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$3:Landroid/os/PersistableBundle;

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$4:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$5:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/android/server/voiceinteraction/DetectorSession$$ExternalSyntheticLambda6;->f$6:Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;

    move-object v7, p1

    check-cast v7, Landroid/service/voice/ISandboxedDetectionService;

    invoke-static/range {v0 .. v7}, Lcom/android/server/voiceinteraction/DetectorSession;->$r8$lambda$IzbPwyTG1ewFzX67Q6TFAgEhlW8(Lcom/android/server/voiceinteraction/DetectorSession;Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;Landroid/service/voice/IMicrophoneHotwordDetectionVoiceInteractionCallback;Landroid/service/voice/ISandboxedDetectionService;)V

    return-void
.end method
