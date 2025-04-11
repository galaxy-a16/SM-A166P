.class public Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ABNORMAL_ICD:I = 0x2

.field private static final ABNORMAL_TRUST_BOOT:I = 0x0

.field private static final ABNORMAL_WARRANTY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TrustChain::SecurityStatus"


# instance fields
.field private final mIcd:Z

.field private final mOemAllowed:Z

.field private final mOemUnlocked:Z

.field private final mStatus:Ljava/lang/String;

.field private final mTrustBoot:Z

.field private final mWarranty:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->isDeviceOemUnlocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mOemUnlocked:Z

    invoke-static {}, Lcom/samsung/android/kmxservice/trustchain/utils/DeviceUtils;->isOemAllowed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mOemAllowed:Z

    if-nez p1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "2"

    goto :goto_1

    :cond_1
    const-string v0, "1"

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "3"

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mStatus:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-static {v1}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mTrustBoot:Z

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mWarranty:Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mIcd:Z

    return-void
.end method

.method public static getIllegalSecurityStatus()Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;
    .locals 3

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v0}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object v0

    aget-byte v0, v0, v1

    new-instance v1, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;

    invoke-direct {v1, v0}, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;-><init>(I)V

    return-object v1
.end method


# virtual methods
.method public compare(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mStatus:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCause()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "TrustBoot"

    iget-boolean v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mTrustBoot:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "off"

    const-string v4, "on"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Warranty"

    iget-boolean v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mWarranty:Z

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ICD"

    iget-boolean v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mIcd:Z

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "OemLocked"

    iget-boolean v2, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mOemUnlocked:Z

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "OemDisallowed"

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mOemAllowed:Z

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    const-string p0, "TrustChain::SecurityStatus"

    const-string v1, "json parsing error"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/trustchain/securityscanner/SecurityStatus;->mStatus:Ljava/lang/String;

    return-object p0
.end method
