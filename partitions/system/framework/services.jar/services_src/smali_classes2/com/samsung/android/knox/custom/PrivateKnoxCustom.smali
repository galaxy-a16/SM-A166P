.class public Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field public static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field public static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field public static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field public static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field public static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field public static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field public static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field public static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final KNOX_CUSTOM_TRUE:I = 0x8

.field public static final PARAM_BUF_SIZE:I = 0x20

.field public static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field public static mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;


# instance fields
.field public final DEBUG:Z

.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->DEBUG:Z

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 88
    iput-object p1, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    .line 81
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private native readParamData()[B
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public final enforceSystemPermission()I
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public isKnoxCustomAutoStartUpEnabled()Z
    .locals 1

    const/16 v0, 0x8

    .line 215
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    move-result p0

    return p0
.end method

.method public final readBooleanDataValue(I)Z
    .locals 5

    .line 110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object p0

    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x1f

    .line 122
    aget-byte v1, p0, v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    const/16 v1, 0x1e

    const/4 v2, 0x1

    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 125
    aget-byte v4, p0, v3

    if-ne v4, v3, :cond_1

    aget-byte v4, p0, v1

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    move v0, v2

    :cond_1
    const/16 v4, 0x9

    if-ne p1, v4, :cond_2

    .line 131
    aget-byte p1, p0, v4

    if-ne p1, v3, :cond_2

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    move v0, v2

    :cond_2
    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->enforceSystemPermission()I

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 197
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    :cond_1
    :goto_0
    return v2
.end method

.method public final writeBooleanDataValue(IZ)Z
    .locals 10

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 143
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 146
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 149
    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v1

    const/16 v4, 0x1f

    .line 150
    aget-byte v5, v1, v4

    const/16 v6, 0x9

    const/16 v7, 0x1e

    const/16 v8, 0x8

    const/4 v9, 0x6

    if-ne v5, v9, :cond_0

    .line 152
    aget-byte v5, v1, v8

    aput-byte v5, v0, v8

    .line 153
    aget-byte v5, v1, v6

    aput-byte v5, v0, v6

    .line 154
    aget-byte v1, v1, v7

    aput-byte v1, v0, v7

    goto :goto_0

    :cond_0
    const/16 v1, 0x17

    aput-byte v1, v0, v8

    const/4 v1, 0x0

    aput-byte v1, v0, v6

    aput-byte v1, v0, v7

    :goto_0
    if-eqz p2, :cond_1

    .line 163
    aput-byte v8, v0, p1

    goto :goto_1

    :cond_1
    const/4 p2, 0x7

    .line 165
    aput-byte p2, v0, p1

    :goto_1
    aput-byte v9, v0, v4

    if-ne p1, v8, :cond_2

    aget-byte p2, v0, v7

    or-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    aput-byte p2, v0, v7

    :cond_2
    if-ne p1, v6, :cond_3

    aget-byte p1, v0, v7

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    aput-byte p1, v0, v7

    .line 176
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeParamData([B)Z

    move-result p0

    .line 177
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method
