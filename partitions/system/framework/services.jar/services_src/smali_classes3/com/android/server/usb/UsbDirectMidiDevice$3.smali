.class public Lcom/android/server/usb/UsbDirectMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbDirectMidiDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "output thread: "

    const-string v2, "UsbDirectMidiDevice"

    .line 566
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 568
    new-instance v4, Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {v4}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    .line 570
    iget v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    invoke-virtual {v4, v5}, Lcom/android/server/usb/UsbMidiPacketConverter;->createEncoders(I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-nez v6, :cond_a

    .line 573
    iget-object v7, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-virtual {v7}, Lcom/android/internal/midi/MidiEventMultiScheduler;->waitNextEvent()Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "output thread closed"

    .line 575
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 578
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    move v9, v5

    .line 579
    :goto_1
    iget v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    if-ge v9, v10, :cond_3

    .line 581
    iget-object v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 582
    invoke-virtual {v10, v9}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    move-result-object v10

    .line 584
    invoke-virtual {v10, v7, v8}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v11

    check-cast v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    :goto_2
    if-eqz v11, :cond_2

    const-string v12, "Output before conversion "

    .line 587
    iget-object v13, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v14, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v12, v13, v5, v14}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(Ljava/lang/String;[BII)V

    .line 590
    iget-object v12, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v12}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 593
    iget-object v12, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-object v13, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v14, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v12, v13, v14}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v12

    .line 595
    array-length v13, v12

    invoke-virtual {v3, v12, v5, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    .line 598
    :cond_1
    iget-object v12, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v13, v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v4, v12, v13, v9}, Lcom/android/server/usb/UsbMidiPacketConverter;->encodeMidiPackets([BII)V

    .line 601
    :goto_3
    invoke-virtual {v10, v11}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 602
    invoke-virtual {v10, v7, v8}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v11

    check-cast v11, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 606
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v0, "output thread interrupted"

    .line 607
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 612
    :cond_4
    iget-object v7, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 613
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 614
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_4

    .line 617
    :cond_5
    invoke-virtual {v4}, Lcom/android/server/usb/UsbMidiPacketConverter;->pullEncodedMidiPackets()[B

    move-result-object v7

    :goto_4
    const-string v8, "Output after conversion "

    .line 621
    array-length v9, v7

    invoke-static {v8, v7, v5, v9}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$smlogByteArray(Ljava/lang/String;[BII)V

    move v14, v5

    .line 628
    :goto_5
    array-length v8, v7

    if-ge v14, v8, :cond_9

    if-nez v6, :cond_9

    .line 633
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v8

    array-length v9, v7

    sub-int/2addr v9, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v15

    const/4 v8, -0x1

    move v13, v5

    :goto_6
    if-gez v8, :cond_8

    const/16 v12, 0x14

    if-gt v13, v12, :cond_8

    .line 640
    iget-object v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    const/16 v16, 0x32

    move-object v10, v7

    move v11, v14

    move v5, v12

    move v12, v15

    move/from16 v17, v13

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v8

    add-int/lit8 v13, v17, 0x1

    .line 648
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v5, "output thread interrupted after send"

    .line 649
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    move v6, v5

    goto :goto_7

    :cond_6
    if-gez v8, :cond_7

    .line 654
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "retrying packet. retryCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v13, v5, :cond_7

    const-string v5, "Skipping packet because timeout"

    .line 657
    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v5, 0x0

    goto :goto_6

    .line 630
    :cond_8
    :goto_7
    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v5}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v14, v5

    const/4 v5, 0x0

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 666
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catch_1
    move-exception v0

    .line 664
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_8
    const-string/jumbo v0, "output thread exit"

    .line 668
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
