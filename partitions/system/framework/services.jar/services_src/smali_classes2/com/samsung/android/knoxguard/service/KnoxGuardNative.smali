.class public abstract Lcom/samsung/android/knoxguard/service/KnoxGuardNative;
.super Ljava/lang/Object;
.source "KnoxGuardNative.java"


# static fields
.field public static KGTA_FAILED:I = -0x3e8

.field public static KGTA_PARAM_DEFAULT:I = 0x0

.field public static TAG:Ljava/lang/String; = "KnoxGuardTANative"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static b2s([B)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 524
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static generateHotpDHRequestRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 369
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getClientDataRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 489
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getHotpChallengeRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 389
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGIDRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 493
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getKGPolicyRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 5

    .line 343
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->readData()I

    move-result v1

    .line 346
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 347
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readData failed error "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 350
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getPolicyRes()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-virtual {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getSignature()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    sget v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0

    .line 353
    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v1, "GetKG Policy : policy or signature  null "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static getLockActionRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 481
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getLockObjectRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 485
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getNonceRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 516
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 0

    .line 381
    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static getTAState()I
    .locals 2

    .line 80
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_FAILED:I

    return v0

    .line 84
    :cond_0
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    if-nez v1, :cond_1

    .line 85
    iget v1, v0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->result:I

    :cond_1
    return v1
.end method

.method public static getTAStateRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 339
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static lockScreenRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 9

    .line 434
    new-instance v8, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/knoxguard/service/KnoxGuardSeService$KGLockscreenInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    .line 435
    invoke-static {v8}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->serialize(Ljava/lang/Object;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 437
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v2, "lockScreen: empty actionName"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 441
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string v2, "lockScreen: empty serialzeObj"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 445
    :cond_1
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static provisionCert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 385
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p3

    invoke-static {v0, p0, p1, p2, p3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static resetRPMBRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 501
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static s2b(Ljava/lang/String;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 533
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 5

    const-string v0, "Serialize outstream failed IO exception"

    const-string v1, "Serialize failed IO exception"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    const/4 v2, 0x0

    .line 457
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 458
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :try_start_2
    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 460
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 466
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 473
    :catch_1
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v2

    goto :goto_4

    :catch_3
    move-exception p0

    move-object v4, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v4, v2

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v3, v2

    move-object v4, v3

    .line 463
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_1

    .line 466
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 468
    :catch_5
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    return-object v2

    :catchall_2
    move-exception p0

    :goto_4
    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_3

    .line 466
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_6

    .line 468
    :catch_6
    sget-object v2, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 471
    :try_start_8
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_7

    .line 473
    :catch_7
    sget-object v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_4
    :goto_7
    throw p0
.end method

.method public static setClientDataRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 2

    if-nez p0, :cond_0

    .line 510
    sget-object v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setClientData fail: empty input"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static native tz_generateHotpDhRequest(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getClientData(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getHotpChallenge(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGID(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getKGPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockAction(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getLockObject(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getNonce(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAInfo(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_getTAState(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_lockScreen(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_provisionCert(I[B[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_resetRPMB(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_setClientData(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static native tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.end method

.method public static unlockScreenRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 430
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_unlockScreen(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static userCheckingRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 505
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_userChecking(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCompleteTokenRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-nez p0, :cond_0

    .line 362
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyCompleteToken input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 365
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyCompleteToken(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHOTPPinRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-nez p0, :cond_0

    .line 394
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHotpPin fail, input null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 397
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPPin(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHOTPsecretRefactor(Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-nez p0, :cond_0

    .line 332
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "verifyHOTPsecret input string is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 335
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHOTPsecret(I[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static verifyHotpDHChallengeRefactor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyHotpDhChallenge(I[B[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    .line 374
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyHotpDHChallenge failed: input null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static verifyKgRotRefactor()Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    .line 497
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {v0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyKgRot(I)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static verifyPolicyRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    sget v1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyPolicy(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object v1

    if-nez v1, :cond_1

    .line 415
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyPolicy failed, empty return from TA"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 418
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    invoke-static {v2}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->b2s([B)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->getInstance()Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;

    move-result-object v3

    .line 421
    invoke-virtual {v3, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->saveData(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 422
    sget p1, Lcom/samsung/android/knoxguard/service/KnoxGuardNative$PolicyStorageManager;->SUCCESS:I

    if-eq p0, p1, :cond_2

    .line 423
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "store the policy to EFS failed ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    return-object v1

    .line 410
    :cond_3
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyPolicy failed, empty input"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static verifyRegistrationInfoRefactor(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knoxguard/service/KgErrWrapper;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    sget v0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->KGTA_PARAM_DEFAULT:I

    invoke-static {p0}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->s2b(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->tz_verifyRegistrationInfo(I[B[B)Lcom/samsung/android/knoxguard/service/KgErrWrapper;

    move-result-object p0

    return-object p0

    .line 402
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/knoxguard/service/KnoxGuardNative;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "verifyRegistrationInfo failed input null "

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
