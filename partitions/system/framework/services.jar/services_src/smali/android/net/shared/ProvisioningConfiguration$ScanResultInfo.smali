.class public Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private final mInformationElements:Ljava/util/List;

.field private final mSsid:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$smconvertToByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 0

    .line 0
    invoke-static {p0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->convertToByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "ssid must not be null."

    .line 380
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "bssid must not be null."

    .line 381
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 382
    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    .line 383
    iput-object p2, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 384
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 385
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    return-void
.end method

.method private static convertToByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .line 465
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    new-array v0, v0, [B

    .line 466
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v1, 0x0

    .line 468
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 469
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catch_0
    :try_start_1
    const-string p0, "ProvisioningConfiguration"

    const-string v1, "Buffer under flow exception should never happen."

    .line 471
    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 458
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v1, p0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    new-instance v2, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Landroid/net/shared/ParcelableUtil;->fromParcelableArray([Ljava/lang/Object;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v2, p0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    invoke-direct {v1, v2, p0, v0}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 428
    :cond_0
    instance-of v1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 429
    :cond_1
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 430
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    .line 431
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    iget-object p1, p1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    .line 432
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 0

    .line 401
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method public getInformationElements()Ljava/util/List;
    .locals 0

    .line 409
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    .line 393
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 437
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toStableParcelable()Landroid/net/ScanResultInfoParcelable;
    .locals 3

    .line 444
    new-instance v0, Landroid/net/ScanResultInfoParcelable;

    invoke-direct {v0}, Landroid/net/ScanResultInfoParcelable;-><init>()V

    .line 445
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    .line 447
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    new-instance v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Landroid/net/InformationElementParcelable;

    invoke-static {p0, v1, v2}, Landroid/net/shared/ParcelableUtil;->toParcelableArray(Ljava/util/Collection;Ljava/util/function/Function;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/InformationElementParcelable;

    iput-object p0, v0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 414
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SSID: "

    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", BSSID: "

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Information Elements: {"

    .line 417
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->mInformationElements:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;

    const-string v2, "["

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo$InformationElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "}"

    .line 421
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
