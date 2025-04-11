.class public Lcom/samsung/android/server/audio/ScreenSharingHelper$1;
.super Ljava/lang/Object;
.source "ScreenSharingHelper.java"

# interfaces
.implements Landroid/hardware/display/SemDeviceStatusListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onDlnaConnectionStatusChanged(Z)V
    .locals 0

    return-void
.end method

.method public onQosLevelChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenSharingStatusChanged(I)V
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmIsSupportDisplayVolumeControl(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fputmScreenSharingStateResumed(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$msetMirroringPolicyParameter(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmIsSupportDisplayVolumeControl(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fputmScreenSharingStateResumed(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1, v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$msetMirroringPolicyParameter(Lcom/samsung/android/server/audio/ScreenSharingHelper;Z)V

    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "l_smart_view_split_sound_enable="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmMediaFocusControl(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/audio/MediaFocusControl;->checkSplitSoundAudioFocus()V

    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onScreenSharingStatusChanged, status = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$1;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmScreenSharingStateResumed(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.ScreenSharingHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
