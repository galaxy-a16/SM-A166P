.class public Lcom/android/server/NandswapManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NandswapManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "received action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NandswapManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmNandBigData()Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$sfgetmNandBigData()Lcom/android/server/NandswapManager$NandSwapBigdataManager;

    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->-$$Nest$smuploadBigdataToHQM()V

    goto/16 :goto_3

    :cond_0
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez p2, :cond_5

    const-string p2, "android.intent.action.REBOOT"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string p2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "support ramExpandSwitch: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/NandswapManager;->SUPPORT_RAM_EXPAND_SWITCH:Z

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSize(Landroid/content/Context;)I

    move-result p0

    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizeList(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    if-ne p0, v1, :cond_2

    const-string/jumbo p0, "ram_expand_size was not set"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    goto :goto_0

    :cond_2
    move p0, v3

    :goto_0
    if-nez p2, :cond_3

    const-string/jumbo p0, "ram_expand_size_list was not set"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v2

    :cond_3
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    move-result p2

    if-nez p2, :cond_4

    const-string/jumbo p0, "zram backing_dev is not set"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v3

    :cond_4
    if-ne p0, v2, :cond_8

    new-instance p0, Ljava/io/File;

    const-string p2, "/data/per_boot/zram_swap"

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v4, 0x400

    div-long/2addr v1, v4

    div-long/2addr v1, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    long-to-int v3, v1

    goto :goto_1

    :catch_0
    :try_start_2
    const-string p0, "error on file length"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p1, v3}, Lcom/android/server/NandswapManager;->-$$Nest$smsetExpandSizeAndList(Landroid/content/Context;I)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSize(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_6

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smisBackingDevSet()Z

    move-result p0

    if-ne p0, v2, :cond_6

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetDefaultRamExpandSize()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/server/NandswapManager;->-$$Nest$smputRamExpandSize(Landroid/content/Context;I)V

    :cond_6
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSizePersistProp()I

    move-result p0

    if-eq p0, v1, :cond_7

    invoke-static {p1}, Lcom/android/server/NandswapManager;->-$$Nest$smgetRamExpandSize(Landroid/content/Context;)I

    move-result p1

    if-eq p0, p1, :cond_7

    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smclearClientsBigdataInfo()V

    const-string p0, "Ramplus Option is changed. clear bigdata\'s info."

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/server/NandswapManager;->-$$Nest$smsaveClientsBigdataInfoInReboot()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "intent exception msg : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method
