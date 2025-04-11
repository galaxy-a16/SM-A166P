.class public abstract Lcom/android/server/pm/VerificationUtils;
.super Ljava/lang/Object;
.source "VerificationUtils.java"


# direct methods
.method public static broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PACKAGE_VERIFIED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "application/vnd.android.package-archive"

    .line 109
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "android.content.pm.extra.VERIFICATION_ID"

    .line 111
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.content.pm.extra.VERIFICATION_RESULT"

    .line 112
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string p0, "android.content.pm.extra.VERIFICATION_ROOT_HASH"

    .line 114
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p0, "android.content.pm.extra.DATA_LOADER_TYPE"

    .line 116
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.permission.PACKAGE_VERIFICATION_AGENT"

    .line 118
    invoke-virtual {p6, v0, p5, p0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J
    .locals 5

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "streaming_verifier_timeout"

    const-wide/16 v1, 0xbb8

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 102
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultVerificationTimeout(Landroid/content/Context;)J
    .locals 5

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "verifier_timeout"

    const-wide/16 v1, 0x2710

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 88
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVerificationTimeout(Landroid/content/Context;Z)J
    .locals 0

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultStreamingVerificationTimeout(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/VerificationUtils;->getDefaultVerificationTimeout(Landroid/content/Context;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getVerificationTimeoutSamsung(Landroid/content/Context;Z)J
    .locals 2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    return-wide v0

    .line 71
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "verifier_timeout_samsung"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    const-wide/16 v0, 0x7530

    .line 73
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 9

    .line 142
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->getVerifyingSession()Lcom/android/server/pm/VerifyingSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v1, v0, Lcom/android/server/pm/VerifyingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 151
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    :goto_1
    move v4, p2

    if-eqz p4, :cond_3

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    .line 156
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getDataLoaderType()I

    move-result v6

    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v8, p4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move v2, p0

    move-object v3, v1

    .line 154
    invoke-static/range {v2 .. v8}, Lcom/android/server/pm/VerificationUtils;->broadcastPackageVerified(ILandroid/net/Uri;ILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;)V

    .line 160
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result p2

    const-string v2, "PackageManager"

    if-eqz p2, :cond_4

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Continuing with installation of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 163
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 164
    invoke-static {v2, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_5

    const/16 p3, -0x16

    .line 166
    invoke-virtual {v0, p3, p2}, Lcom/android/server/pm/VerifyingSession;->setReturnCode(ILjava/lang/String;)V

    :cond_5
    :goto_2
    if-eqz p4, :cond_6

    .line 171
    invoke-virtual {p1}, Lcom/android/server/pm/PackageVerificationState;->areAllVerificationsComplete()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 172
    iget-object p1, p4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    const-wide/32 p1, 0x40000

    const-string/jumbo p3, "verification"

    .line 175
    invoke-static {p1, p2, p3, p0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    if-eqz v0, :cond_7

    .line 178
    invoke-virtual {v0}, Lcom/android/server/pm/VerifyingSession;->handleVerificationFinished()V

    :cond_7
    return-void
.end method

.method public static processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    .line 134
    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v1, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)V

    .line 135
    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const-string v0, "Install not allowed"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method public static processVerificationResponseOnTimeout(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;Lcom/android/server/pm/PackageManagerService;)V
    .locals 2

    .line 126
    iget v0, p2, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v1, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponseOnTimeout(II)V

    .line 127
    iget p2, p2, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    const-string v0, "Verification timed out"

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/pm/VerificationUtils;->processVerificationResponse(ILcom/android/server/pm/PackageVerificationState;ILjava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method
