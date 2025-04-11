.class public Lcom/android/server/pm/PersonaServiceHelper$4;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$flags:I

.field public final synthetic val$handler:Landroid/os/Handler;

.field public final synthetic val$observer:Landroid/content/pm/IPackageDeleteObserver;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$pms:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic val$settings:Lcom/android/server/pm/Settings;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V
    .locals 0

    .line 794
    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    iput p2, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$flags:I

    iput-object p4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iput-object p6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    iput-object p7, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iput-object p8, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "PersonaServiceHelper"

    .line 796
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 804
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->-$$Nest$smgetApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->-$$Nest$smgetApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "This app uninstallation is not allowed"

    .line 806
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0

    .line 809
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$pms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    iget v6, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$flags:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/pm/PackageManagerService;->deletePackageXForKnox(Ljava/lang/String;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    const-string v5, "jp.co.mmbi.app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 811
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$settings:Lcom/android/server/pm/Settings;

    const-string v5, "android.uid.mmbi"

    const/16 v6, 0x2392

    invoke-virtual {v4, v5, v6, v2, v1}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v3, v2

    .line 817
    :catch_1
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    if-ltz v3, :cond_2

    move v1, v2

    :cond_2
    iget v5, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$userId:I

    invoke-static {v4, v1, v5}, Lcom/android/server/pm/PmHook;->uninstallLog(Ljava/lang/String;ZI)V

    .line 820
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    if-eqz v1, :cond_3

    .line 822
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "return delete result to caller: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "returnCode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v1, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$observer:Landroid/content/pm/IPackageDeleteObserver;

    iget-object v4, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v4, v3}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    const-string v1, "Observer no longer exists."

    .line 826
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/pm/PersonaServiceHelper$4;->val$context:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    return-void
.end method
