.class public Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static iFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier; = null

.field private static mFabricKeyId:Ljava/lang/String; = ""

.field private static sFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    sput-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->iFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->mFabricKeyId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->lambda$static$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->sFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->iFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->sFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;

    :cond_1
    sget-object p0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->iFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    return-object p0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->mFabricKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public static updateInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;
    .locals 0

    sput-object p0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->mFabricKeyId:Ljava/lang/String;

    sget-object p0, Lcom/samsung/android/kmxservice/e2ee/FabricKeyIdSupplier;->iFabricKeyIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricKeyIdSupplier;

    return-object p0
.end method
