.class public final Lcom/samsung/android/authnrservice/service/SemAuthnrService;
.super Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;
.source "SemAuthnrService.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/authnrservice/manager/ISemAuthnrService$Stub;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public deleteFile(Ljava/lang/String;)Z
    .locals 2

    .line 158
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v1, "df denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->deleteFile(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 162
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteFile failed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getDrkKeyHandle()[B
    .locals 2

    .line 136
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v1, "gdkh denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getDrkKeyHandle()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDrkKeyHandle failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SAS"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 169
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v1, "gf denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getFiles failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 212
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v1, "gmfp denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->getMatchedFilePaths(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getMatchedFilePaths failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()I
    .locals 2

    .line 52
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v1, "gv denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "version :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SAS"

    invoke-static {v1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getWrappedObject([B)[B
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "gwo denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getWrappedObject([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWrappedObject failed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public initialize(Landroid/os/ParcelFileDescriptor;JJ)Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string p2, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string p3, "i denied"

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "initialize not supported"

    const-string p2, "SAS"

    .line 64
    invoke-static {p2, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-eq p0, p3, :cond_0

    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "failed to close"

    .line 70
    invoke-static {p2, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public initializeDrk()Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v2, "id denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->initialize(Landroid/content/Context;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeDrk failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SAS"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public initializePreloadedTa(I)Z
    .locals 2

    const-string/jumbo p1, "public boolean initializePreloadedTa(int trustedAppType) throws RemoteException"

    const-string v0, "SAS"

    .line 223
    invoke-static {v0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string v1, "ipt denied"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "initializePreloadedTa not supported"

    .line 225
    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public initializeWithPreloadedTa()Z
    .locals 2

    .line 180
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "iwpt denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SAS"

    const-string v0, "initializeWithPreloadedTa not supported"

    .line 181
    invoke-static {p0, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public process([B)[B
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v0, "p denied"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SAS"

    const-string/jumbo p1, "process not supported"

    .line 86
    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public processPreloadedTa(I[B)[B
    .locals 1

    const-string/jumbo p1, "processPreloadedTa(int trustedAppType, byte[] data) throws RemoteException"

    const-string p2, "SAS"

    .line 239
    invoke-static {p2, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v0, "ppt denied"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "processPreloadedTa not supported"

    .line 241
    invoke-static {p2, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public processWithPreloadedTa([BLjava/lang/String;)[B
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo p2, "pwpt denied"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SAS"

    const-string/jumbo p1, "processWithPreloadedTa not supported"

    .line 195
    invoke-static {p0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 201
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "rf denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FileOperation;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "readFile failed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public setChallenge([B)Z
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v2, "sc denied"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->getInstance(Landroid/content/Context;)Lcom/samsung/android/authnrservice/service/FingerprintOperation;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/authnrservice/service/FingerprintOperation;->setChallenge([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setChallenge failed : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public terminate()Z
    .locals 2

    .line 78
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "t denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SAS"

    const-string/jumbo v0, "terminate not supported"

    .line 79
    invoke-static {p0, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public terminateDrk()Z
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "td denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/DrkOperation;->getInstance()Lcom/samsung/android/authnrservice/service/DrkOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/authnrservice/service/DrkOperation;->terminate()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "terminateDrk failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SAS"

    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public terminatePreloadedTa(I)Z
    .locals 2

    const-string/jumbo p1, "public boolean terminatePreloadedTa(int trustedAppType) throws RemoteException"

    const-string v0, "SAS"

    .line 231
    invoke-static {v0, p1}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "tpt denied"

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "terminatePreloadedTa not supported"

    .line 233
    invoke-static {v0, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public terminateWithPreloadedTa()Z
    .locals 2

    .line 187
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "twpt denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "SAS"

    const-string/jumbo v0, "terminateWithPreloadedTa not supported"

    .line 188
    invoke-static {p0, v0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public writeFile([BLjava/lang/String;)Z
    .locals 2

    .line 147
    iget-object p0, p0, Lcom/samsung/android/authnrservice/service/SemAuthnrService;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.permission.REQUEST_AUTHNR_SERVICE"

    const-string/jumbo v1, "wf denied"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_0
    invoke-static {}, Lcom/samsung/android/authnrservice/service/FileOperation;->getInstance()Lcom/samsung/android/authnrservice/service/FileOperation;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/authnrservice/service/FileOperation;->writeFile([BLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "writeFile failed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SAS"

    invoke-static {p1, p0}, Lcom/samsung/android/authnrservice/service/AuthnrLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
