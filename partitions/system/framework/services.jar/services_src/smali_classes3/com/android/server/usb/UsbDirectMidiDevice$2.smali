.class public Lcom/android/server/usb/UsbDirectMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbDirectMidiDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;

.field public final synthetic val$portStartFinal:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    iput p7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "UsbDirectMidiDevice"

    .line 429
    new-instance v2, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v2}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 430
    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {v3}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    .line 431
    iget v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbMidiPacketConverter;->createDecoders(I)V

    .line 433
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2, v4, v5}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 434
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v4}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    new-array v4, v4, [B

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_d

    .line 437
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v0, "input thread interrupted"

    .line 438
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 441
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 442
    invoke-virtual {v2, v7}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v0, "Cannot queue request"

    .line 443
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 446
    :cond_1
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v8

    if-nez v8, :cond_2

    const-string v0, "Response is null"

    .line 448
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2
    if-eq v2, v8, :cond_3

    const-string v7, "Skipping response"

    .line 452
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 459
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-lez v7, :cond_c

    const-string v8, "Input before conversion "

    const/4 v12, 0x0

    .line 463
    invoke-static {v8, v4, v12, v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(Ljava/lang/String;[BII)V

    .line 468
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 469
    invoke-virtual {v3, v4, v7}, Lcom/android/server/usb/UsbMidiPacketConverter;->decodeMidiPackets([BI)V

    :cond_4
    move v13, v12

    .line 473
    :goto_1
    iget v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$cableCountFinal:I

    if-ge v13, v8, :cond_c

    .line 475
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 478
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v8, v4, v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v8

    goto :goto_2

    .line 482
    :cond_5
    invoke-virtual {v3, v13}, Lcom/android/server/usb/UsbMidiPacketConverter;->pullDecodedMidiPackets(I)[B

    move-result-object v8

    :goto_2
    move-object v11, v8

    .line 487
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Input "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " after conversion "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    array-length v9, v11

    invoke-static {v8, v11, v12, v9}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(Ljava/lang/String;[BII)V

    .line 492
    array-length v8, v11

    if-nez v8, :cond_7

    move/from16 v17, v12

    move/from16 v16, v13

    :cond_6
    const/4 v9, 0x1

    goto :goto_3

    .line 496
    :cond_7
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    if-eqz v8, :cond_b

    iget v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portStartFinal:I

    add-int v10, v9, v13

    aget-object v10, v8, v10

    if-nez v10, :cond_8

    goto :goto_4

    :cond_8
    add-int/2addr v9, v13

    .line 503
    aget-object v8, v8, v9

    const/4 v10, 0x0

    array-length v9, v11

    move/from16 v16, v9

    move-object v9, v11

    move-object v5, v11

    move/from16 v11, v16

    move/from16 v17, v12

    move/from16 v16, v13

    move-wide v12, v14

    invoke-virtual/range {v8 .. v13}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 510
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;

    move-result-object v8

    if-eqz v8, :cond_6

    array-length v8, v5

    const/4 v9, 0x1

    if-le v8, v9, :cond_a

    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 513
    invoke-static {v8, v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$misChannelVoiceMessage(Lcom/android/server/usb/UsbDirectMidiDevice;[B)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 514
    :cond_9
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    :cond_a
    :goto_3
    add-int/lit8 v13, v16, 0x1

    move/from16 v12, v17

    goto/16 :goto_1

    :cond_b
    :goto_4
    move/from16 v17, v12

    const/4 v9, 0x1

    const-string/jumbo v5, "outputReceivers is null"

    .line 499
    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, v17

    goto/16 :goto_0

    :cond_c
    const/4 v9, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "input thread: "

    .line 522
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_1
    const-string/jumbo v0, "reader thread exiting"

    .line 520
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    :cond_d
    :goto_5
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    const-string v0, "input thread exit"

    .line 526
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 524
    :goto_6
    invoke-virtual {v2}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 525
    throw v0
.end method
