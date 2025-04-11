.class public Lcom/android/server/pm/ShortcutService$3;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$GyD5zMjS0iTiqPsiR-N4SNqe3ek(Lcom/android/server/pm/ShortcutService$3;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$3;->lambda$onRoleHoldersChanged$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onRoleHoldersChanged$0(Landroid/os/UserHandle;)V
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->handleOnDefaultLauncherChanged(I)V

    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    const-string v0, "android.app.role.HOME"

    .line 652
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService$3;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmRoleManager(Lcom/android/server/pm/ShortcutService;)Landroid/app/role/RoleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 657
    invoke-static {p1, v0, p2}, Lcom/samsung/android/server/pm/PmLog;->logRoleHoldersChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 659
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz p2, :cond_1

    .line 661
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmIPackageManager(Lcom/android/server/pm/ShortcutService;)Landroid/content/pm/IPackageManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "android.app.role.SMS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 662
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
