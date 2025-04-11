.class public final Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# instance fields
.field public data:Landroid/os/HidlMemory;

.field public header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    return-void
.end method


# virtual methods
.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    .line 355
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x30

    add-long v7, p3, v0

    .line 358
    :try_start_0
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getFieldHandle(J)J

    move-result-wide v3

    .line 359
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    move-object v2, p1

    .line 357
    invoke-virtual/range {v2 .. v8}, Landroid/os/HwParcel;->readEmbeddedHidlMemory(JJJ)Landroid/os/HidlMemory;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 362
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x58

    .line 328
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 329
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 318
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".header = "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .data = "

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 323
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 391
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x30

    add-long/2addr p2, v0

    .line 392
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->data:Landroid/os/HidlMemory;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putHidlMemory(JLandroid/os/HidlMemory;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 367
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 368
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
