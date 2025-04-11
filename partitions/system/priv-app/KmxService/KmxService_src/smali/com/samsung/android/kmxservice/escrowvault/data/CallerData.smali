.class public Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SERVICE_LIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mUid:I

.field private mVerified:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "com.samsung.android.samsungpass"

    const-string v1, "SamsungPass"

    const-string v2, "com.samsung.android.scloud"

    const-string v3, "SamsungCloud"

    const-string v4, "com.samsung.android.scpm"

    const-string v5, "SamsungCloud"

    const-string v6, "com.samsung.android.myclientapp"

    const-string v7, "KmxTest"

    const-string v8, "com.samsung.android.secondclientapp"

    const-string v9, "KmxTest2"

    invoke-static/range {v0 .. v9}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->SERVICE_LIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mUid:I

    iput-object p2, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mPackageName:Ljava/lang/String;

    sget-object p1, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->SERVICE_LIST:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mServiceName:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mUid:I

    return p0
.end method

.method public isVerified()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mVerified:Z

    return p0
.end method

.method public setVerified(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/kmxservice/escrowvault/data/CallerData;->mVerified:Z

    return-void
.end method
