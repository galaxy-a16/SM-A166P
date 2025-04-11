.class public final Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;
.super Landroid/os/Handler;
.source "KnoxCaptureInputFilter.java"


# instance fields
.field public activeScanInput:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/KnoxCaptureInputFilter;

.field public unicodeCodepoint:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    .line 164
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    .line 166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;-><init>(Lcom/android/server/KnoxCaptureInputFilter;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final convertNumpadToString(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 0

    .line 292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "\u0000"

    return-object p0

    :pswitch_0
    const-string p0, "9"

    return-object p0

    :pswitch_1
    const-string p0, "8"

    return-object p0

    :pswitch_2
    const-string p0, "7"

    return-object p0

    :pswitch_3
    const-string p0, "6"

    return-object p0

    :pswitch_4
    const-string p0, "5"

    return-object p0

    :pswitch_5
    const-string p0, "4"

    return-object p0

    :pswitch_6
    const-string p0, "3"

    return-object p0

    :pswitch_7
    const-string p0, "2"

    return-object p0

    :pswitch_8
    const-string p0, "1"

    return-object p0

    :pswitch_9
    const-string p0, "0"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAsciiControlChar(Landroid/view/KeyEvent;)[B
    .locals 4

    .line 309
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1c

    const/16 v3, 0x45

    if-eq p0, v3, :cond_1d

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    goto/16 :goto_0

    .line 310
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v2, [B

    aput-byte v2, p0, v1

    return-object p0

    .line 311
    :cond_0
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1

    new-array p0, v2, [B

    const/4 p1, 0x2

    aput-byte p1, p0, v1

    return-object p0

    .line 312
    :cond_1
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    new-array p0, v2, [B

    const/4 p1, 0x3

    aput-byte p1, p0, v1

    return-object p0

    .line 313
    :cond_2
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_3

    new-array p0, v2, [B

    const/4 p1, 0x4

    aput-byte p1, p0, v1

    return-object p0

    .line 314
    :cond_3
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_4

    new-array p0, v2, [B

    const/4 p1, 0x5

    aput-byte p1, p0, v1

    return-object p0

    .line 315
    :cond_4
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_5

    new-array p0, v2, [B

    const/4 p1, 0x6

    aput-byte p1, p0, v1

    return-object p0

    .line 316
    :cond_5
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_6

    new-array p0, v2, [B

    const/4 p1, 0x7

    aput-byte p1, p0, v1

    return-object p0

    .line 317
    :cond_6
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_7

    new-array p0, v2, [B

    const/16 p1, 0x8

    aput-byte p1, p0, v1

    return-object p0

    .line 318
    :cond_7
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_8

    new-array p0, v2, [B

    const/16 p1, 0x9

    aput-byte p1, p0, v1

    return-object p0

    .line 319
    :cond_8
    :pswitch_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_9

    new-array p0, v2, [B

    const/16 p1, 0xa

    aput-byte p1, p0, v1

    return-object p0

    .line 320
    :cond_9
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_a

    new-array p0, v2, [B

    const/16 p1, 0xb

    aput-byte p1, p0, v1

    return-object p0

    .line 321
    :cond_a
    :pswitch_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_b

    new-array p0, v2, [B

    const/16 p1, 0xc

    aput-byte p1, p0, v1

    return-object p0

    .line 322
    :cond_b
    :pswitch_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_c

    new-array p0, v2, [B

    aput-byte v0, p0, v1

    return-object p0

    .line 323
    :cond_c
    :pswitch_d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_d

    new-array p0, v2, [B

    const/16 p1, 0xe

    aput-byte p1, p0, v1

    return-object p0

    .line 324
    :cond_d
    :pswitch_e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_e

    new-array p0, v2, [B

    const/16 p1, 0xf

    aput-byte p1, p0, v1

    return-object p0

    .line 325
    :cond_e
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_f

    new-array p0, v2, [B

    const/16 p1, 0x10

    aput-byte p1, p0, v1

    return-object p0

    .line 326
    :cond_f
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_10

    new-array p0, v2, [B

    const/16 p1, 0x11

    aput-byte p1, p0, v1

    return-object p0

    .line 327
    :cond_10
    :pswitch_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_11

    new-array p0, v2, [B

    const/16 p1, 0x12

    aput-byte p1, p0, v1

    return-object p0

    .line 328
    :cond_11
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_12

    new-array p0, v2, [B

    const/16 p1, 0x13

    aput-byte p1, p0, v1

    return-object p0

    .line 329
    :cond_12
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_13

    new-array p0, v2, [B

    const/16 p1, 0x14

    aput-byte p1, p0, v1

    return-object p0

    .line 330
    :cond_13
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_14

    new-array p0, v2, [B

    const/16 p1, 0x15

    aput-byte p1, p0, v1

    return-object p0

    .line 331
    :cond_14
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_15

    new-array p0, v2, [B

    const/16 p1, 0x16

    aput-byte p1, p0, v1

    return-object p0

    .line 332
    :cond_15
    :pswitch_16
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_16

    new-array p0, v2, [B

    const/16 p1, 0x17

    aput-byte p1, p0, v1

    return-object p0

    .line 333
    :cond_16
    :pswitch_17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_17

    new-array p0, v2, [B

    const/16 p1, 0x18

    aput-byte p1, p0, v1

    return-object p0

    .line 334
    :cond_17
    :pswitch_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_18

    new-array p0, v2, [B

    const/16 p1, 0x19

    aput-byte p1, p0, v1

    return-object p0

    .line 335
    :cond_18
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_19

    new-array p0, v2, [B

    const/16 p1, 0x1a

    aput-byte p1, p0, v1

    return-object p0

    .line 336
    :cond_19
    :pswitch_1a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1a

    new-array p0, v2, [B

    const/16 p1, 0x1b

    aput-byte p1, p0, v1

    return-object p0

    .line 337
    :cond_1a
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1b

    new-array p0, v2, [B

    const/16 p1, 0x1c

    aput-byte p1, p0, v1

    return-object p0

    .line 338
    :cond_1b
    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1c

    new-array p0, v2, [B

    const/16 p1, 0x1d

    aput-byte p1, p0, v1

    return-object p0

    .line 339
    :cond_1c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_1d

    new-array p0, v2, [B

    const/16 p1, 0x1e

    aput-byte p1, p0, v1

    return-object p0

    .line 340
    :cond_1d
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_1e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p0

    if-eqz p0, :cond_1e

    new-array p0, v2, [B

    const/16 p1, 0x1f

    aput-byte p1, p0, v1

    return-object p0

    :cond_1e
    :goto_0
    new-array p0, v2, [B

    aput-byte v1, p0, v1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_1a
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public final getUnicodeChar(Ljava/lang/String;)[B
    .locals 5

    .line 347
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 348
    invoke-static {p0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 349
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getUnicodeChar codePointStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " codePoint: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " unicodeChars: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    array-length p0, v0

    new-array p0, p0, [B

    .line 355
    array-length p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    aget-char v3, v0, v1

    add-int/lit8 v4, v2, 0x1

    int-to-byte v3, v3

    .line 356
    aput-byte v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 361
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getUnicodeChar exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x353

    if-eq v0, v1, :cond_8

    const/16 p1, 0x354

    if-eq v0, p1, :cond_0

    goto/16 :goto_2

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScanEventHandler, END, activeScanDeviceId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-static {v1}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$fgetactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->processKeyEvent(Landroid/view/KeyEvent;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-byte v4, v1, v2

    .line 189
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 195
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 197
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    add-int/lit8 v4, v1, 0x1

    .line 198
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    move v1, v4

    goto :goto_1

    .line 200
    :cond_4
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 201
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScanEventHandler, END, scannedInput: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$fgetactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$mupdateBarcodeDataFromhw(Lcom/android/server/KnoxCaptureInputFilter;I[B)V

    .line 208
    :cond_6
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 209
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScanEventHandler, END, clearing active scan input"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_7
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 212
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->this$0:Lcom/android/server/KnoxCaptureInputFilter;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$fputactiveScanDeviceId(Lcom/android/server/KnoxCaptureInputFilter;I)V

    .line 213
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_a

    .line 214
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 173
    :cond_8
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanEventHandler, MSG_NEXT_KEY_EVENT, new key event"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_9
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->activeScanInput:Ljava/util/List;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    return-void
.end method

.method public final isAsciiControlCharacter(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 280
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x1d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x36

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x47

    if-eq p0, v0, :cond_1

    const/16 v0, 0x48

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x45

    if-ne p0, v0, :cond_2

    .line 287
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUnicodeCodepoint(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 273
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 v0, 0x90

    if-lt p0, v0, :cond_0

    const/16 v0, 0x99

    if-gt p0, v0, :cond_0

    .line 275
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final processKeyEvent(Landroid/view/KeyEvent;)[B
    .locals 8

    .line 224
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processKeyEvent event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 226
    invoke-static {v0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    .line 232
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->isUnicodeCodepoint(Landroid/view/KeyEvent;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 234
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, " processKeyEvent, unicode codepoint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->convertNumpadToString(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 237
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->getUnicodeChar(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 241
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->isAsciiControlCharacter(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->getAsciiControlChar(Landroid/view/KeyEvent;)[B

    move-result-object v2

    .line 245
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 246
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 247
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processKeyEvent, ascii ctrl char="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    .line 247
    invoke-virtual {v1, v0, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    :cond_5
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 253
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, " processKeyEvent, any other character"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    new-array v2, v3, [B

    .line 256
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, v2, v4

    :cond_7
    :goto_0
    if-eqz v3, :cond_9

    .line 260
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 261
    invoke-static {}, Lcom/android/server/KnoxCaptureInputFilter;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, " processKeyEvent, clear unicode codepoint buffer"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_8
    iget-object p1, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_9

    .line 264
    iget-object p0, p0, Lcom/android/server/KnoxCaptureInputFilter$ScanEventHandler;->unicodeCodepoint:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p0, v4, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_9
    return-object v2
.end method
