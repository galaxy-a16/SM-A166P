.class public final Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;
.super Ljava/lang/Object;
.source "OverlayPackagesProvider.java"

# interfaces
.implements Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;


# direct methods
.method public static synthetic $r8$lambda$Ccuu7mBbNt1aDElRxlJZeH7ZbBk(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;->lambda$getDevicePolicyManagementRoleHolderPackageName$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getDevicePolicyManagementRoleHolderPackageName$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 122
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 124
    invoke-virtual {p0, v0}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 125
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 128
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 116
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 121
    new-instance p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 0

    .line 111
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
