.class Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEnterpriseLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .locals 0

    const-string p0, "enterprise_license_policy"

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
