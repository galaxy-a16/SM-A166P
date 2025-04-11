.class public Lcom/android/server/audio/AudioService$MediaVolumeStreamState;
.super Lcom/android/server/audio/AudioService$VolumeStreamState;
.source "AudioService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .locals 1

    .line 17884
    iput-object p1, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v0, 0x0

    .line 17885
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$VolumeStreamState-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$MediaVolumeStreamState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public applyDeviceVolume_syncVSS(I)V
    .locals 2

    .line 17921
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 17924
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPreventOverheatState()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 17926
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setLimitedVolumeForOverheat()V

    .line 17930
    :cond_0
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    if-eqz v0, :cond_1

    .line 17931
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17932
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmExt(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioServiceExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/audio/AudioServiceExt;->getVolumeMonitorService()Lcom/samsung/android/server/audio/VolumeMonitorService;

    move-result-object v0

    .line 17933
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndexDividedBy10(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAvrcpAbsVolSupported(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    .line 17932
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setDeviceVolumeForBluetooth(IZ)V

    :cond_1
    return-void
.end method

.method public final isA2dpDevice(I)Z
    .locals 0

    .line 17939
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isBleDevice(I)Z
    .locals 0

    .line 17943
    sget-object p0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_BLE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setIndex(IILjava/lang/String;Z)Z
    .locals 4

    .line 17890
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->isA2dpDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 17891
    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->isBleDevice(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService;->isBluetoothDualModeActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "setA2dpDeviceVolume"

    .line 17892
    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "onSetA2dpSinkConnectionState"

    .line 17893
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "enforceBluetoothSafeMediaVolume"

    .line 17894
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 17897
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->updateIndividualA2dpVolumes(I)V

    .line 17900
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundDoseHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundDoseHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/audio/SoundDoseHelper;->getSafeDeviceMediaVolumeIndex(I)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 17901
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundDoseHelper(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/SoundDoseHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundDoseHelper;->setSafeMediaVolumeStateForBlueTooth(I)V

    .line 17902
    sget-object v0, Lcom/android/server/audio/AudioService;->sVolumeLogger:Lcom/android/server/utils/EventLogger;

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " disable safe index  volIdx:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 17907
    :cond_2
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMuteMediaByVibrateOrSilentMode(Lcom/android/server/audio/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17908
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmRingerMode(Lcom/android/server/audio/AudioService;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    if-ne p2, v1, :cond_3

    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-le p1, v0, :cond_3

    const-string/jumbo v0, "muteMediaStreamOfSpeaker"

    .line 17910
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17911
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmSavedSpeakerMediaIndex(Lcom/android/server/audio/AudioService;I)V

    .line 17912
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$MediaVolumeStreamState;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSavedSpeakerMediaIndex(Lcom/android/server/audio/AudioService;)I

    move-result v1

    const-string/jumbo v2, "speaker_media_index"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setIntValue(Ljava/lang/String;I)V

    .line 17916
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method
