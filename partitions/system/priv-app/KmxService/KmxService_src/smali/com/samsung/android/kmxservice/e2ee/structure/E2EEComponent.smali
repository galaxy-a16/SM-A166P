.class public Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static COMP_TYPE_DID:I = 0x2

.field public static COMP_TYPE_FID:I = 0x1


# instance fields
.field private mDeviceId:Ljava/lang/String;

.field private mFabricId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->COMP_TYPE_FID:I

    if-ne p2, v0, :cond_0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mFabricId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mDeviceId:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mFabricId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mDeviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getFabricId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mFabricId:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setFabricId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/kmxservice/e2ee/structure/E2EEComponent;->mFabricId:Ljava/lang/String;

    return-void
.end method
