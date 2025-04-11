.class public Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$2;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "KnoxGuardSeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 614
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 2

    .line 617
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRemoteLockState data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkRemoteLockPassword([B)I
    .locals 1

    .line 622
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkRemoteLockPassword"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance p0, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 626
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->getIntResult(Lcom/samsung/android/knoxguard/service/KgErrWrapper;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->setFailureCount(I)V

    .line 629
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetmFailureCount()I

    move-result p0

    if-nez p0, :cond_0

    .line 630
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[HOTP] pin is correct!"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {}, Lcom/samsung/android/knoxguard/service/utils/Utils;->setKGSystemProperty()V

    .line 633
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$smunregisterUserPresentReceiver()V

    .line 634
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$smunlockCompleted()V

    goto :goto_0

    .line 636
    :cond_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[HOTP] pin is wrong!!! current failure count ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetmFailureCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 637
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$smsetRemoteLockToLockscreen(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 640
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 641
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[HOTP] verify pin error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :goto_0
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService;->-$$Nest$sfgetmFailureCount()I

    move-result p0

    return p0
.end method
