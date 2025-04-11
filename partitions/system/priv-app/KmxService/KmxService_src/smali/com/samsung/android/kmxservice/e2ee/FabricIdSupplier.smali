.class public Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static iFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier; = null

.field private static mFabricId:Ljava/lang/String; = ""

.field private static sFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/concurrent/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/firebase/concurrent/h;-><init>(I)V

    sput-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->iFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->mFabricId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->lambda$static$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->sFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;

    invoke-direct {v0, p0}, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->sFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;

    :cond_0
    sget-object p0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->iFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    return-object p0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->mFabricId:Ljava/lang/String;

    return-object v0
.end method

.method public static updateInstance(Ljava/lang/String;)Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;
    .locals 0

    sput-object p0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->mFabricId:Ljava/lang/String;

    sget-object p0, Lcom/samsung/android/kmxservice/e2ee/FabricIdSupplier;->iFabricIdSupplier:Lcom/samsung/android/kmxservice/e2ee/IFabricIdSupplier;

    return-object p0
.end method
