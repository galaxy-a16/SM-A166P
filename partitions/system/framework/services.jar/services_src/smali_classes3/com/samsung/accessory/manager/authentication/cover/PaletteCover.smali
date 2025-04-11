.class public Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;
.super Ljava/lang/Object;
.source "PaletteCover.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCoverAttached:Z

.field public mPackage:B

.field public mUriData:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 30
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 33
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getSetURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessory_cover_uri"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDataChanged(Landroid/content/Context;[B)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 86
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 87
    :goto_0
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->getSetURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 88
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDataChanged:uriDataString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",uriSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isSettingEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 82
    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->getSetURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public disableSetting()V
    .locals 2

    .line 97
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->TAG:Ljava/lang/String;

    const-string v1, "disableSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 98
    iput-byte v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 100
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->onCoverStateChanged()V

    return-void
.end method

.method public isCoverAttached()Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    return p0
.end method

.method public final onCoverStateChanged()V
    .locals 8

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 49
    :goto_0
    sget-object v2, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "On cover state change : data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "accessoryType"

    const/16 v5, 0x12

    .line 51
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x0

    const-string v6, "URI"

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    :try_start_2
    const-string v1, "com.samsung.android.intent.action.ACCESSORY_COVER_ATTACH"

    .line 53
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    aget-byte v1, v1, v7

    iput-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach Target package type: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v4, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 57
    iput-boolean v7, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    goto :goto_1

    :cond_1
    const-string v4, "Palette cover detached"

    .line 59
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.ACCESSORY_COVER_DETACH"

    .line 61
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iput-boolean v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mCoverAttached:Z

    .line 64
    :goto_1
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    and-int/2addr v1, v7

    if-eqz v1, :cond_2

    const-string v1, "com.samsung.android.app.dressroom"

    .line 65
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    :cond_2
    iget-byte v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const-string v1, "com.samsung.android.app.aodservice"

    .line 69
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    if-nez v1, :cond_4

    .line 73
    iput-byte v5, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mPackage:B

    .line 75
    :cond_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "accessory_cover_uri"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 77
    :catch_0
    sget-object p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->TAG:Ljava/lang/String;

    const-string v0, "error during cover state change"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setCoverVerified(ZLcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    .locals 3

    .line 41
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverVerified:isVerified="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getByteArrayManagerURI()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->mUriData:[B

    .line 43
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/PaletteCover;->onCoverStateChanged()V

    return-void
.end method
