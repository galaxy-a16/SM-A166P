.class public Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mcc:Ljava/lang/String;

.field private final regionMcc:Ljava/lang/String;

.field private final saGuid:Ljava/lang/String;

.field private final saToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->saGuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->saToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->mcc:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->regionMcc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->mcc:Ljava/lang/String;

    return-object p0
.end method

.method public getRegionMcc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->regionMcc:Ljava/lang/String;

    return-object p0
.end method

.method public getSaGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->saGuid:Ljava/lang/String;

    return-object p0
.end method

.method public getSaToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->saToken:Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->saToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/common/samsungaccount/SamsungAccountToken;->saGuid:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
