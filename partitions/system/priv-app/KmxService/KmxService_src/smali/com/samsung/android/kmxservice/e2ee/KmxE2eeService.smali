.class public Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurUID:I

.field private mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

.field private mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

.field private mIsAlreadyValid:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "KmxE2eeService"

    invoke-static {v0}, Lcom/samsung/android/kmxservice/sdk/e2ee/data/LogTag;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mIsAlreadyValid:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mCurUID:I

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;->getInstance(Landroid/content/Context;)Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mFabricKeyStore:Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    iget-object v1, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;-><init>(Landroid/content/Context;Lcom/samsung/android/kmxservice/fabrickeystore/FabricKeyStore;)V

    iput-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    :cond_0
    return-void
.end method

.method private getCallerState()I
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mIsAlreadyValid:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mCurUID:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/util/PackageVerifier;->checkAllowedPackage(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mIsAlreadyValid:Z

    if-nez v1, :cond_4

    sget-object v1, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid package call :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/kmxservice/common/util/PackageVerifier;->checkAllowedPackage(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mIsAlreadyValid:Z

    :cond_4
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mIsAlreadyValid:Z

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mCurUID:I

    goto :goto_3

    :cond_5
    move v2, v0

    :goto_3
    return v2
.end method


# virtual methods
.method public command(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "KMX_IS_VALID_PACKAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "KMX_GET_CHALLENGE"

    const-string v4, "KMX_EXPORT_SERVICE_KEY"

    const-string v5, "KMX_GET_S_KEY_ID"

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-nez v2, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->getCallerState()I

    move-result v2

    if-ne v2, v7, :cond_0

    sget-object p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->TAG:Ljava/lang/String;

    const-string p1, "Attempt to access an abnormal path."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-ne v2, v6, :cond_1

    const-string p0, "V_KMX_ERROR_CODE"

    const/16 p1, 0x195

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    move v6, v7

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "KMX_IMPORT_FABRIC_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v6, 0x22

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "KMX_SET_RECOVERY_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v6, 0x21

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "KMX_GET_D_KEY_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0x20

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "KMX_GET_FKEY_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v6, 0x1f

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "KMX_SET_FKEY_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v6, 0x1e

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "KMX_CLEAR_ALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v6, 0x1d

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v6, 0x1c

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "KMX_CREATE_SERVICE_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/16 v6, 0x1b

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "KMX_DELETE_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/16 v6, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "KMX_IMPORT_FABRIC_KEY_PQC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "KMX_METHOD_DECRYPT_FILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "KMX_METHOD_DECRYPT_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0x17

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "KMX_SET_FID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x16

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "KMX_VALIDATE_RECOVERY_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "KMX_IMPORT_SERVICE_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v6, 0x14

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "KMX_CREATE_FABRIC_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v6, 0x13

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "KMX_EXPORT_FABRIC_KEY_PQC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "KMX_DELETE_ALL_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v6, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "KMX_SET_SAK_UID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "KMX_EXPORT_FABRIC_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_14
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "KMX_UPDATE_ALLOW_LIST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "KMX_SET_SA_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "KMX_SET_D_KEY_ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "KMX_GET_S_KEY_ID_LIST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "KMX_GET_FID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_1a
    const-string v1, "KMX_GET_DEVICE_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v6, 0x8

    goto :goto_1

    :sswitch_1b
    const-string v1, "KMX_GET_RECOVERY_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_1c
    const-string v1, "KMX_DELETE_SERVICE_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_1d
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_1e
    const-string v1, "KMX_METHOD_ENCRYPT_FILE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_1f
    const-string v1, "KMX_METHOD_ENCRYPT_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto/16 :goto_0

    :cond_21
    const/4 v6, 0x3

    goto :goto_1

    :sswitch_20
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_0

    :cond_22
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_21
    const-string v1, "KMX_METHOD_CONTAINS_KEY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_0

    :sswitch_22
    const-string v1, "KMX_GET_DEVICE_KEY_PQC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto/16 :goto_0

    :cond_23
    const/4 v6, 0x0

    :cond_24
    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->importFabricKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setRecoveryData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getDeviceKeyId()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->clearAll(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->isValidPackage(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_7
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->createServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_8
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->deleteKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_9
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->importFabricKeyPQC(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_a
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->decryptFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->decryptData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_c
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setFabricId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_d
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->validateRecoveryData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_e
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->importServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_f
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->createFabricKey()Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_10
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->exportFabricKeyPQC(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_11
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->deleteKeys(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_12
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setSakUid(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_13
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->exportFabricKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_14
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getChallenge()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_15
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->updateAllowList(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_16
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setSARegistrationState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_17
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->setDeviceKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_18
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyIdList(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_19
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getFabricId()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1a
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getMemberKey()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1b
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getRecoveryData()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1c
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->deleteServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1d
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->exportServiceKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1e
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->encryptFile(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_1f
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->encryptData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_20
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getServiceKeyId(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_21
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0, p2}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->containsKey(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_2

    :pswitch_22
    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/KmxE2eeService;->mE2eeServiceInternal:Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;

    invoke-virtual {p0}, Lcom/samsung/android/kmxservice/e2ee/E2eeServiceInternal;->getMemberKeyPQC()Landroid/os/Bundle;

    move-result-object v0

    :goto_2
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7ccf68b5 -> :sswitch_22
        -0x7c771bcc -> :sswitch_21
        -0x779dbe27 -> :sswitch_20
        -0x6f67a687 -> :sswitch_1f
        -0x6f66a0b5 -> :sswitch_1e
        -0x6887bacd -> :sswitch_1d
        -0x68808356 -> :sswitch_1c
        -0x550e5ffe -> :sswitch_1b
        -0x4310ba58 -> :sswitch_1a
        -0x3c6e04b1 -> :sswitch_19
        -0x3877a0bc -> :sswitch_18
        -0x317b9ec4 -> :sswitch_17
        -0x2b616efa -> :sswitch_16
        -0x1bcb4b9f -> :sswitch_15
        -0x1b6b52cf -> :sswitch_14
        -0x160df7b9 -> :sswitch_13
        0x5c77628 -> :sswitch_12
        0xe9ca416 -> :sswitch_11
        0x15c2f26a -> :sswitch_10
        0x3241ddff -> :sswitch_f
        0x327343a4 -> :sswitch_e
        0x33bd61d4 -> :sswitch_d
        0x3e5cc25b -> :sswitch_c
        0x4cdc6b51 -> :sswitch_b
        0x4cdd7123 -> :sswitch_a
        0x54329259 -> :sswitch_9
        0x557d3254 -> :sswitch_8
        0x5923267b -> :sswitch_7
        0x5a453e57 -> :sswitch_6
        0x611b1ea6 -> :sswitch_5
        0x66cfc85b -> :sswitch_4
        0x6c17674f -> :sswitch_3
        0x7230a0c8 -> :sswitch_2
        0x72e8080e -> :sswitch_1
        0x7b54f7b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
